

part 'chargeItem_Performer.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItem_Performer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;


ChargeItem_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor});

  factory ChargeItem_Performer.fromJson(Map<String, dynamic> json) => _$ChargeItem_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItem_PerformerToJson(this);
}