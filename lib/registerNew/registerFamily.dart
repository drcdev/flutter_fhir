import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/patient.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/providerActivities.dart';
import 'package:flutter_fhir/registerNew/register.dart';

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
  var relation1 =
      RelationPicker(TextEditingController(), TextEditingController(), null);
  var relation2 =
      RelationPicker(TextEditingController(), TextEditingController(), null);
  var relation3 =
      RelationPicker(TextEditingController(), TextEditingController(), null);

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
          Divider(
            color: Colors.lightBlueAccent,
            thickness: 2,
          ),
          relation2,
          Divider(
            color: Colors.lightBlueAccent,
            thickness: 2,
          ),
          relation3,
          Divider(
            color: Colors.lightBlueAccent,
            thickness: 2,
          ),
          RaisedButton(
            onPressed: () async {
              pt.contact ??= List<Patient_Contact>();
              Patient_Contact contact = await family(relation1);
              if (contact != null) {
                pt.contact.add(contact);
              }
              contact = await family(relation2);
              if (contact != null) {
                pt.contact.add(contact);
              }
              contact = await family(relation3);
              if (contact != null) {
                pt.contact.add(contact);
              }
              pt.save();
              print(pt.meta.lastUpdated);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: Text('Register Another Patient'),
          ),
          RaisedButton(
            onPressed: () async {
              pt.contact ??= List<Patient_Contact>();
              Patient_Contact contact = await family(relation1);
              if (contact != null) {
                pt.contact.add(contact);
              }
              contact = await family(relation2);
              if (contact != null) {
                pt.contact.add(contact);
              }
              contact = await family(relation3);
              if (contact != null) {
                pt.contact.add(contact);
              }
              pt.save();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProviderActivities(pt: pt)),
              );
            },
            child: Text('Complete Registration'),
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

class _RelationPickerState extends State<RelationPicker> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Column(children: <Widget>[
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
              ].map<DropdownMenuItem<String>>((String value) {
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
              })
        ]),
        Expanded(
          flex: 1,
          child: Column(children: <Widget>[
            TextField(
              decoration: new InputDecoration(hintText: 'Given Names'),
              controller: widget.given,
            ),
            TextField(
              decoration: new InputDecoration(hintText: 'Family Name'),
              controller: widget.family,
            )
          ]),
        )
      ]),
    );
  }
}

Future<Patient_Contact> family(RelationPicker relation) async {
  if ((relation.given.text != '' || relation.family.text != '') &&
      relation != null) {
    return await Patient_Contact.newInstance(
        relationship: [CodeableConcept(text: relation.relation)],
        name: HumanName(
            given: [relation.given.text], family: relation.family.text));
  } else {
    return null;
  }
}
