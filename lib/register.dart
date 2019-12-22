import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
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
  String birthDate;
  String sexAtBirth;
  String response = '';
  String barrio = 'Barrio';
 
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

//          DatePickerDateTimeOrder.dayPeriod_time_date
//          new DateTimePickerFormField(
//            inputType: InputType.date,
//            format: DateFormat('yyyy-MM-dd'),
//            initialDate: DateTime.now(),
//            editable: true,
//            decoration: InputDecoration(
//              labelText: 'BirthDate',
//              hasFloatingPlaceholder: false
//            ),
//            onChanged: (birthday) {
//              setState(() => birthDate = birthday.toString().replaceAll(' 00:00:00.000', '') );
//            },
//          ),

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
                  savePatient(Patient(resourceType: 'Patient', address: [Address(district: barrio)], name: [HumanName(given: [givenNameController.text], family: familyNameController.text)], birthDate: birthDate));
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
