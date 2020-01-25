

part 'medicationKnowledge.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicationKnowledge {

  This is a MedicationKnowledge resource resourceType;
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
this.kinetics});

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) => _$MedicationKnowledgeFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationKnowledgeToJson(this);
}