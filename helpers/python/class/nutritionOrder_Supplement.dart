

part 'nutritionOrder_Supplement.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Supplement {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String productName;
  Element _productName;
  List<Timing> schedule;
  Quantity quantity;
  String instruction;
  Element _instruction;


NutritionOrder_Supplement(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.productName,
this._productName,
this.schedule,
this.quantity,
this.instruction,
this._instruction});

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) => _$NutritionOrder_SupplementFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_SupplementToJson(this);
}