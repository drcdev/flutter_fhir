import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'medication.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication {

  //  This is a Medication resource
  final String resourceType= 'Medication';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  List<Extension> modifierExtension;

  //  Business identifier for this medication.
  List<Identifier> identifier;

  //  A code (or set of codes) that specify this medication, or a textual
  // description if no code is available. Usage note: This could be a
  // standard medication code such as a code from RxNorm, SNOMED CT, IDMP
  // etc. It could also be a national or local formulary code, optionally
  // with translations to other code systems.
  CodeableConcept code;

  //  A code to indicate if the medication is in active use.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  Describes the details of the manufacturer of the medication product. 
  // This is not intended to represent the distributor of a medication
  // product.
  Reference manufacturer;

  //  Describes the form of the item.  Powder; tablets; capsule.
  CodeableConcept form;

  //  Specific amount of the drug in the packaged product.  For example,
  // when specifying a product that has the same strength (For example,
  // Insulin glargine 100 unit per mL solution for injection), this
  // attribute provides additional clarification of the package amount (For
  // example, 3 mL, 10mL, etc.).
  Ratio amount;

  //  Identifies a particular constituent of interest in the product.
  List<Medication_Ingredient> ingredient;

  //  Information that only applies to packages (not products).
  Medication_Batch batch;

Medication(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.elementStatus,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch
    });

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medication_Ingredient {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The actual ingredient - either a substance (simple ingredient) or
  // another medication of a medication.
  CodeableConcept itemCodeableConcept;

  //  The actual ingredient - either a substance (simple ingredient) or
  // another medication of a medication.
  Reference itemReference;

  //  Indication of whether this ingredient affects the therapeutic action
  // of the drug.
  bool isActive;

  //  Extensions for isActive
  Element elementIsActive;

  //  Specifies how many (or how much) of the items there are in this
  // Medication.  For example, 250 mg per tablet.  This is expressed as a
  // ratio where the numerator is 250mg and the denominator is 1 tablet.
  Ratio strength;

Medication_Ingredient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.elementIsActive,
    this.strength
    });

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) => _$Medication_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medication_Batch {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The assigned lot number of a batch of the specified product.
  String lotNumber;

  //  Extensions for lotNumber
  Element elementLotNumber;

  //  When this specific batch of product will expire.
  DateTime expirationDate;

  //  Extensions for expirationDate
  Element elementExpirationDate;

Medication_Batch(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.lotNumber,
    this.elementLotNumber,
    this.expirationDate,
    this.elementExpirationDate
    });

  factory Medication_Batch.fromJson(Map<String, dynamic> json) => _$Medication_BatchFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_BatchToJson(this);
}

