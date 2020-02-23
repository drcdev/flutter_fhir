import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge {
  static Future<MedicationKnowledge> newInstance({
    String resourceType,
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
    List<MedicationKnowledge_RelatedMedicationKnowledge>
        relatedMedicationKnowledge,
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
    List<MedicationKnowledge_Kinetics> kinetics,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge newMedicationKnowledge = new MedicationKnowledge(
      resourceType: 'MedicationKnowledge',
      id: id ?? await fhirDb.newResourceId('MedicationKnowledge'),
      meta: meta ?? await Meta.newInstance(),
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
      kinetics: kinetics,
    );
    newMedicationKnowledge.meta.createdAt = DateTime.now();
    newMedicationKnowledge.meta.lastUpdated =
        newMedicationKnowledge.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicationKnowledge);
    return newMedicationKnowledge;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'MedicationKnowledge';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String status;
  Element elementStatus;
  Reference manufacturer;
  CodeableConcept doseForm;
  Quantity amount;
  List<String> synonym;
  List<Element> elementSynonym;
  List<MedicationKnowledge_RelatedMedicationKnowledge>
      relatedMedicationKnowledge;
  List<Reference> associatedMedication;
  List<CodeableConcept> productType;
  List<MedicationKnowledge_Monograph> monograph;
  List<MedicationKnowledge_Ingredient> ingredient;
  String preparationInstruction;
  Element elementPreparationInstruction;
  List<CodeableConcept> intendedRoute;
  List<MedicationKnowledge_Cost> cost;
  List<MedicationKnowledge_MonitoringProgram> monitoringProgram;
  List<MedicationKnowledge_AdministrationGuidelines> administrationGuidelines;
  List<MedicationKnowledge_MedicineClassification> medicineClassification;
  MedicationKnowledge_Packaging packaging;
  List<MedicationKnowledge_DrugCharacteristic> drugCharacteristic;
  List<Reference> contraindication;
  List<MedicationKnowledge_Regulatory> regulatory;
  List<MedicationKnowledge_Kinetics> kinetics;

  MedicationKnowledge({
    @required this.resourceType,
    this.id,
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
    this.kinetics,
  });

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_RelatedMedicationKnowledge {
  static Future<MedicationKnowledge_RelatedMedicationKnowledge> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<Reference> reference,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_RelatedMedicationKnowledge
        newMedicationKnowledge_RelatedMedicationKnowledge =
        new MedicationKnowledge_RelatedMedicationKnowledge(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      reference: reference,
    );
    return newMedicationKnowledge_RelatedMedicationKnowledge;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Reference> reference;

  MedicationKnowledge_RelatedMedicationKnowledge({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    @required this.reference,
  });

  factory MedicationKnowledge_RelatedMedicationKnowledge.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Monograph {
  static Future<MedicationKnowledge_Monograph> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Reference source,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Monograph newMedicationKnowledge_Monograph =
        new MedicationKnowledge_Monograph(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      source: source,
    );
    return newMedicationKnowledge_Monograph;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Reference source;

  MedicationKnowledge_Monograph({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.source,
  });

  factory MedicationKnowledge_Monograph.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_MonographFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_MonographToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Ingredient {
  static Future<MedicationKnowledge_Ingredient> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept itemCodeableConcept,
    Reference itemReference,
    bool isActive,
    Element elementIsActive,
    Ratio strength,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Ingredient newMedicationKnowledge_Ingredient =
        new MedicationKnowledge_Ingredient(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemCodeableConcept: itemCodeableConcept,
      itemReference: itemReference,
      isActive: isActive,
      elementIsActive: elementIsActive,
      strength: strength,
    );
    return newMedicationKnowledge_Ingredient;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  bool isActive;
  Element elementIsActive;
  Ratio strength;

  MedicationKnowledge_Ingredient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.elementIsActive,
    this.strength,
  });

  factory MedicationKnowledge_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Cost {
  static Future<MedicationKnowledge_Cost> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String source,
    Element elementSource,
    Money cost,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Cost newMedicationKnowledge_Cost =
        new MedicationKnowledge_Cost(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      source: source,
      elementSource: elementSource,
      cost: cost,
    );
    return newMedicationKnowledge_Cost;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String source;
  Element elementSource;
  Money cost;

  MedicationKnowledge_Cost({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.source,
    this.elementSource,
    @required this.cost,
  });

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_CostToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_MonitoringProgram {
  static Future<MedicationKnowledge_MonitoringProgram> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String name,
    Element elementName,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_MonitoringProgram
        newMedicationKnowledge_MonitoringProgram =
        new MedicationKnowledge_MonitoringProgram(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      name: name,
      elementName: elementName,
    );
    return newMedicationKnowledge_MonitoringProgram;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String name;
  Element elementName;

  MedicationKnowledge_MonitoringProgram({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.name,
    this.elementName,
  });

  factory MedicationKnowledge_MonitoringProgram.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_MonitoringProgramFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_MonitoringProgramToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_AdministrationGuidelines {
  static Future<MedicationKnowledge_AdministrationGuidelines> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<MedicationKnowledge_Dosage> dosage,
    CodeableConcept indicationCodeableConcept,
    Reference indicationReference,
    List<MedicationKnowledge_PatientCharacteristics> patientCharacteristics,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_AdministrationGuidelines
        newMedicationKnowledge_AdministrationGuidelines =
        new MedicationKnowledge_AdministrationGuidelines(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      dosage: dosage,
      indicationCodeableConcept: indicationCodeableConcept,
      indicationReference: indicationReference,
      patientCharacteristics: patientCharacteristics,
    );
    return newMedicationKnowledge_AdministrationGuidelines;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<MedicationKnowledge_Dosage> dosage;
  CodeableConcept indicationCodeableConcept;
  Reference indicationReference;
  List<MedicationKnowledge_PatientCharacteristics> patientCharacteristics;

  MedicationKnowledge_AdministrationGuidelines({
    this.id,
    this.extension,
    this.modifierExtension,
    this.dosage,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.patientCharacteristics,
  });

  factory MedicationKnowledge_AdministrationGuidelines.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_AdministrationGuidelinesFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_AdministrationGuidelinesToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Dosage {
  static Future<MedicationKnowledge_Dosage> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<Dosage> dosage,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Dosage newMedicationKnowledge_Dosage =
        new MedicationKnowledge_Dosage(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      dosage: dosage,
    );
    return newMedicationKnowledge_Dosage;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Dosage> dosage;

  MedicationKnowledge_Dosage({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    @required this.dosage,
  });

  factory MedicationKnowledge_Dosage.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_DosageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_PatientCharacteristics {
  static Future<MedicationKnowledge_PatientCharacteristics> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept characteristicCodeableConcept,
    Quantity characteristicQuantity,
    List<String> value,
    List<Element> elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_PatientCharacteristics
        newMedicationKnowledge_PatientCharacteristics =
        new MedicationKnowledge_PatientCharacteristics(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      characteristicCodeableConcept: characteristicCodeableConcept,
      characteristicQuantity: characteristicQuantity,
      value: value,
      elementValue: elementValue,
    );
    return newMedicationKnowledge_PatientCharacteristics;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept characteristicCodeableConcept;
  Quantity characteristicQuantity;
  List<String> value;
  List<Element> elementValue;

  MedicationKnowledge_PatientCharacteristics({
    this.id,
    this.extension,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.elementValue,
  });

  factory MedicationKnowledge_PatientCharacteristics.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_PatientCharacteristicsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_PatientCharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_MedicineClassification {
  static Future<MedicationKnowledge_MedicineClassification> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<CodeableConcept> classification,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_MedicineClassification
        newMedicationKnowledge_MedicineClassification =
        new MedicationKnowledge_MedicineClassification(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      classification: classification,
    );
    return newMedicationKnowledge_MedicineClassification;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> classification;

  MedicationKnowledge_MedicineClassification({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.classification,
  });

  factory MedicationKnowledge_MedicineClassification.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_MedicineClassificationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_MedicineClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Packaging {
  static Future<MedicationKnowledge_Packaging> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Quantity quantity,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Packaging newMedicationKnowledge_Packaging =
        new MedicationKnowledge_Packaging(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      quantity: quantity,
    );
    return newMedicationKnowledge_Packaging;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Quantity quantity;

  MedicationKnowledge_Packaging({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.quantity,
  });

  factory MedicationKnowledge_Packaging.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_PackagingFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_PackagingToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
    Element elementValueBase64Binary,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_DrugCharacteristic
        newMedicationKnowledge_DrugCharacteristic =
        new MedicationKnowledge_DrugCharacteristic(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      valueCodeableConcept: valueCodeableConcept,
      valueString: valueString,
      elementValueString: elementValueString,
      valueQuantity: valueQuantity,
      valueBase64Binary: valueBase64Binary,
      elementValueBase64Binary: elementValueBase64Binary,
    );
    return newMedicationKnowledge_DrugCharacteristic;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept valueCodeableConcept;
  String valueString;
  Element elementValueString;
  Quantity valueQuantity;
  String valueBase64Binary;
  Element elementValueBase64Binary;

  MedicationKnowledge_DrugCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.elementValueString,
    this.valueQuantity,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
  });

  factory MedicationKnowledge_DrugCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_DrugCharacteristicFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_DrugCharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Regulatory {
  static Future<MedicationKnowledge_Regulatory> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference regulatoryAuthority,
    List<MedicationKnowledge_Substitution> substitution,
    List<MedicationKnowledge_Schedule> schedule,
    MedicationKnowledge_MaxDispense maxDispense,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Regulatory newMedicationKnowledge_Regulatory =
        new MedicationKnowledge_Regulatory(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      regulatoryAuthority: regulatoryAuthority,
      substitution: substitution,
      schedule: schedule,
      maxDispense: maxDispense,
    );
    return newMedicationKnowledge_Regulatory;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference regulatoryAuthority;
  List<MedicationKnowledge_Substitution> substitution;
  List<MedicationKnowledge_Schedule> schedule;
  MedicationKnowledge_MaxDispense maxDispense;

  MedicationKnowledge_Regulatory({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
  });

  factory MedicationKnowledge_Regulatory.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_RegulatoryFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_RegulatoryToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Substitution {
  static Future<MedicationKnowledge_Substitution> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    bool allowed,
    Element elementAllowed,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Substitution newMedicationKnowledge_Substitution =
        new MedicationKnowledge_Substitution(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      allowed: allowed,
      elementAllowed: elementAllowed,
    );
    return newMedicationKnowledge_Substitution;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  bool allowed;
  Element elementAllowed;

  MedicationKnowledge_Substitution({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.allowed,
    this.elementAllowed,
  });

  factory MedicationKnowledge_Substitution.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_SubstitutionToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Schedule {
  static Future<MedicationKnowledge_Schedule> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept schedule,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Schedule newMedicationKnowledge_Schedule =
        new MedicationKnowledge_Schedule(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      schedule: schedule,
    );
    return newMedicationKnowledge_Schedule;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept schedule;

  MedicationKnowledge_Schedule({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.schedule,
  });

  factory MedicationKnowledge_Schedule.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_ScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_ScheduleToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_MaxDispense {
  static Future<MedicationKnowledge_MaxDispense> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Quantity quantity,
    Duration period,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_MaxDispense newMedicationKnowledge_MaxDispense =
        new MedicationKnowledge_MaxDispense(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      quantity: quantity,
      period: period,
    );
    return newMedicationKnowledge_MaxDispense;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity quantity;
  Duration period;

  MedicationKnowledge_MaxDispense({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.quantity,
    this.period,
  });

  factory MedicationKnowledge_MaxDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_MaxDispenseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationKnowledge_MaxDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicationKnowledge_Kinetics {
  static Future<MedicationKnowledge_Kinetics> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Quantity> areaUnderCurve,
    List<Quantity> lethalDose50,
    Duration halfLifePeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationKnowledge_Kinetics newMedicationKnowledge_Kinetics =
        new MedicationKnowledge_Kinetics(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      areaUnderCurve: areaUnderCurve,
      lethalDose50: lethalDose50,
      halfLifePeriod: halfLifePeriod,
    );
    return newMedicationKnowledge_Kinetics;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Quantity> areaUnderCurve;
  List<Quantity> lethalDose50;
  Duration halfLifePeriod;

  MedicationKnowledge_Kinetics({
    this.id,
    this.extension,
    this.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
  });

  factory MedicationKnowledge_Kinetics.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_KineticsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledge_KineticsToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationKnowledge _$MedicationKnowledgeFromJson(Map<String, dynamic> json) {
  return MedicationKnowledge(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$MedicationKnowledgeToJson(MedicationKnowledge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('manufacturer', instance.manufacturer?.toJson());
  writeNotNull('doseForm', instance.doseForm?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('synonym', instance.synonym);
  writeNotNull('elementSynonym',
      instance.elementSynonym?.map((e) => e?.toJson())?.toList());
  writeNotNull('relatedMedicationKnowledge',
      instance.relatedMedicationKnowledge?.map((e) => e?.toJson())?.toList());
  writeNotNull('associatedMedication',
      instance.associatedMedication?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'productType', instance.productType?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'monograph', instance.monograph?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'ingredient', instance.ingredient?.map((e) => e?.toJson())?.toList());
  writeNotNull('preparationInstruction', instance.preparationInstruction);
  writeNotNull('elementPreparationInstruction',
      instance.elementPreparationInstruction?.toJson());
  writeNotNull('intendedRoute',
      instance.intendedRoute?.map((e) => e?.toJson())?.toList());
  writeNotNull('cost', instance.cost?.map((e) => e?.toJson())?.toList());
  writeNotNull('monitoringProgram',
      instance.monitoringProgram?.map((e) => e?.toJson())?.toList());
  writeNotNull('administrationGuidelines',
      instance.administrationGuidelines?.map((e) => e?.toJson())?.toList());
  writeNotNull('medicineClassification',
      instance.medicineClassification?.map((e) => e?.toJson())?.toList());
  writeNotNull('packaging', instance.packaging?.toJson());
  writeNotNull('drugCharacteristic',
      instance.drugCharacteristic?.map((e) => e?.toJson())?.toList());
  writeNotNull('contraindication',
      instance.contraindication?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'regulatory', instance.regulatory?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'kinetics', instance.kinetics?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    MedicationKnowledge_RelatedMedicationKnowledge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull(
      'reference', instance.reference?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    MedicationKnowledge_Monograph instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('source', instance.source?.toJson());
  return val;
}

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
    MedicationKnowledge_Ingredient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('itemCodeableConcept', instance.itemCodeableConcept?.toJson());
  writeNotNull('itemReference', instance.itemReference?.toJson());
  writeNotNull('isActive', instance.isActive);
  writeNotNull('elementIsActive', instance.elementIsActive?.toJson());
  writeNotNull('strength', instance.strength?.toJson());
  return val;
}

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
    MedicationKnowledge_Cost instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('source', instance.source);
  writeNotNull('elementSource', instance.elementSource?.toJson());
  writeNotNull('cost', instance.cost?.toJson());
  return val;
}

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
    MedicationKnowledge_MonitoringProgram instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  return val;
}

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
    MedicationKnowledge_AdministrationGuidelines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('dosage', instance.dosage?.map((e) => e?.toJson())?.toList());
  writeNotNull('indicationCodeableConcept',
      instance.indicationCodeableConcept?.toJson());
  writeNotNull('indicationReference', instance.indicationReference?.toJson());
  writeNotNull('patientCharacteristics',
      instance.patientCharacteristics?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    MedicationKnowledge_Dosage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('dosage', instance.dosage?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    MedicationKnowledge_PatientCharacteristics instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('characteristicCodeableConcept',
      instance.characteristicCodeableConcept?.toJson());
  writeNotNull(
      'characteristicQuantity', instance.characteristicQuantity?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull(
      'elementValue', instance.elementValue?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    MedicationKnowledge_MedicineClassification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('classification',
      instance.classification?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    MedicationKnowledge_Packaging instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  return val;
}

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
    MedicationKnowledge_DrugCharacteristic instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueBase64Binary', instance.valueBase64Binary);
  writeNotNull(
      'elementValueBase64Binary', instance.elementValueBase64Binary?.toJson());
  return val;
}

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
    MedicationKnowledge_Regulatory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('regulatoryAuthority', instance.regulatoryAuthority?.toJson());
  writeNotNull(
      'substitution', instance.substitution?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'schedule', instance.schedule?.map((e) => e?.toJson())?.toList());
  writeNotNull('maxDispense', instance.maxDispense?.toJson());
  return val;
}

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
    MedicationKnowledge_Substitution instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('allowed', instance.allowed);
  writeNotNull('elementAllowed', instance.elementAllowed?.toJson());
  return val;
}

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
    MedicationKnowledge_Schedule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('schedule', instance.schedule?.toJson());
  return val;
}

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
    MedicationKnowledge_MaxDispense instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

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
    MedicationKnowledge_Kinetics instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('areaUnderCurve',
      instance.areaUnderCurve?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'lethalDose50', instance.lethalDose50?.map((e) => e?.toJson())?.toList());
  writeNotNull('halfLifePeriod', instance.halfLifePeriod?.toJson());
  return val;
}
