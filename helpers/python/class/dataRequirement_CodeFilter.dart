

part 'dataRequirement_CodeFilter.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement_CodeFilter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  String searchParam;
  Element _searchParam;
  String valueSet;
  List<Coding> code;


DataRequirement_CodeFilter(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.searchParam,
this._searchParam,
this.valueSet,
this.code});

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_CodeFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_CodeFilterToJson(this);
}