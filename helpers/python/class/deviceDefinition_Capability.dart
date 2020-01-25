

part 'deviceDefinition_Capability.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Capability {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> description;


DeviceDefinition_Capability(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.description});

  factory DeviceDefinition_Capability.fromJson(Map<String, dynamic> json) => _$DeviceDefinition_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_CapabilityToJson(this);
}