

part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {

  This is a Medication resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept code;
  String status;
  Element _status;
  Reference manufacturer;
  CodeableConcept form;
  Ratio amount;
  List<Medication_Ingredient> ingredient;
  Medication_Batch batch;


Medication(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.code,
this.status,
this._status,
this.manufacturer,
this.form,
this.amount,
this.ingredient,
this.batch});

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}