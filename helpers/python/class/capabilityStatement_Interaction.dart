

part 'capabilityStatement_Interaction.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: readvreadupdatepatchdeletehistory-instancehistory-typecreatesearch-type code;
  Element _code;
  String documentation;
  Element _documentation;


CapabilityStatement_Interaction(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.documentation,
this._documentation});

  factory CapabilityStatement_Interaction.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_InteractionFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_InteractionToJson(this);
}