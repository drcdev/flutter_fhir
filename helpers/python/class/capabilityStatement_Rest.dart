

part 'capabilityStatement_Rest.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Rest {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: clientserver mode;
  Element _mode;
  String documentation;
  Element _documentation;
  CapabilityStatement_Security security;
  List<CapabilityStatement_Resource> resource;
  List<CapabilityStatement_Interaction1> interaction;
  List<CapabilityStatement_SearchParam> searchParam;
  List<CapabilityStatement_Operation> operation;
  List<String> compartment;


CapabilityStatement_Rest(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.documentation,
this._documentation,
this.security,
this.resource,
this.interaction,
this.searchParam,
this.operation,
this.compartment});

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_RestFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_RestToJson(this);
}