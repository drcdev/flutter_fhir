

part 'device_Specialization.g.dart';

@JsonSerializable(explicitToJson: true)
class Device_Specialization {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept systemType;
  String version;
  Element _version;


Device_Specialization(
      {this.id,
this.extension,
this.modifierExtension,
this.systemType,
this.version,
this._version});

  factory Device_Specialization.fromJson(Map<String, dynamic> json) => _$Device_SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$Device_SpecializationToJson(this);
}