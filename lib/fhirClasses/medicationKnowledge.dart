import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 375)
class MedicationKnowledge {

  //  This is a MedicationKnowledge resource
  @HiveField(0)
  final String resourceType= 'MedicationKnowledge';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
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
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A code that specifies this medication, or a textual description if no
  // code is available. Usage note: This could be a standard medication code
  // such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  // national or local formulary code, optionally with translations to other
  // code systems.
  @HiveField(11)
  CodeableConcept code;

  //  A code to indicate if the medication is in active use.  The status
  // refers to the validity about the information of the medication and not
  // to its medicinal properties.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Describes the details of the manufacturer of the medication product. 
  // This is not intended to represent the distributor of a medication
  // product.
  @HiveField(14)
  Reference manufacturer;

  //  Describes the form of the item.  Powder; tablets; capsule.
  @HiveField(15)
  CodeableConcept doseForm;

  //  Specific amount of the drug in the packaged product.  For example,
  // when specifying a product that has the same strength (For example,
  // Insulin glargine 100 unit per mL solution for injection), this
  // attribute provides additional clarification of the package amount (For
  // example, 3 mL, 10mL, etc.).
  @HiveField(16)
  Quantity amount;

  //  Additional names for a medication, for example, the name(s) given to a
  // medication in different countries.  For example, acetaminophen and
  // paracetamol or salbutamol and albuterol.
  @HiveField(17)
  List<String> synonym;

  //  Extensions for synonym
  @HiveField(18)
  List<Element> elementSynonym;

  //  Associated or related knowledge about a medication.
  @HiveField(19)
  List<MedicationKnowledge_RelatedMedicationKnowledge> relatedMedicationKnowledge;

  //  Associated or related medications.  For example, if the medication is
  // a branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  // Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
  // this would link to a branded product (e.g. Crestor).
  @HiveField(20)
  List<Reference> associatedMedication;

  //  Category of the medication or product (e.g. branded product,
  // therapeutic moeity, generic product, innovator product, etc.).
  @HiveField(21)
  List<CodeableConcept> productType;

  //  Associated documentation about the medication.
  @HiveField(22)
  List<MedicationKnowledge_Monograph> monograph;

  //  Identifies a particular constituent of interest in the product.
  @HiveField(23)
  List<MedicationKnowledge_Ingredient> ingredient;

  //  The instructions for preparing the medication.
  @HiveField(24)
  String preparationInstruction;

  //  Extensions for preparationInstruction
  @HiveField(25)
  Element elementPreparationInstruction;

  //  The intended or approved route of administration.
  @HiveField(26)
  List<CodeableConcept> intendedRoute;

  //  The price of the medication.
  @HiveField(27)
  List<MedicationKnowledge_Cost> cost;

  //  The program under which the medication is reviewed.
  @HiveField(28)
  List<MedicationKnowledge_MonitoringProgram> monitoringProgram;

  //  Guidelines for the administration of the medication.
  @HiveField(29)
  List<MedicationKnowledge_AdministrationGuidelines> administrationGuidelines;

  //  Categorization of the medication within a formulary or classification
  // system.
  @HiveField(30)
  List<MedicationKnowledge_MedicineClassification> medicineClassification;

  //  Information that only applies to packages (not products).
  @HiveField(31)
  MedicationKnowledge_Packaging packaging;

  //  Specifies descriptive properties of the medicine, such as color,
  // shape, imprints, etc.
  @HiveField(32)
  List<MedicationKnowledge_DrugCharacteristic> drugCharacteristic;

  //  Potential clinical issue with or between medication(s) (for example,
  // drug-drug interaction, drug-disease contraindication, drug-allergy
  // interaction, etc.).
  @HiveField(33)
  List<Reference> contraindication;

  //  Regulatory information about a medication.
  @HiveField(34)
  List<MedicationKnowledge_Regulatory> regulatory;

  //  The time course of drug absorption, distribution, metabolism and
  // excretion of a medication from the body.
  @HiveField(35)
  List<MedicationKnowledge_Kinetics> kinetics;

MedicationKnowledge(
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
    this.code,
    this.status,
    this.elementStatus,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.elementSynonym,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
    this.elementPreparationInstruction,
    this.intendedRoute,
    this.cost,
    this.monitoringProgram,
    this.administrationGuidelines,
    this.medicineClassification,
    this.packaging,
    this.drugCharacteristic,
    this.contraindication,
    this.regulatory,
    this.kinetics
    });

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 376)
class MedicationKnowledge_RelatedMedicationKnowledge {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The category of the associated medication knowledge reference.
  @HiveField(3)
  CodeableConcept type;

  //  Associated documentation about the associated medication knowledge.
  @HiveField(4)
  List<Reference> reference;

MedicationKnowledge_RelatedMedicationKnowledge(
  this.type,
    this.reference,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory MedicationKnowledge_RelatedMedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 377)
class MedicationKnowledge_Monograph {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The category of documentation about the medication. (e.g. professional
  // monograph, patient education monograph).
  @HiveField(3)
  CodeableConcept type;

  //  Associated documentation about the medication.
  @HiveField(4)
  Reference source;

MedicationKnowledge_Monograph(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.source
    });

  factory MedicationKnowledge_Monograph.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonographFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MonographToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 378)
class MedicationKnowledge_Ingredient {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The actual ingredient - either a substance (simple ingredient) or
  // another medication.
  @HiveField(3)
  CodeableConcept itemCodeableConcept;

  //  The actual ingredient - either a substance (simple ingredient) or
  // another medication.
  @HiveField(4)
  Reference itemReference;

  //  Indication of whether this ingredient affects the therapeutic action
  // of the drug.
  @HiveField(5)
  bool isActive;

  //  Extensions for isActive
  @HiveField(6)
  Element elementIsActive;

  //  Specifies how many (or how much) of the items there are in this
  // Medication.  For example, 250 mg per tablet.  This is expressed as a
  // ratio where the numerator is 250mg and the denominator is 1 tablet.
  @HiveField(7)
  Ratio strength;

MedicationKnowledge_Ingredient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.elementIsActive,
    this.strength
    });

  factory MedicationKnowledge_Ingredient.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 379)
class MedicationKnowledge_Cost {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The category of the cost information.  For example, manufacturers'
  // cost, patient cost, claim reimbursement cost, actual acquisition cost.
  @HiveField(3)
  CodeableConcept type;

  //  The source or owner that assigns the price to the medication.
  @HiveField(4)
  String source;

  //  Extensions for source
  @HiveField(5)
  Element elementSource;

  //  The price of the medication.
  @HiveField(6)
  Money cost;

MedicationKnowledge_Cost(
  this.type,
    this.cost,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.elementSource
    });

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_CostToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 380)
class MedicationKnowledge_MonitoringProgram {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Type of program under which the medication is monitored.
  @HiveField(3)
  CodeableConcept type;

  //  Name of the reviewing program.
  @HiveField(4)
  String name;

  //  Extensions for name
  @HiveField(5)
  Element elementName;

MedicationKnowledge_MonitoringProgram(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.name,
    this.elementName
    });

  factory MedicationKnowledge_MonitoringProgram.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonitoringProgramFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MonitoringProgramToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 381)
class MedicationKnowledge_AdministrationGuidelines {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Dosage for the medication for the specific guidelines.
  @HiveField(3)
  List<MedicationKnowledge_Dosage> dosage;

  //  Indication for use that apply to the specific administration
  // guidelines.
  @HiveField(4)
  CodeableConcept indicationCodeableConcept;

  //  Indication for use that apply to the specific administration
  // guidelines.
  @HiveField(5)
  Reference indicationReference;

  //  Characteristics of the patient that are relevant to the administration
  // guidelines (for example, height, weight, gender, etc.).
  @HiveField(6)
  List<MedicationKnowledge_PatientCharacteristics> patientCharacteristics;

MedicationKnowledge_AdministrationGuidelines(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.dosage,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.patientCharacteristics
    });

  factory MedicationKnowledge_AdministrationGuidelines.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_AdministrationGuidelinesFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_AdministrationGuidelinesToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 382)
class MedicationKnowledge_Dosage {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of dosage (for example, prophylaxis, maintenance,
  // therapeutic, etc.).
  @HiveField(3)
  CodeableConcept type;

  //  Dosage for the medication for the specific guidelines.
  @HiveField(4)
  List<Dosage> dosage;

MedicationKnowledge_Dosage(
  this.type,
    this.dosage,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory MedicationKnowledge_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DosageToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 383)
class MedicationKnowledge_PatientCharacteristics {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Specific characteristic that is relevant to the administration
  // guideline (e.g. height, weight, gender).
  @HiveField(3)
  CodeableConcept characteristicCodeableConcept;

  //  Specific characteristic that is relevant to the administration
  // guideline (e.g. height, weight, gender).
  @HiveField(4)
  Quantity characteristicQuantity;

  //  The specific characteristic (e.g. height, weight, gender, etc.).
  @HiveField(5)
  List<String> value;

  //  Extensions for value
  @HiveField(6)
  List<Element> elementValue;

MedicationKnowledge_PatientCharacteristics(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.elementValue
    });

  factory MedicationKnowledge_PatientCharacteristics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PatientCharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_PatientCharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 384)
class MedicationKnowledge_MedicineClassification {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of category for the medication (for example, therapeutic
  // classification, therapeutic sub-classification).
  @HiveField(3)
  CodeableConcept type;

  //  Specific category assigned to the medication (e.g. anti-infective,
  // anti-hypertensive, antibiotic, etc.).
  @HiveField(4)
  List<CodeableConcept> classification;

MedicationKnowledge_MedicineClassification(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.classification
    });

  factory MedicationKnowledge_MedicineClassification.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MedicineClassificationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MedicineClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 385)
class MedicationKnowledge_Packaging {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A code that defines the specific type of packaging that the medication
  // can be found in (e.g. blister sleeve, tube, bottle).
  @HiveField(3)
  CodeableConcept type;

  //  The number of product units the package would contain if fully loaded.
  @HiveField(4)
  Quantity quantity;

MedicationKnowledge_Packaging(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.quantity
    });

  factory MedicationKnowledge_Packaging.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PackagingFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_PackagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 386)
class MedicationKnowledge_DrugCharacteristic {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A code specifying which characteristic of the medicine is being
  // described (for example, colour, shape, imprint).
  @HiveField(3)
  CodeableConcept type;

  //  Description of the characteristic.
  @HiveField(4)
  CodeableConcept valueCodeableConcept;

  //  Description of the characteristic.
  @HiveField(5)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(6)
  Element elementValueString;

  //  Description of the characteristic.
  @HiveField(7)
  Quantity valueQuantity;

  //  Description of the characteristic.
  @HiveField(8)
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  @HiveField(9)
  Element elementValueBase64Binary;

MedicationKnowledge_DrugCharacteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.elementValueString,
    this.valueQuantity,
    this.valueBase64Binary,
    this.elementValueBase64Binary
    });

  factory MedicationKnowledge_DrugCharacteristic.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DrugCharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DrugCharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 387)
class MedicationKnowledge_Regulatory {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The authority that is specifying the regulations.
  @HiveField(3)
  Reference regulatoryAuthority;

  //  Specifies if changes are allowed when dispensing a medication from a
  // regulatory perspective.
  @HiveField(4)
  List<MedicationKnowledge_Substitution> substitution;

  //  Specifies the schedule of a medication in jurisdiction.
  @HiveField(5)
  List<MedicationKnowledge_Schedule> schedule;

  //  The maximum number of units of the medication that can be dispensed in
  // a period.
  @HiveField(6)
  MedicationKnowledge_MaxDispense maxDispense;

MedicationKnowledge_Regulatory(
  this.regulatoryAuthority,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.substitution,
    this.schedule,
    this.maxDispense
    });

  factory MedicationKnowledge_Regulatory.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RegulatoryFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RegulatoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 388)
class MedicationKnowledge_Substitution {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Specifies the type of substitution allowed.
  @HiveField(3)
  CodeableConcept type;

  //  Specifies if regulation allows for changes in the medication when
  // dispensing.
  @HiveField(4)
  bool allowed;

  //  Extensions for allowed
  @HiveField(5)
  Element elementAllowed;

MedicationKnowledge_Substitution(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.allowed,
    this.elementAllowed
    });

  factory MedicationKnowledge_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_SubstitutionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 389)
class MedicationKnowledge_Schedule {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Specifies the specific drug schedule.
  @HiveField(3)
  CodeableConcept schedule;

MedicationKnowledge_Schedule(
  this.schedule,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory MedicationKnowledge_Schedule.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_ScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_ScheduleToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 390)
class MedicationKnowledge_MaxDispense {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The maximum number of units of the medication that can be dispensed.
  @HiveField(3)
  Quantity quantity;

  //  The period that applies to the maximum number of units.
  @HiveField(4)
  Duration period;

MedicationKnowledge_MaxDispense(
  this.quantity,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.period
    });

  factory MedicationKnowledge_MaxDispense.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MaxDispenseFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MaxDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 391)
class MedicationKnowledge_Kinetics {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The drug concentration measured at certain discrete points in time.
  @HiveField(3)
  List<Quantity> areaUnderCurve;

  //  The median lethal dose of a drug.
  @HiveField(4)
  List<Quantity> lethalDose50;

  //  The time required for any specified property (e.g., the concentration
  // of a substance in the body) to decrease by half.
  @HiveField(5)
  Duration halfLifePeriod;

MedicationKnowledge_Kinetics(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod
    });

  factory MedicationKnowledge_Kinetics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_KineticsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_KineticsToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationKnowledgeAdapter extends TypeAdapter<MedicationKnowledge> {
  @override
  final typeId = 375;

  @override
  MedicationKnowledge read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      code: fields[11] as CodeableConcept,
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      manufacturer: fields[14] as Reference,
      doseForm: fields[15] as CodeableConcept,
      amount: fields[16] as Quantity,
      synonym: (fields[17] as List)?.cast<String>(),
      elementSynonym: (fields[18] as List)?.cast<Element>(),
      relatedMedicationKnowledge: (fields[19] as List)
          ?.cast<MedicationKnowledge_RelatedMedicationKnowledge>(),
      associatedMedication: (fields[20] as List)?.cast<Reference>(),
      productType: (fields[21] as List)?.cast<CodeableConcept>(),
      monograph: (fields[22] as List)?.cast<MedicationKnowledge_Monograph>(),
      ingredient: (fields[23] as List)?.cast<MedicationKnowledge_Ingredient>(),
      preparationInstruction: fields[24] as String,
      elementPreparationInstruction: fields[25] as Element,
      intendedRoute: (fields[26] as List)?.cast<CodeableConcept>(),
      cost: (fields[27] as List)?.cast<MedicationKnowledge_Cost>(),
      monitoringProgram:
          (fields[28] as List)?.cast<MedicationKnowledge_MonitoringProgram>(),
      administrationGuidelines: (fields[29] as List)
          ?.cast<MedicationKnowledge_AdministrationGuidelines>(),
      medicineClassification: (fields[30] as List)
          ?.cast<MedicationKnowledge_MedicineClassification>(),
      packaging: fields[31] as MedicationKnowledge_Packaging,
      drugCharacteristic:
          (fields[32] as List)?.cast<MedicationKnowledge_DrugCharacteristic>(),
      contraindication: (fields[33] as List)?.cast<Reference>(),
      regulatory: (fields[34] as List)?.cast<MedicationKnowledge_Regulatory>(),
      kinetics: (fields[35] as List)?.cast<MedicationKnowledge_Kinetics>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge obj) {
    writer
      ..writeByte(36)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.code)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.manufacturer)
      ..writeByte(15)
      ..write(obj.doseForm)
      ..writeByte(16)
      ..write(obj.amount)
      ..writeByte(17)
      ..write(obj.synonym)
      ..writeByte(18)
      ..write(obj.elementSynonym)
      ..writeByte(19)
      ..write(obj.relatedMedicationKnowledge)
      ..writeByte(20)
      ..write(obj.associatedMedication)
      ..writeByte(21)
      ..write(obj.productType)
      ..writeByte(22)
      ..write(obj.monograph)
      ..writeByte(23)
      ..write(obj.ingredient)
      ..writeByte(24)
      ..write(obj.preparationInstruction)
      ..writeByte(25)
      ..write(obj.elementPreparationInstruction)
      ..writeByte(26)
      ..write(obj.intendedRoute)
      ..writeByte(27)
      ..write(obj.cost)
      ..writeByte(28)
      ..write(obj.monitoringProgram)
      ..writeByte(29)
      ..write(obj.administrationGuidelines)
      ..writeByte(30)
      ..write(obj.medicineClassification)
      ..writeByte(31)
      ..write(obj.packaging)
      ..writeByte(32)
      ..write(obj.drugCharacteristic)
      ..writeByte(33)
      ..write(obj.contraindication)
      ..writeByte(34)
      ..write(obj.regulatory)
      ..writeByte(35)
      ..write(obj.kinetics);
  }
}

class MedicationKnowledge_RelatedMedicationKnowledgeAdapter
    extends TypeAdapter<MedicationKnowledge_RelatedMedicationKnowledge> {
  @override
  final typeId = 376;

  @override
  MedicationKnowledge_RelatedMedicationKnowledge read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_RelatedMedicationKnowledge(
      fields[3] as CodeableConcept,
      (fields[4] as List)?.cast<Reference>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicationKnowledge_RelatedMedicationKnowledge obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.reference);
  }
}

class MedicationKnowledge_MonographAdapter
    extends TypeAdapter<MedicationKnowledge_Monograph> {
  @override
  final typeId = 377;

  @override
  MedicationKnowledge_Monograph read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Monograph(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      source: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Monograph obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.source);
  }
}

class MedicationKnowledge_IngredientAdapter
    extends TypeAdapter<MedicationKnowledge_Ingredient> {
  @override
  final typeId = 378;

  @override
  MedicationKnowledge_Ingredient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Ingredient(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemCodeableConcept: fields[3] as CodeableConcept,
      itemReference: fields[4] as Reference,
      isActive: fields[5] as bool,
      elementIsActive: fields[6] as Element,
      strength: fields[7] as Ratio,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Ingredient obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemCodeableConcept)
      ..writeByte(4)
      ..write(obj.itemReference)
      ..writeByte(5)
      ..write(obj.isActive)
      ..writeByte(6)
      ..write(obj.elementIsActive)
      ..writeByte(7)
      ..write(obj.strength);
  }
}

class MedicationKnowledge_CostAdapter
    extends TypeAdapter<MedicationKnowledge_Cost> {
  @override
  final typeId = 379;

  @override
  MedicationKnowledge_Cost read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Cost(
      fields[3] as CodeableConcept,
      fields[6] as Money,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      source: fields[4] as String,
      elementSource: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Cost obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.source)
      ..writeByte(5)
      ..write(obj.elementSource)
      ..writeByte(6)
      ..write(obj.cost);
  }
}

class MedicationKnowledge_MonitoringProgramAdapter
    extends TypeAdapter<MedicationKnowledge_MonitoringProgram> {
  @override
  final typeId = 380;

  @override
  MedicationKnowledge_MonitoringProgram read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_MonitoringProgram(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      name: fields[4] as String,
      elementName: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_MonitoringProgram obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.elementName);
  }
}

class MedicationKnowledge_AdministrationGuidelinesAdapter
    extends TypeAdapter<MedicationKnowledge_AdministrationGuidelines> {
  @override
  final typeId = 381;

  @override
  MedicationKnowledge_AdministrationGuidelines read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_AdministrationGuidelines(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      dosage: (fields[3] as List)?.cast<MedicationKnowledge_Dosage>(),
      indicationCodeableConcept: fields[4] as CodeableConcept,
      indicationReference: fields[5] as Reference,
      patientCharacteristics: (fields[6] as List)
          ?.cast<MedicationKnowledge_PatientCharacteristics>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicationKnowledge_AdministrationGuidelines obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.dosage)
      ..writeByte(4)
      ..write(obj.indicationCodeableConcept)
      ..writeByte(5)
      ..write(obj.indicationReference)
      ..writeByte(6)
      ..write(obj.patientCharacteristics);
  }
}

class MedicationKnowledge_DosageAdapter
    extends TypeAdapter<MedicationKnowledge_Dosage> {
  @override
  final typeId = 382;

  @override
  MedicationKnowledge_Dosage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Dosage(
      fields[3] as CodeableConcept,
      (fields[4] as List)?.cast<Dosage>(),
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Dosage obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.dosage);
  }
}

class MedicationKnowledge_PatientCharacteristicsAdapter
    extends TypeAdapter<MedicationKnowledge_PatientCharacteristics> {
  @override
  final typeId = 383;

  @override
  MedicationKnowledge_PatientCharacteristics read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_PatientCharacteristics(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      characteristicCodeableConcept: fields[3] as CodeableConcept,
      characteristicQuantity: fields[4] as Quantity,
      value: (fields[5] as List)?.cast<String>(),
      elementValue: (fields[6] as List)?.cast<Element>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicationKnowledge_PatientCharacteristics obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.characteristicCodeableConcept)
      ..writeByte(4)
      ..write(obj.characteristicQuantity)
      ..writeByte(5)
      ..write(obj.value)
      ..writeByte(6)
      ..write(obj.elementValue);
  }
}

class MedicationKnowledge_MedicineClassificationAdapter
    extends TypeAdapter<MedicationKnowledge_MedicineClassification> {
  @override
  final typeId = 384;

  @override
  MedicationKnowledge_MedicineClassification read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_MedicineClassification(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      classification: (fields[4] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicationKnowledge_MedicineClassification obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.classification);
  }
}

class MedicationKnowledge_PackagingAdapter
    extends TypeAdapter<MedicationKnowledge_Packaging> {
  @override
  final typeId = 385;

  @override
  MedicationKnowledge_Packaging read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Packaging(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      quantity: fields[4] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Packaging obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.quantity);
  }
}

class MedicationKnowledge_DrugCharacteristicAdapter
    extends TypeAdapter<MedicationKnowledge_DrugCharacteristic> {
  @override
  final typeId = 386;

  @override
  MedicationKnowledge_DrugCharacteristic read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_DrugCharacteristic(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      valueCodeableConcept: fields[4] as CodeableConcept,
      valueString: fields[5] as String,
      elementValueString: fields[6] as Element,
      valueQuantity: fields[7] as Quantity,
      valueBase64Binary: fields[8] as String,
      elementValueBase64Binary: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_DrugCharacteristic obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.valueCodeableConcept)
      ..writeByte(5)
      ..write(obj.valueString)
      ..writeByte(6)
      ..write(obj.elementValueString)
      ..writeByte(7)
      ..write(obj.valueQuantity)
      ..writeByte(8)
      ..write(obj.valueBase64Binary)
      ..writeByte(9)
      ..write(obj.elementValueBase64Binary);
  }
}

class MedicationKnowledge_RegulatoryAdapter
    extends TypeAdapter<MedicationKnowledge_Regulatory> {
  @override
  final typeId = 387;

  @override
  MedicationKnowledge_Regulatory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Regulatory(
      fields[3] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      substitution:
          (fields[4] as List)?.cast<MedicationKnowledge_Substitution>(),
      schedule: (fields[5] as List)?.cast<MedicationKnowledge_Schedule>(),
      maxDispense: fields[6] as MedicationKnowledge_MaxDispense,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Regulatory obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.regulatoryAuthority)
      ..writeByte(4)
      ..write(obj.substitution)
      ..writeByte(5)
      ..write(obj.schedule)
      ..writeByte(6)
      ..write(obj.maxDispense);
  }
}

class MedicationKnowledge_SubstitutionAdapter
    extends TypeAdapter<MedicationKnowledge_Substitution> {
  @override
  final typeId = 388;

  @override
  MedicationKnowledge_Substitution read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Substitution(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      allowed: fields[4] as bool,
      elementAllowed: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Substitution obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.allowed)
      ..writeByte(5)
      ..write(obj.elementAllowed);
  }
}

class MedicationKnowledge_ScheduleAdapter
    extends TypeAdapter<MedicationKnowledge_Schedule> {
  @override
  final typeId = 389;

  @override
  MedicationKnowledge_Schedule read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Schedule(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Schedule obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.schedule);
  }
}

class MedicationKnowledge_MaxDispenseAdapter
    extends TypeAdapter<MedicationKnowledge_MaxDispense> {
  @override
  final typeId = 390;

  @override
  MedicationKnowledge_MaxDispense read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_MaxDispense(
      fields[3] as Quantity,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      period: fields[4] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_MaxDispense obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.period);
  }
}

class MedicationKnowledge_KineticsAdapter
    extends TypeAdapter<MedicationKnowledge_Kinetics> {
  @override
  final typeId = 391;

  @override
  MedicationKnowledge_Kinetics read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationKnowledge_Kinetics(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      areaUnderCurve: (fields[3] as List)?.cast<Quantity>(),
      lethalDose50: (fields[4] as List)?.cast<Quantity>(),
      halfLifePeriod: fields[5] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationKnowledge_Kinetics obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.areaUnderCurve)
      ..writeByte(4)
      ..write(obj.lethalDose50)
      ..writeByte(5)
      ..write(obj.halfLifePeriod);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationKnowledge _$MedicationKnowledgeFromJson(Map<String, dynamic> json) {
  return MedicationKnowledge(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    doseForm: json['doseForm'] == null
        ? null
        : CodeableConcept.fromJson(json['doseForm'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
    synonym: (json['synonym'] as List)?.map((e) => e as String)?.toList(),
    elementSynonym: (json['elementSynonym'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedMedicationKnowledge: (json['relatedMedicationKnowledge'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_RelatedMedicationKnowledge.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    associatedMedication: (json['associatedMedication'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productType: (json['productType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    monograph: (json['monograph'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Monograph.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ingredient: (json['ingredient'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Ingredient.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    preparationInstruction: json['preparationInstruction'] as String,
    elementPreparationInstruction: json['elementPreparationInstruction'] == null
        ? null
        : Element.fromJson(
            json['elementPreparationInstruction'] as Map<String, dynamic>),
    intendedRoute: (json['intendedRoute'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cost: (json['cost'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Cost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    monitoringProgram: (json['monitoringProgram'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_MonitoringProgram.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    administrationGuidelines: (json['administrationGuidelines'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_AdministrationGuidelines.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    medicineClassification: (json['medicineClassification'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_MedicineClassification.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    packaging: json['packaging'] == null
        ? null
        : MedicationKnowledge_Packaging.fromJson(
            json['packaging'] as Map<String, dynamic>),
    drugCharacteristic: (json['drugCharacteristic'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_DrugCharacteristic.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    contraindication: (json['contraindication'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    regulatory: (json['regulatory'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Regulatory.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    kinetics: (json['kinetics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Kinetics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledgeToJson(
        MedicationKnowledge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'manufacturer': instance.manufacturer?.toJson(),
      'doseForm': instance.doseForm?.toJson(),
      'amount': instance.amount?.toJson(),
      'synonym': instance.synonym,
      'elementSynonym':
          instance.elementSynonym?.map((e) => e?.toJson())?.toList(),
      'relatedMedicationKnowledge': instance.relatedMedicationKnowledge
          ?.map((e) => e?.toJson())
          ?.toList(),
      'associatedMedication':
          instance.associatedMedication?.map((e) => e?.toJson())?.toList(),
      'productType': instance.productType?.map((e) => e?.toJson())?.toList(),
      'monograph': instance.monograph?.map((e) => e?.toJson())?.toList(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'preparationInstruction': instance.preparationInstruction,
      'elementPreparationInstruction':
          instance.elementPreparationInstruction?.toJson(),
      'intendedRoute':
          instance.intendedRoute?.map((e) => e?.toJson())?.toList(),
      'cost': instance.cost?.map((e) => e?.toJson())?.toList(),
      'monitoringProgram':
          instance.monitoringProgram?.map((e) => e?.toJson())?.toList(),
      'administrationGuidelines':
          instance.administrationGuidelines?.map((e) => e?.toJson())?.toList(),
      'medicineClassification':
          instance.medicineClassification?.map((e) => e?.toJson())?.toList(),
      'packaging': instance.packaging?.toJson(),
      'drugCharacteristic':
          instance.drugCharacteristic?.map((e) => e?.toJson())?.toList(),
      'contraindication':
          instance.contraindication?.map((e) => e?.toJson())?.toList(),
      'regulatory': instance.regulatory?.map((e) => e?.toJson())?.toList(),
      'kinetics': instance.kinetics?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_RelatedMedicationKnowledge
    _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_RelatedMedicationKnowledge(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(
        MedicationKnowledge_RelatedMedicationKnowledge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_Monograph _$MedicationKnowledge_MonographFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Monograph(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MonographToJson(
        MedicationKnowledge_Monograph instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'source': instance.source?.toJson(),
    };

MedicationKnowledge_Ingredient _$MedicationKnowledge_IngredientFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Ingredient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    isActive: json['isActive'] as bool,
    elementIsActive: json['elementIsActive'] == null
        ? null
        : Element.fromJson(json['elementIsActive'] as Map<String, dynamic>),
    strength: json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_IngredientToJson(
        MedicationKnowledge_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'isActive': instance.isActive,
      'elementIsActive': instance.elementIsActive?.toJson(),
      'strength': instance.strength?.toJson(),
    };

MedicationKnowledge_Cost _$MedicationKnowledge_CostFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Cost(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['cost'] == null
        ? null
        : Money.fromJson(json['cost'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_CostToJson(
        MedicationKnowledge_Cost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'source': instance.source,
      'elementSource': instance.elementSource?.toJson(),
      'cost': instance.cost?.toJson(),
    };

MedicationKnowledge_MonitoringProgram
    _$MedicationKnowledge_MonitoringProgramFromJson(Map<String, dynamic> json) {
  return MedicationKnowledge_MonitoringProgram(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MonitoringProgramToJson(
        MedicationKnowledge_MonitoringProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
    };

MedicationKnowledge_AdministrationGuidelines
    _$MedicationKnowledge_AdministrationGuidelinesFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_AdministrationGuidelines(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosage: (json['dosage'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    indicationCodeableConcept: json['indicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['indicationCodeableConcept'] as Map<String, dynamic>),
    indicationReference: json['indicationReference'] == null
        ? null
        : Reference.fromJson(
            json['indicationReference'] as Map<String, dynamic>),
    patientCharacteristics: (json['patientCharacteristics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_PatientCharacteristics.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_AdministrationGuidelinesToJson(
        MedicationKnowledge_AdministrationGuidelines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
      'indicationCodeableConcept': instance.indicationCodeableConcept?.toJson(),
      'indicationReference': instance.indicationReference?.toJson(),
      'patientCharacteristics':
          instance.patientCharacteristics?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_Dosage _$MedicationKnowledge_DosageFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Dosage(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_DosageToJson(
        MedicationKnowledge_Dosage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_PatientCharacteristics
    _$MedicationKnowledge_PatientCharacteristicsFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_PatientCharacteristics(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    characteristicCodeableConcept: json['characteristicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['characteristicCodeableConcept'] as Map<String, dynamic>),
    characteristicQuantity: json['characteristicQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['characteristicQuantity'] as Map<String, dynamic>),
    value: (json['value'] as List)?.map((e) => e as String)?.toList(),
    elementValue: (json['elementValue'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_PatientCharacteristicsToJson(
        MedicationKnowledge_PatientCharacteristics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'characteristicCodeableConcept':
          instance.characteristicCodeableConcept?.toJson(),
      'characteristicQuantity': instance.characteristicQuantity?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_MedicineClassification
    _$MedicationKnowledge_MedicineClassificationFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_MedicineClassification(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classification: (json['classification'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MedicineClassificationToJson(
        MedicationKnowledge_MedicineClassification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'classification':
          instance.classification?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_Packaging _$MedicationKnowledge_PackagingFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Packaging(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_PackagingToJson(
        MedicationKnowledge_Packaging instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'quantity': instance.quantity?.toJson(),
    };

MedicationKnowledge_DrugCharacteristic
    _$MedicationKnowledge_DrugCharacteristicFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_DrugCharacteristic(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_DrugCharacteristicToJson(
        MedicationKnowledge_DrugCharacteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
    };

MedicationKnowledge_Regulatory _$MedicationKnowledge_RegulatoryFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Regulatory(
    json['regulatoryAuthority'] == null
        ? null
        : Reference.fromJson(
            json['regulatoryAuthority'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substitution: (json['substitution'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Substitution.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    schedule: (json['schedule'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Schedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maxDispense: json['maxDispense'] == null
        ? null
        : MedicationKnowledge_MaxDispense.fromJson(
            json['maxDispense'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_RegulatoryToJson(
        MedicationKnowledge_Regulatory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'regulatoryAuthority': instance.regulatoryAuthority?.toJson(),
      'substitution': instance.substitution?.map((e) => e?.toJson())?.toList(),
      'schedule': instance.schedule?.map((e) => e?.toJson())?.toList(),
      'maxDispense': instance.maxDispense?.toJson(),
    };

MedicationKnowledge_Substitution _$MedicationKnowledge_SubstitutionFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Substitution(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowed: json['allowed'] as bool,
    elementAllowed: json['elementAllowed'] == null
        ? null
        : Element.fromJson(json['elementAllowed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_SubstitutionToJson(
        MedicationKnowledge_Substitution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'allowed': instance.allowed,
      'elementAllowed': instance.elementAllowed?.toJson(),
    };

MedicationKnowledge_Schedule _$MedicationKnowledge_ScheduleFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Schedule(
    json['schedule'] == null
        ? null
        : CodeableConcept.fromJson(json['schedule'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_ScheduleToJson(
        MedicationKnowledge_Schedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'schedule': instance.schedule?.toJson(),
    };

MedicationKnowledge_MaxDispense _$MedicationKnowledge_MaxDispenseFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_MaxDispense(
    json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Duration.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MaxDispenseToJson(
        MedicationKnowledge_MaxDispense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'period': instance.period?.toJson(),
    };

MedicationKnowledge_Kinetics _$MedicationKnowledge_KineticsFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Kinetics(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    areaUnderCurve: (json['areaUnderCurve'] as List)
        ?.map((e) =>
            e == null ? null : Quantity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lethalDose50: (json['lethalDose50'] as List)
        ?.map((e) =>
            e == null ? null : Quantity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    halfLifePeriod: json['halfLifePeriod'] == null
        ? null
        : Duration.fromJson(json['halfLifePeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_KineticsToJson(
        MedicationKnowledge_Kinetics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'areaUnderCurve':
          instance.areaUnderCurve?.map((e) => e?.toJson())?.toList(),
      'lethalDose50': instance.lethalDose50?.map((e) => e?.toJson())?.toList(),
      'halfLifePeriod': instance.halfLifePeriod?.toJson(),
    };
