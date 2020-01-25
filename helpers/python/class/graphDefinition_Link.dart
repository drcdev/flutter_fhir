

part 'graphDefinition_Link.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphDefinition_Link {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  String sliceName;
  Element _sliceName;
  int min;
  Element _min;
  String max;
  Element _max;
  String description;
  Element _description;
  List<GraphDefinition_Target> target;


GraphDefinition_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.sliceName,
this._sliceName,
this.min,
this._min,
this.max,
this._max,
this.description,
this._description,
this.target});

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) => _$GraphDefinition_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$GraphDefinition_LinkToJson(this);
}