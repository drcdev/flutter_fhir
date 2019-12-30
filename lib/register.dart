import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/savePatient.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final givenNameController = TextEditingController();
  final familyNameController = TextEditingController();
  DateTime _birthDate = DateTime.now();
  String sexAtBirth;
  String response = '';
  String barrio = 'Barrio';
 
  @override
  void dispose() {
    givenNameController.dispose();
    familyNameController.dispose();
    super.dispose();
  }

  //select birthdate async function
  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime.now()
    );
    if(picked != null) setState(() => _birthDate = picked);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Patient'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          new TextField(
            decoration: new InputDecoration(
              hintText: 'Given Names'),
            controller: givenNameController,
          ),

          new TextField(
            decoration: new InputDecoration(
              hintText: 'Family Names'),
            controller: familyNameController,
          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text('Sex at birth'),

              new RadioButtonGroup(
                orientation: GroupedButtonsOrientation.HORIZONTAL,
                labels: <String>[
                  'Female',
                  'Male',
                ],
                onSelected: (String selected) {
                  sexAtBirth = selected;
                }
              ),
            ],
          ),

          //Calls above function to select birthdate
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: _selectDate,
                child: Text('Click to select birthdate'),
              ),
              Text(_birthDate.toString()),
            ]
          ),
//            currentTime: DateTime.now(), locale: LocaleType.en);},

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DropdownButton<String>(
                items: <String>['Filiu', 'La 41', 'Carretera', 'Villa_Verde', 'Cachipero', 'Puerto_Rico', 'Kilombo'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                hint: Text(barrio),
                onChanged: (newVal) {
                  setState(() => barrio = newVal);
                },
              ),
            ],
          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  savePatient(Patient(resourceType: 'Patient', address: [Address(district: barrio)], name: [HumanName(given: [givenNameController.text], family: familyNameController.text)], birthDate: _birthDate.toString()));
                },
                child: Text('Press to Create Patient'),
              )
            ],
          ),

          new RaisedButton(
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