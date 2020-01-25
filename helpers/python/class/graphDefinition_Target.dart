

part 'graphDefinition_Target.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Target {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element _type;
  String params;
  Element _params;
  String profile;
  List<GraphDefinition_Compartment> compartment;
  List<GraphDefinition_Link> link;


GraphDefinition_Target(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.params,
this._params,
this.profile,
this.compartment,
this.link});

  factory GraphDefinition_Target.fromJson(Map<String, dynamic> json) => _$GraphDefinition_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_TargetToJson(this);
}