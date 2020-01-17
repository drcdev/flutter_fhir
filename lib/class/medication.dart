import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  CodeableConcept code;
  String status;
  Reference manufacturer;
  CodeableConcept form;
  Ratio amount;
  List<Ingredient> ingredient;
  Batch batch;

  Medication(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.identifier,
        this.code,
        this.status,
        this.manufacturer,
        this.form,
        this.amount,
        this.ingredient,
        this.batch});

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Batch {
  String lotNumber;
  DateTime expirationDate;

  Batch({this.lotNumber, this.expirationDate});

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
  Map<String, dynamic> toJson() => _$BatchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ingredient {
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Ratio strength;

  Ingredient({this.itemCodeableConcept, this.itemReference, this.isActive,
    this.strength});

  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}