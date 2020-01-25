

part 'deviceDefinition_Material.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Material {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept substance;
  bool alternate;
  Element _alternate;
  bool allergenicIndicator;
  Element _allergenicIndicator;


DeviceDefinition_Material(
      {this.id,
this.extension,
this.modifierExtension,
this.substance,
this.alternate,
this._alternate,
this.allergenicIndicator,
this._allergenicIndicator});

  factory DeviceDefinition_Material.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_MaterialFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_MaterialToJson(this);
}