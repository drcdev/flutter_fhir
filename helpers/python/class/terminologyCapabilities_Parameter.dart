

part 'terminologyCapabilities_Parameter.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Parameter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String documentation;
  Element _documentation;


TerminologyCapabilities_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.documentation,
this._documentation});

  factory TerminologyCapabilities_Parameter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ParameterToJson(this);
}