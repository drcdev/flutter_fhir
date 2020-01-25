

part 'nutritionOrder_EnteralFormula.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder_EnteralFormula {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept baseFormulaType;
  String baseFormulaProductName;
  Element _baseFormulaProductName;
  CodeableConcept additiveType;
  String additiveProductName;
  Element _additiveProductName;
  Quantity caloricDensity;
  CodeableConcept routeofAdministration;
  List<NutritionOrder_Administration> administration;
  Quantity maxVolumeToDeliver;
  String administrationInstruction;
  Element _administrationInstruction;


NutritionOrder_EnteralFormula(
      {this.id,
this.extension,
this.modifierExtension,
this.baseFormulaType,
this.baseFormulaProductName,
this._baseFormulaProductName,
this.additiveType,
this.additiveProductName,
this._additiveProductName,
this.caloricDensity,
this.routeofAdministration,
this.administration,
this.maxVolumeToDeliver,
this.administrationInstruction,
this._administrationInstruction});

  factory NutritionOrder_EnteralFormula.fromJson(Map<String, dynamic> json) => _$NutritionOrder_EnteralFormulaFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_EnteralFormulaToJson(this);
}