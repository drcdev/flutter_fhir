import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/patient.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/providerActivities.dart';
import 'package:flutter_fhir/mainMenu/testingSettings/objects.dart';
import 'package:flutter_fhir/mainMenu/providerActivities/registerNew/register.dart';
import 'package:hive/hive.dart';

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
          relation2,
          relation3,
          RaisedButton(
            onPressed: () async {
              var contacts =
                  await Hive.openBox<Patient_Contact>('Patient_ContactBox');
              var link = await Hive.openBox<Patient_Link>('Patient_LinkBox');
              Patient_Link links = await Patient_Link.newInstance();
              Patient_Contact ptContact1 = await Patient_Contact.newInstance(
                  relationship: [CodeableConcept(text: relation1.relation)],
                  name: HumanName(
                      given: [relation1.given.text],
                      family: relation1.family.text));
              Patient_Contact ptContact2 = await Patient_Contact.newInstance(
                  relationship: [CodeableConcept(text: relation2.relation)],
                  name: HumanName(
                      given: [relation2.given.text],
                      family: relation1.family.text));
              contacts.put(ptContact1.id, ptContact1);
              contacts.put(ptContact2.id, ptContact2);
              pt = addFamily(pt, relation1);
              pt = addFamily(pt, relation2);
//              pt = addFamily(pt, relation3);
              var patientBox = await Hive.openBox<Patient>('PatientBox');
              patientBox.put(pt.id, pt);
              print(patientBox
                  .getAt(patientBox.length - 1)
                  .contact[0]
                  .toJson()
                  .toString());
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => Register()),
//              );
            },
            child: Text('Register Another Patient'),
          ),
          RaisedButton(
            onPressed: () {
              pt = addFamily(pt, relation1);
              pt = addFamily(pt, relation2);
              pt = addFamily(pt, relation3);
              Write(pt);

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
            },
          ),
          TextField(
            decoration: new InputDecoration(hintText: 'Given Names'),
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
        ]);
  }
}

Patient addFamily(Patient pt, RelationPicker relation) {
  if ((relation.given.text != '' || relation.family.text != '') &&
      relation != null) {
    final Patient_Contact ct = new Patient_Contact(
        relationship: [CodeableConcept(text: relation.relation)],
        name: HumanName(
            given: [relation.given.text], family: relation.family.text));
    if (pt.contact == null) {
      pt.contact = new List<Patient_Contact>();
    }
    ;
    pt.contact.add(ct);
  }
  ;
  return pt;
}
