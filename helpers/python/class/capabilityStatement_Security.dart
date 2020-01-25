

part 'capabilityStatement_Security.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Security {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool cors;
  Element _cors;
  List<CodeableConcept> service;
  String description;
  Element _description;


CapabilityStatement_Security(
      {this.id,
this.extension,
this.modifierExtension,
this.cors,
this._cors,
this.service,
this.description,
this._description});

  factory CapabilityStatement_Security.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SecurityFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SecurityToJson(this);
}