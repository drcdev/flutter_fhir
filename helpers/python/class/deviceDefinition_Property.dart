

part 'deviceDefinition_Property.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Property {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Quantity> valueQuantity;
  List<CodeableConcept> valueCode;


DeviceDefinition_Property(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueQuantity,
this.valueCode});

  factory DeviceDefinition_Property.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_PropertyToJson(this);
}