import 'package:flutter_fhir/class/batch.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/ingredient.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {
  String resourceType;
  List<Identifier> identifier;
  CodeableConcept code;
  String status;
  Reference manufacturer;
  CodeableConcept form;
  Ratio amount;
  List<Ingredient> ingredient;
  Batch batch;

  Medication({this.resourceType, this.identifier, this.code, this.status,
        this.manufacturer, this.form, this.amount, this.ingredient, this.batch});

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}