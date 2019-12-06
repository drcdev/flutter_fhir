import 'batch.dart';
import 'ingredient.dart';
import 'ratio.dart';
import 'codeableConcept.dart';
import 'reference.dart';
import 'codeableConcept.dart';
import 'identifier.dart';
import 'package:json_annotation/json_annotation.dart';
part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {
  String resourceType;
  // from Resource: id, meta, implicitRules, and language
  // from DomainResource: text, contained, extension, and modifierExtension
  List<identifier> identifier;  // Business identifier for this medication
  List<codeableConcept> code;  // Codes that identify this medication
  String status;  // active | inactive | entered-in-error
  List<reference> manufacturer;  // Manufacturer of the item
  List<codeableConcept> form;  // powder | tablets | capsule +
  List<ratio> amount;  // Amount of drug in package
  List<ingredient> ingredient;  // Active or inactive ingredient
  List<batch> batch;  // Details about packaged medications

  Medication({this.identifier, this.code, this.status, this.manufacturer, this.form, this.amount, this.ingredient, this.batch});

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}
