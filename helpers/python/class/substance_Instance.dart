

part 'substance_Instance.g.dart';

@JsonSerializable(explicitToJson: true)
class Substance_Instance {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  StringTime expiry;
  Element _expiry;
  Quantity quantity;


Substance_Instance(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.expiry,
this._expiry,
this.quantity});

  factory Substance_Instance.fromJson(Map<String, dynamic> json) => _$Substance_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$Substance_InstanceToJson(this);
}