

part 'capabilityStatement_Operation.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Operation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String definition;
  String documentation;
  Element _documentation;


CapabilityStatement_Operation(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.definition,
this.documentation,
this._documentation});

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_OperationToJson(this);
}