

part 'elementDefinition_Base.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Base {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  int min;
  Element _min;
  String max;
  Element _max;


ElementDefinition_Base(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.min,
this._min,
this.max,
this._max});

  factory ElementDefinition_Base.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BaseFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BaseToJson(this);
}