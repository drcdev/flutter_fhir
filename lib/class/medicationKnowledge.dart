import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicationKnowledge.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge {

  //  This is a MedicationKnowledge resource
  final String resourceType= 'MedicationKnowledge';

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
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

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
  List<ResourceList> contained;

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

  //  A code that specifies this medication, or a textual description if no
  // code is available. Usage note: This could be a standard medication code
  // such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  // national or local formulary code, optionally with translations to other
  // code systems.
  CodeableConcept code;

  //  A code to indicate if the medication is in active use.  The status
  // refers to the validity about the information of the medication and not
  // to its medicinal properties.
  String status;

  //  Extensions for status
  Element element_status;

  //  Describes the details of the manufacturer of the medication product. 
  // This is not intended to represent the distributor of a medication
  // product.
  Reference manufacturer;

  //  Describes the form of the item.  Powder; tablets; capsule.
  CodeableConcept doseForm;

  //  Specific amount of the drug in the packaged product.  For example,
  // when specifying a product that has the same strength (For example,
  // Insulin glargine 100 unit per mL solution for injection), this
  // attribute provides additional clarification of the package amount (For
  // example, 3 mL, 10mL, etc.).
  Quantity amount;

  //  Additional names for a medication, for example, the name(s) given to a
  // medication in different countries.  For example, acetaminophen and
  // paracetamol or salbutamol and albuterol.
  List<String> synonym;

  //  Extensions for synonym
  List<Element> element_synonym;

  //  Associated or related knowledge about a medication.
  List<MedicationKnowledge_RelatedMedicationKnowledge> relatedMedicationKnowledge;

  //  Associated or related medications.  For example, if the medication is
  // a branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  // Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
  // this would link to a branded product (e.g. Crestor).
  List<Reference> associatedMedication;

  //  Category of the medication or product (e.g. branded product,
  // therapeutic moeity, generic product, innovator product, etc.).
  List<CodeableConcept> productType;

  //  Associated documentation about the medication.
  List<MedicationKnowledge_Monograph> monograph;

  //  Identifies a particular constituent of interest in the product.
  List<MedicationKnowledge_Ingredient> ingredient;

  //  The instructions for preparing the medication.
  String preparationInstruction;

  //  Extensions for preparationInstruction
  Element element_preparationInstruction;

  //  The intended or approved route of administration.
  List<CodeableConcept> intendedRoute;

  //  The price of the medication.
  List<MedicationKnowledge_Cost> cost;

  //  The program under which the medication is reviewed.
  List<MedicationKnowledge_MonitoringProgram> monitoringProgram;

  //  Guidelines for the administration of the medication.
  List<MedicationKnowledge_AdministrationGuidelines> administrationGuidelines;

  //  Categorization of the medication within a formulary or classification
  // system.
  List<MedicationKnowledge_MedicineClassification> medicineClassification;

  //  Information that only applies to packages (not products).
  MedicationKnowledge_Packaging packaging;

  //  Specifies descriptive properties of the medicine, such as color,
  // shape, imprints, etc.
  List<MedicationKnowledge_DrugCharacteristic> drugCharacteristic;

  //  Potential clinical issue with or between medication(s) (for example,
  // drug-drug interaction, drug-disease contraindication, drug-allergy
  // interaction, etc.).
  List<Reference> contraindication;

  //  Regulatory information about a medication.
  List<MedicationKnowledge_Regulatory> regulatory;

  //  The time course of drug absorption, distribution, metabolism and
  // excretion of a medication from the body.
  List<MedicationKnowledge_Kinetics> kinetics;

MedicationKnowledge(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.code,
    this.status,
    this.element_status,
    this.manufacturer,
    this.doseForm,
    this.amount,
    this.synonym,
    this.element_synonym,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.ingredient,
    this.preparationInstruction,
    this.element_preparationInstruction,
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
class MedicationKnowledge_RelatedMedicationKnowledge {

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

  //  The category of the associated medication knowledge reference.
  CodeableConcept type;

  //  Associated documentation about the associated medication knowledge.
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
class MedicationKnowledge_Monograph {

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

  //  The category of documentation about the medication. (e.g. professional
  // monograph, patient education monograph).
  CodeableConcept type;

  //  Associated documentation about the medication.
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
class MedicationKnowledge_Ingredient {

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
  // another medication.
  CodeableConcept itemCodeableConcept;

  //  The actual ingredient - either a substance (simple ingredient) or
  // another medication.
  Reference itemReference;

  //  Indication of whether this ingredient affects the therapeutic action
  // of the drug.
  bool isActive;

  //  Extensions for isActive
  Element element_isActive;

  //  Specifies how many (or how much) of the items there are in this
  // Medication.  For example, 250 mg per tablet.  This is expressed as a
  // ratio where the numerator is 250mg and the denominator is 1 tablet.
  Ratio strength;

MedicationKnowledge_Ingredient(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.element_isActive,
    this.strength
    });

  factory MedicationKnowledge_Ingredient.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Cost {

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

  //  The category of the cost information.  For example, manufacturers'
  // cost, patient cost, claim reimbursement cost, actual acquisition cost.
  CodeableConcept type;

  //  The source or owner that assigns the price to the medication.
  String source;

  //  Extensions for source
  Element element_source;

  //  The price of the medication.
  Money cost;

MedicationKnowledge_Cost(
  this.type,
    this.cost,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.element_source
    });

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_CostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MonitoringProgram {

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

  //  Type of program under which the medication is monitored.
  CodeableConcept type;

  //  Name of the reviewing program.
  String name;

  //  Extensions for name
  Element element_name;

MedicationKnowledge_MonitoringProgram(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.name,
    this.element_name
    });

  factory MedicationKnowledge_MonitoringProgram.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonitoringProgramFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MonitoringProgramToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_AdministrationGuidelines {

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

  //  Dosage for the medication for the specific guidelines.
  List<MedicationKnowledge_Dosage> dosage;

  //  Indication for use that apply to the specific administration
  // guidelines.
  CodeableConcept indicationCodeableConcept;

  //  Indication for use that apply to the specific administration
  // guidelines.
  Reference indicationReference;

  //  Characteristics of the patient that are relevant to the administration
  // guidelines (for example, height, weight, gender, etc.).
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
class MedicationKnowledge_Dosage {

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

  //  The type of dosage (for example, prophylaxis, maintenance,
  // therapeutic, etc.).
  CodeableConcept type;

  //  Dosage for the medication for the specific guidelines.
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
class MedicationKnowledge_PatientCharacteristics {

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

  //  Specific characteristic that is relevant to the administration
  // guideline (e.g. height, weight, gender).
  CodeableConcept characteristicCodeableConcept;

  //  Specific characteristic that is relevant to the administration
  // guideline (e.g. height, weight, gender).
  Quantity characteristicQuantity;

  //  The specific characteristic (e.g. height, weight, gender, etc.).
  List<String> value;

  //  Extensions for value
  List<Element> element_value;

MedicationKnowledge_PatientCharacteristics(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.element_value
    });

  factory MedicationKnowledge_PatientCharacteristics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PatientCharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_PatientCharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MedicineClassification {

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

  //  The type of category for the medication (for example, therapeutic
  // classification, therapeutic sub-classification).
  CodeableConcept type;

  //  Specific category assigned to the medication (e.g. anti-infective,
  // anti-hypertensive, antibiotic, etc.).
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
class MedicationKnowledge_Packaging {

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

  //  A code that defines the specific type of packaging that the medication
  // can be found in (e.g. blister sleeve, tube, bottle).
  CodeableConcept type;

  //  The number of product units the package would contain if fully loaded.
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
class MedicationKnowledge_DrugCharacteristic {

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

  //  A code specifying which characteristic of the medicine is being
  // described (for example, colour, shape, imprint).
  CodeableConcept type;

  //  Description of the characteristic.
  CodeableConcept valueCodeableConcept;

  //  Description of the characteristic.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element element_valueString;

  //  Description of the characteristic.
  Quantity valueQuantity;

  //  Description of the characteristic.
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  Element element_valueBase64Binary;

MedicationKnowledge_DrugCharacteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.element_valueString,
    this.valueQuantity,
    this.valueBase64Binary,
    this.element_valueBase64Binary
    });

  factory MedicationKnowledge_DrugCharacteristic.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DrugCharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DrugCharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Regulatory {

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

  //  The authority that is specifying the regulations.
  Reference regulatoryAuthority;

  //  Specifies if changes are allowed when dispensing a medication from a
  // regulatory perspective.
  List<MedicationKnowledge_Substitution> substitution;

  //  Specifies the schedule of a medication in jurisdiction.
  List<MedicationKnowledge_Schedule> schedule;

  //  The maximum number of units of the medication that can be dispensed in
  // a period.
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
class MedicationKnowledge_Substitution {

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

  //  Specifies the type of substitution allowed.
  CodeableConcept type;

  //  Specifies if regulation allows for changes in the medication when
  // dispensing.
  bool allowed;

  //  Extensions for allowed
  Element element_allowed;

MedicationKnowledge_Substitution(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.allowed,
    this.element_allowed
    });

  factory MedicationKnowledge_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_SubstitutionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Schedule {

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

  //  Specifies the specific drug schedule.
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
class MedicationKnowledge_MaxDispense {

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

  //  The maximum number of units of the medication that can be dispensed.
  Quantity quantity;

  //  The period that applies to the maximum number of units.
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
class MedicationKnowledge_Kinetics {

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

  //  The drug concentration measured at certain discrete points in time.
  List<Quantity> areaUnderCurve;

  //  The median lethal dose of a drug.
  List<Quantity> lethalDose50;

  //  The time required for any specified property (e.g., the concentration
  // of a substance in the body) to decrease by half.
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

