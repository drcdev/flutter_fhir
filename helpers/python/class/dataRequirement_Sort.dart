

part 'dataRequirement_Sort.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement_Sort {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  enum: ascendingdescending direction;
  Element _direction;


DataRequirement_Sort(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.direction,
this._direction});

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) => _$DataRequirement_SortFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_SortToJson(this);
}