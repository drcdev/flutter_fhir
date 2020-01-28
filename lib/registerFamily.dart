import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/evalRx.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/register.dart';

class RegisterFamily extends StatelessWidget {
  Patient pt;

  RegisterFamily({this.pt});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _RegisterFamily(pt),
    );
  }
}

class _RegisterFamily extends StatefulWidget {
  Patient pt;
  _RegisterFamily(this.pt);
  @override
  _RegisterFamilyState createState() => _RegisterFamilyState(pt);
}

class _RegisterFamilyState extends State<_RegisterFamily> {
  Patient pt;
  _RegisterFamilyState(this.pt);
  var relation1 = RelationPicker(TextEditingController(), TextEditingController(), null);
  var relation2 = RelationPicker(TextEditingController(), TextEditingController(), null);
  var relation3 = RelationPicker(TextEditingController(), TextEditingController(), null);

  @override
  void dispose() {
    relation1.given.dispose();
    relation1.family.dispose();
    relation2.given.dispose();
    relation2.family.dispose();
    relation3.given.dispose();
    relation3.family.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Patient\'s Relatives'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          relation1,
          relation2,
          relation3,

          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, relation1);
              pt = addFamily(pt, relation2);
              pt = addFamily(pt, relation3);
              pt.writePatient();

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: Text('Register Another Patient'),
          ),

          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, relation1);
              pt = addFamily(pt, relation2);
              pt = addFamily(pt, relation3);
              pt.writePatient();

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EvalRx(pt: pt)),
              );
            },
            child: Text('Evaluate & Treat Patient'),
          ),

          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, relation1);
              pt = addFamily(pt, relation2);
              pt = addFamily(pt, relation3);
              pt.writePatient();

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }
}

class RelationPicker extends StatefulWidget {
  final TextEditingController given;
  final TextEditingController family;
  String relation;

  RelationPicker(this.given, this.family, this.relation);

  @override
  _RelationPickerState createState() => _RelationPickerState();
}

class _RelationPickerState extends State <RelationPicker> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DropdownButton<String>(
          items: <String>[
            'mother',
            'grandmother',
            'aunt',
            'sister',
            'father',
            'grandfather',
            'uncle',
            'brother'
          ].map<DropdownMenuItem<String>> ((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          hint: Text('Relationship'),
          value: widget.relation,
          onChanged: (String newVal) {
            setState(() {
              widget.relation = newVal;
            });
          },
        ),

        TextField(
          decoration: new InputDecoration(
              hintText: 'Given Names'),
          controller: widget.given,
        ),

        TextField(
          decoration: new InputDecoration(
              hintText: 'Family Name',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 8.0),
            ),
            ),
          controller: widget.family,
        ),

      ]
    );
  }
}

Patient addFamily(Patient pt, RelationPicker relation) {
  if ((relation.given.text != '' || relation.family.text != '') && relation != null) {
    final Patient_Contact ct = new Patient_Contact(
        relationship: [ CodeableConcept(text: relation.relation)],
        name: HumanName(given: [relation.given.text],
            family: relation.family.text)
    );
    if(pt.contact == null) { pt.contact = new List<Patient_Contact>(); };
    pt.contact.add(ct);
  };
  return pt;
}