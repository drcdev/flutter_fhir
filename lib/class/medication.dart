import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // Business identifier for this medication
  List<Identifier> identifier;

  // Codes that identify this medication
  CodeableConcept code;

  // active | inactive | entered-in-error
  String status;

  // Manufacturer of the item
  // Reference(Organization)
  Reference manufacturer;

  // powder | tablets | capsule +
  CodeableConcept form;

  // Amount of drug in package
  Ratio amount;

  // Active or inactive ingredient
  List<Ingredient> ingredient;

  // Details about packaged medications
  Batch batch;

  Medication(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
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
class Ingredient {
  // item[x]: The actual ingredient or content. One of these 2:
  CodeableConcept itemCodeableConcept;
  Reference itemReference;

  // Active ingredient indicator
  bool isActive;

  // Quantity of ingredient present
  Ratio strength;

  Ingredient({this.itemCodeableConcept, this.itemReference, this.isActive,
    this.strength});

  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Batch {

  // Identifier assigned to batch
  String lotNumber;

  // When batch will expire
  DateTime expirationDate;

  Batch({this.lotNumber, this.expirationDate});

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
  Map<String, dynamic> toJson() => _$BatchToJson(this);
}