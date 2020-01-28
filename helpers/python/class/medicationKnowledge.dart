part 'medicationKnowledge.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge {

MedicationKnowledge resourceType;
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
CodeableConcept code;
String status;
Element _status;
Reference manufacturer;
CodeableConcept doseForm;
Quantity amount;
List<String> synonym;
List<Element> _synonym;
List<MedicationKnowledge_RelatedMedicationKnowledge> relatedMedicationKnowledge;
List<Reference> associatedMedication;
List<CodeableConcept> productType;
List<MedicationKnowledge_Monograph> monograph;
List<MedicationKnowledge_Ingredient> ingredient;
String preparationInstruction;
Element _preparationInstruction;
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

MedicationKnowledge(
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
      this.code,
      this.status,
      this._status,
      this.manufacturer,
      this.doseForm,
      this.amount,
      this.synonym,
      this._synonym,
      this.relatedMedicationKnowledge,
      this.associatedMedication,
      this.productType,
      this.monograph,
      this.ingredient,
      this.preparationInstruction,
      this._preparationInstruction,
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

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_RelatedMedicationKnowledge {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Reference> reference;

MedicationKnowledge_RelatedMedicationKnowledge(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.reference,
      });

  factory MedicationKnowledge_RelatedMedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Monograph {

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
      this.source,
      });

  factory MedicationKnowledge_Monograph.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonographFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MonographToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Ingredient {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept itemCodeableConcept;
Reference itemReference;
bool isActive;
Element _isActive;
Ratio strength;

MedicationKnowledge_Ingredient(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.isActive,
      this._isActive,
      this.strength,
      });

  factory MedicationKnowledge_Ingredient.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_IngredientFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Cost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String source;
Element _source;
Money cost;

MedicationKnowledge_Cost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.source,
      this._source,
      this.cost,
      });

  factory MedicationKnowledge_Cost.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_CostFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_CostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MonitoringProgram {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String name;
Element _name;

MedicationKnowledge_MonitoringProgram(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.name,
      this._name,
      });

  factory MedicationKnowledge_MonitoringProgram.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MonitoringProgramFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MonitoringProgramToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_AdministrationGuidelines {

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
      this.patientCharacteristics,
      });

  factory MedicationKnowledge_AdministrationGuidelines.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_AdministrationGuidelinesFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_AdministrationGuidelinesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Dosage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Dosage> dosage;

MedicationKnowledge_Dosage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.dosage,
      });

  factory MedicationKnowledge_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DosageFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_DosageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_PatientCharacteristics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept characteristicCodeableConcept;
Quantity characteristicQuantity;
List<String> value;
List<Element> _value;

MedicationKnowledge_PatientCharacteristics(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.characteristicCodeableConcept,
      this.characteristicQuantity,
      this.value,
      this._value,
      });

  factory MedicationKnowledge_PatientCharacteristics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PatientCharacteristicsFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_PatientCharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MedicineClassification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<CodeableConcept> classification;

MedicationKnowledge_MedicineClassification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.classification,
      });

  factory MedicationKnowledge_MedicineClassification.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MedicineClassificationFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MedicineClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Packaging {

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
      this.quantity,
      });

  factory MedicationKnowledge_Packaging.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_PackagingFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_PackagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_DrugCharacteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept valueCodeableConcept;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
Quantity valueQuantity;
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _valueBase64Binary;

MedicationKnowledge_DrugCharacteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueCodeableConcept,
      this.valueString,
      this._valueString,
      this.valueQuantity,
      this.valueBase64Binary,
      this._valueBase64Binary,
      });

  factory MedicationKnowledge_DrugCharacteristic.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_DrugCharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_DrugCharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Regulatory {

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
      this.regulatoryAuthority,
      this.substitution,
      this.schedule,
      this.maxDispense,
      });

  factory MedicationKnowledge_Regulatory.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_RegulatoryFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_RegulatoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Substitution {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
bool allowed;
Element _allowed;

MedicationKnowledge_Substitution(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.allowed,
      this._allowed,
      });

  factory MedicationKnowledge_Substitution.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_SubstitutionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Schedule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept schedule;

MedicationKnowledge_Schedule(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.schedule,
      });

  factory MedicationKnowledge_Schedule.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_ScheduleFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_ScheduleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_MaxDispense {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
Duration period;

MedicationKnowledge_MaxDispense(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.period,
      });

  factory MedicationKnowledge_MaxDispense.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_MaxDispenseFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_MaxDispenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge_Kinetics {

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
      this.halfLifePeriod,
      });

  factory MedicationKnowledge_Kinetics.fromJson(Map<String, dynamic> json) => _$MedicationKnowledge_KineticsFromJson(json);
  Map<String, dynamic> toJson() _$MedicationKnowledge_KineticsToJson(this);
}

