import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/humanName.dart';

class RegisterFamily extends StatelessWidget {
  final Patient pt;

  RegisterFamily({this.pt});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _RegisterFamily(pt),
    );
  }
}

class _RegisterFamily extends StatefulWidget {
  final Patient pt;
  _RegisterFamily(this.pt);
  @override
  _RegisterFamilyState createState() => _RegisterFamilyState(pt);
}

class _RegisterFamilyState extends State<_RegisterFamily> {
  final Patient pt;
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
//                    savePatient(Patient(resourceType: 'Patient',
//                        address: [Address(district: barrio)],
//                        name: [
//                          HumanName(given: [givenNameController.text],
//                              family: familyNameController.text)
//                        ],
//                        birthDate: _birthDate.toString()));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()),
              );
            },
            child: Text('Register Another Patient'),
          ),

          RaisedButton(
            onPressed: () {
            },
            child: Text('Evaluate & Treat Patient'),
          ),

          RaisedButton(
            onPressed: () {
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