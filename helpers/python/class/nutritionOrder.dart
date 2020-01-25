

part 'nutritionOrder.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder {

  This is a NutritionOrder resource resourceType;
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
  List<Identifier> identifier;
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> _instantiatesUri;
  List<String> instantiates;
  List<Element> _instantiates;
  String status;
  Element _status;
  String intent;
  Element _intent;
  Reference patient;
  Reference encounter;
  StringTime dateTime;
  Element _dateTime;
  Reference orderer;
  List<Reference> allergyIntolerance;
  List<CodeableConcept> foodPreferenceModifier;
  List<CodeableConcept> excludeFoodModifier;
  NutritionOrder_OralDiet oralDiet;
  List<NutritionOrder_Supplement> supplement;
  NutritionOrder_EnteralFormula enteralFormula;
  List<Annotation> note;


NutritionOrder(
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
this.identifier,
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.instantiates,
this._instantiates,
this.status,
this._status,
this.intent,
this._intent,
this.patient,
this.encounter,
this.dateTime,
this._dateTime,
this.orderer,
this.allergyIntolerance,
this.foodPreferenceModifier,
this.excludeFoodModifier,
this.oralDiet,
this.supplement,
this.enteralFormula,
this.note});

  factory NutritionOrder.fromJson(Map<String, dynamic> json) => _$NutritionOrderFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrderToJson(this);
}