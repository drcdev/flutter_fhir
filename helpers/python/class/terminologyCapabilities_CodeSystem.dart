

part 'terminologyCapabilities_CodeSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_CodeSystem {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uri;
  List<TerminologyCapabilities_Version> version;
  bool subsumption;
  Element _subsumption;


TerminologyCapabilities_CodeSystem(
      {this.id,
this.extension,
this.modifierExtension,
this.uri,
this.version,
this.subsumption,
this._subsumption});

  factory TerminologyCapabilities_CodeSystem.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_CodeSystemFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_CodeSystemToJson(this);
}