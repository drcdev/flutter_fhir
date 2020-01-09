import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/contact.dart';
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
  final memberGivenNameController1 = TextEditingController();
  final memberFamilyNameController1 = TextEditingController();
  final String memberRelation1 = null;
  final memberGivenNameController2 = TextEditingController();
  final memberFamilyNameController2 = TextEditingController();
  final String memberRelation2 = null;
  final memberGivenNameController3 = TextEditingController();
  final memberFamilyNameController3 = TextEditingController();
  final String memberRelation3 = null;

  @override
  void dispose() {
    memberGivenNameController1.dispose();
    memberFamilyNameController1.dispose();
    memberGivenNameController2.dispose();
    memberFamilyNameController2.dispose();
    memberGivenNameController3.dispose();
    memberFamilyNameController3.dispose();
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
          RelationPicker(memberGivenNameController1, memberFamilyNameController1, memberRelation1),
          RelationPicker(memberGivenNameController2, memberFamilyNameController2, memberRelation2),
          RelationPicker(memberGivenNameController3, memberFamilyNameController3, memberRelation3),

          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, memberGivenNameController1, memberFamilyNameController1, memberRelation1);
              pt = addFamily(pt, memberGivenNameController2, memberFamilyNameController2, memberRelation2);
              pt = addFamily(pt, memberGivenNameController3, memberFamilyNameController3, memberRelation3);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: Text('Register Another Patient'),
          ),

          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, memberGivenNameController1, memberFamilyNameController1, memberRelation1);
              pt = addFamily(pt, memberGivenNameController2, memberFamilyNameController2, memberRelation2);
              pt = addFamily(pt, memberGivenNameController3, memberFamilyNameController3, memberRelation3);

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EvalRx()),
              );
            },
            child: Text('Evaluate & Treat Patient'),
          ),

          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, memberGivenNameController1, memberFamilyNameController1, memberRelation1);
              pt = addFamily(pt, memberGivenNameController2, memberFamilyNameController2, memberRelation2);
              pt = addFamily(pt, memberGivenNameController3, memberFamilyNameController3, memberRelation3);

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
          controller: widget.given,
        ),

      ]
    );
  }
}

Patient addFamily(Patient pt, TextEditingController given, TextEditingController family, String relation) {
  if ((given.text != '' || family.text != '') && relation != null) {
    pt.contact.add(
      Contact(
          relationship: [ CodeableConcept(text: relation)],
          name: HumanName(given: [given.text],
              family: family.text)
      ),
    );
  };
  return pt;
}