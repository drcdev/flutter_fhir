import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

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
@HiveType(typeId: 133)
class MedicationKnowledge {

	static Future<MedicationKnowledge> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		String status,
		Element elementStatus,
		Reference manufacturer,
		CodeableConcept doseForm,
		Quantity amount,
		List<String> synonym,
		List<Element> elementSynonym,
		List<MedicationKnowledge_RelatedMedicationKnowledge> relatedMedicationKnowledge,
		List<Reference> associatedMedication,
		List<CodeableConcept> productType,
		List<MedicationKnowledge_Monograph> monograph,
		List<MedicationKnowledge_Ingredient> ingredient,
		String preparationInstruction,
		Element elementPreparationInstruction,
		List<CodeableConcept> intendedRoute,
		List<MedicationKnowledge_Cost> cost,
		List<MedicationKnowledge_MonitoringProgram> monitoringProgram,
		List<MedicationKnowledge_AdministrationGuidelines> administrationGuidelines,
		List<MedicationKnowledge_MedicineClassification> medicineClassification,
		MedicationKnowledge_Packaging packaging,
		List<MedicationKnowledge_DrugCharacteristic> drugCharacteristic,
		List<Reference> contraindication,
		List<MedicationKnowledge_Regulatory> regulatory,
		List<MedicationKnowledge_Kinetics> kinetics}) async {
	 return MedicationKnowledge(
			id: await newEntry('MedicationKnowledge'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			status: status,
			elementStatus: elementStatus,
			manufacturer: manufacturer,
			doseForm: doseForm,
			amount: amount,
			synonym: synonym,
			elementSynonym: elementSynonym,
			relatedMedicationKnowledge: relatedMedicationKnowledge,
			associatedMedication: associatedMedication,
			productType: productType,
			monograph: monograph,
			ingredient: ingredient,
			preparationInstruction: preparationInstruction,
			elementPreparationInstruction: elementPreparationInstruction,
			intendedRoute: intendedRoute,
			cost: cost,
			monitoringProgram: monitoringProgram,
			administrationGuidelines: administrationGuidelines,
			medicineClassification: medicineClassification,
			packaging: packaging,
			drugCharacteristic: drugCharacteristic,
			contraindication: contraindication,
			regulatory: regulatory,
			kinetics: kinetics);
	}

  @HiveField(0)
  final String resourceType= 'MedicationKnowledge';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  CodeableConcept code;
  @HiveField(12)
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  Reference manufacturer;
  @HiveField(15)
  CodeableConcept doseForm;
  @HiveField(16)
  Quantity amount;
  @HiveField(17)
  List<String> synonym;
  @HiveField(18)
  List<Element> elementSynonym;
  @HiveField(19)
  List<MedicationKnowledge_RelatedMedicationKnowledge> relatedMedicationKnowledge;
  @HiveField(20)
  List<Reference> associatedMedication;
  @HiveField(21)
  List<CodeableConcept> productType;
  @HiveField(22)
  List<MedicationKnowledge_Monograph> monograph;
  @HiveField(23)
  List<MedicationKnowledge_Ingredient> ingredient;
  @HiveField(24)
  String preparationInstruction;
  @HiveField(25)
  Element elementPreparationInstruction;
  @HiveField(26)
  List<CodeableConcept> intendedRoute;
  @HiveField(27)
  List<MedicationKnowledge_Cost> cost;
  @HiveField(28)
  List<MedicationKnowledge_MonitoringProgram> monitoringProgram;
  @HiveField(29)
  List<MedicationKnowledge_AdministrationGuidelines> administrationGuidelines;
  @HiveField(30)
  List<MedicationKnowledge_MedicineClassification> medicineClassification;
  @HiveField(31)
  MedicationKnowledge_Packaging packaging;
  @HiveField(32)
  List<MedicationKnowledge_DrugCharacteristic> drugCharacteristic;
  @HiveField(33)
  List<Reference> contraindication;
  @HiveField(34)
  List<MedicationKnowledge_Regulatory> regulatory;
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
class MedicationKnowledge_RelatedMedicationKnowledge {

	static Future<MedicationKnowledge_RelatedMedicationKnowledge> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<Reference> reference}) async {
	 return MedicationKnowledge_RelatedMedicationKnowledge(
			id: await newEntry('MedicationKnowledge_RelatedMedicationKnowledge'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			reference: reference);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Reference> reference;

MedicationKnowledge_RelatedMedicationKnowledge(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    @required this.reference
    });

  factory MedicationKnowledge_RelatedMedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Monograph {

	static Future<MedicationKnowledge_Monograph> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		Reference source}) async {
	 return MedicationKnowledge_Monograph(
			id: await newEntry('MedicationKnowledge_Monograph'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			source: source);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
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

	static Future<MedicationKnowledge_Ingredient> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept itemCodeableConcept,
		Reference itemReference,
		bool isActive,
		Element elementIsActive,
		Ratio strength}) async {
	 return MedicationKnowledge_Ingredient(
			id: await newEntry('MedicationKnowledge_Ingredient'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemCodeableConcept: itemCodeableConcept,
			itemReference: itemReference,
			isActive: isActive,
			elementIsActive: elementIsActive,
			strength: strength);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Element elementIsActive;
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
class MedicationKnowledge_Cost {

	static Future<MedicationKnowledge_Cost> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		String source,
		Element elementSource,
		Money cost}) async {
	 return MedicationKnowledge_Cost(
			id: await newEntry('MedicationKnowledge_Cost'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			source: source,
			elementSource: elementSource,
			cost: cost);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String source;
  Element elementSource;
  Money cost;

MedicationKnowledge_Cost(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.source,
    this.elementSource,
    @required this.cost
    });

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_CostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MonitoringProgram {

	static Future<MedicationKnowledge_MonitoringProgram> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		String name,
		Element elementName}) async {
	 return MedicationKnowledge_MonitoringProgram(
			id: await newEntry('MedicationKnowledge_MonitoringProgram'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			name: name,
			elementName: elementName);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String name;
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
class MedicationKnowledge_AdministrationGuidelines {

	static Future<MedicationKnowledge_AdministrationGuidelines> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<MedicationKnowledge_Dosage> dosage,
		CodeableConcept indicationCodeableConcept,
		Reference indicationReference,
		List<MedicationKnowledge_PatientCharacteristics> patientCharacteristics}) async {
	 return MedicationKnowledge_AdministrationGuidelines(
			id: await newEntry('MedicationKnowledge_AdministrationGuidelines'),
			extension: extension,
			modifierExtension: modifierExtension,
			dosage: dosage,
			indicationCodeableConcept: indicationCodeableConcept,
			indicationReference: indicationReference,
			patientCharacteristics: patientCharacteristics);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<MedicationKnowledge_Dosage> dosage;
  CodeableConcept indicationCodeableConcept;
  Reference indicationReference;
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

	static Future<MedicationKnowledge_Dosage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<Dosage> dosage}) async {
	 return MedicationKnowledge_Dosage(
			id: await newEntry('MedicationKnowledge_Dosage'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			dosage: dosage);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Dosage> dosage;

MedicationKnowledge_Dosage(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    @required this.dosage
    });

  factory MedicationKnowledge_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DosageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_PatientCharacteristics {

	static Future<MedicationKnowledge_PatientCharacteristics> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept characteristicCodeableConcept,
		Quantity characteristicQuantity,
		List<String> value,
		List<Element> elementValue}) async {
	 return MedicationKnowledge_PatientCharacteristics(
			id: await newEntry('MedicationKnowledge_PatientCharacteristics'),
			extension: extension,
			modifierExtension: modifierExtension,
			characteristicCodeableConcept: characteristicCodeableConcept,
			characteristicQuantity: characteristicQuantity,
			value: value,
			elementValue: elementValue);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept characteristicCodeableConcept;
  Quantity characteristicQuantity;
  List<String> value;
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
class MedicationKnowledge_MedicineClassification {

	static Future<MedicationKnowledge_MedicineClassification> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<CodeableConcept> classification}) async {
	 return MedicationKnowledge_MedicineClassification(
			id: await newEntry('MedicationKnowledge_MedicineClassification'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			classification: classification);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> classification;

MedicationKnowledge_MedicineClassification(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.classification
    });

  factory MedicationKnowledge_MedicineClassification.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MedicineClassificationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MedicineClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Packaging {

	static Future<MedicationKnowledge_Packaging> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		Quantity quantity}) async {
	 return MedicationKnowledge_Packaging(
			id: await newEntry('MedicationKnowledge_Packaging'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			quantity: quantity);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
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

	static Future<MedicationKnowledge_DrugCharacteristic> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		CodeableConcept valueCodeableConcept,
		String valueString,
		Element elementValueString,
		Quantity valueQuantity,
		String valueBase64Binary,
		Element elementValueBase64Binary}) async {
	 return MedicationKnowledge_DrugCharacteristic(
			id: await newEntry('MedicationKnowledge_DrugCharacteristic'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			valueCodeableConcept: valueCodeableConcept,
			valueString: valueString,
			elementValueString: elementValueString,
			valueQuantity: valueQuantity,
			valueBase64Binary: valueBase64Binary,
			elementValueBase64Binary: elementValueBase64Binary);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept valueCodeableConcept;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  Quantity valueQuantity;
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
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
class MedicationKnowledge_Regulatory {

	static Future<MedicationKnowledge_Regulatory> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference regulatoryAuthority,
		List<MedicationKnowledge_Substitution> substitution,
		List<MedicationKnowledge_Schedule> schedule,
		MedicationKnowledge_MaxDispense maxDispense}) async {
	 return MedicationKnowledge_Regulatory(
			id: await newEntry('MedicationKnowledge_Regulatory'),
			extension: extension,
			modifierExtension: modifierExtension,
			regulatoryAuthority: regulatoryAuthority,
			substitution: substitution,
			schedule: schedule,
			maxDispense: maxDispense);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference regulatoryAuthority;
  List<MedicationKnowledge_Substitution> substitution;
  List<MedicationKnowledge_Schedule> schedule;
  MedicationKnowledge_MaxDispense maxDispense;

MedicationKnowledge_Regulatory(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense
    });

  factory MedicationKnowledge_Regulatory.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RegulatoryFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RegulatoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Substitution {

	static Future<MedicationKnowledge_Substitution> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		bool allowed,
		Element elementAllowed}) async {
	 return MedicationKnowledge_Substitution(
			id: await newEntry('MedicationKnowledge_Substitution'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			allowed: allowed,
			elementAllowed: elementAllowed);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  bool allowed;
  Element elementAllowed;

MedicationKnowledge_Substitution(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.allowed,
    this.elementAllowed
    });

  factory MedicationKnowledge_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_SubstitutionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Schedule {

	static Future<MedicationKnowledge_Schedule> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept schedule}) async {
	 return MedicationKnowledge_Schedule(
			id: await newEntry('MedicationKnowledge_Schedule'),
			extension: extension,
			modifierExtension: modifierExtension,
			schedule: schedule);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept schedule;

MedicationKnowledge_Schedule(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.schedule
    });

  factory MedicationKnowledge_Schedule.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_ScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_ScheduleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MaxDispense {

	static Future<MedicationKnowledge_MaxDispense> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Quantity quantity,
		Duration period}) async {
	 return MedicationKnowledge_MaxDispense(
			id: await newEntry('MedicationKnowledge_MaxDispense'),
			extension: extension,
			modifierExtension: modifierExtension,
			quantity: quantity,
			period: period);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity quantity;
  Duration period;

MedicationKnowledge_MaxDispense(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.quantity,
    this.period
    });

  factory MedicationKnowledge_MaxDispense.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MaxDispenseFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MaxDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Kinetics {

	static Future<MedicationKnowledge_Kinetics> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Quantity> areaUnderCurve,
		List<Quantity> lethalDose50,
		Duration halfLifePeriod}) async {
	 return MedicationKnowledge_Kinetics(
			id: await newEntry('MedicationKnowledge_Kinetics'),
			extension: extension,
			modifierExtension: modifierExtension,
			areaUnderCurve: areaUnderCurve,
			lethalDose50: lethalDose50,
			halfLifePeriod: halfLifePeriod);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Quantity> areaUnderCurve;
  List<Quantity> lethalDose50;
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
  final typeId = 133;

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
    reference: (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
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
    source: json['source'] as String,
    elementSource: json['elementSource'] == null
        ? null
        : Element.fromJson(json['elementSource'] as Map<String, dynamic>),
    cost: json['cost'] == null
        ? null
        : Money.fromJson(json['cost'] as Map<String, dynamic>),
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
    dosage: (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    regulatoryAuthority: json['regulatoryAuthority'] == null
        ? null
        : Reference.fromJson(
            json['regulatoryAuthority'] as Map<String, dynamic>),
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    schedule: json['schedule'] == null
        ? null
        : CodeableConcept.fromJson(json['schedule'] as Map<String, dynamic>),
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
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
