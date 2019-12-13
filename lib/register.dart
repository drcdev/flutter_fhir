import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:random_string/random_string.dart';

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
  String birthDate;
  String sexAtBirth;
  String response = '';
  String barrio = 'Barrio';
  String test = '';
 
  @override
  void dispose() {
    givenNameController.dispose();
    familyNameController.dispose();
    super.dispose();
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
                  debugPrint(sexAtBirth);
                }
              ),
            ],
          ),

          new DateTimePickerFormField(
            inputType: InputType.date,
            format: DateFormat('yyyy-MM-dd'),
            initialDate: DateTime.now(),
            editable: true,
            decoration: InputDecoration(
              labelText: 'BirthDate',
              hasFloatingPlaceholder: false
            ),
            onChanged: (birthday) {
              setState(() => birthDate = birthday.toString().replaceAll(' 00:00:00.000', '') );
            },
          ),

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
                  _save(Patient(resourceType: 'Patient', address: [Address(district: barrio)], name: [HumanName(given: [givenNameController.text], family: familyNameController.text)], birthDate: birthDate));
                },
                child: Text('Press to Create Patient'),
              )
            ],
          ),

          new RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }

  _save(Patient pt) async {
  pt.id = randomAlphaNumeric(10).toString();
  final directory = await getApplicationDocumentsDirectory();
  final ptFile = File('${directory.path}/' + pt.id + '.txt');
  final text = pt.toJson().toString();
  await ptFile.writeAsString(text);
  final ptList = File('${directory.path}/ptList.txt');
  if(!await ptList.exists()) {
    await ptList.writeAsString(pt.id);
  } else {
      String pts = await ptList.readAsString();
      pts = pts + '\n' + pt.id;
      await ptList.writeAsString(pts); 
  }  
  print('saved');
  }
}          
