

part 'nutritionOrder_Administration.g.dart';

@JsonSerializable(explicitToJson: true)
class NutritionOrder_Administration {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Timing schedule;
  Quantity quantity;
  Quantity rateQuantity;
  Ratio rateRatio;


NutritionOrder_Administration(
      {this.id,
this.extension,
this.modifierExtension,
this.schedule,
this.quantity,
this.rateQuantity,
this.rateRatio});

  factory NutritionOrder_Administration.fromJson(Map<String, dynamic> json) => _$NutritionOrder_AdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionOrder_AdministrationToJson(this);
}