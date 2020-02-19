import 'package:flutter_fhir/fhirClasses/immunization.dart';
import 'package:flutter_fhir/fhirClasses/patient.dart';

void VaccineRules() {
  String birthDate = '2019-11-25T23:15:01.758051Z';
  int age = DateTime.now().difference(DateTime.parse(birthDate)).inDays;


}