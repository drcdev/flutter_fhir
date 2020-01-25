

part 'dataRequirement_DateFilter.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement_DateFilter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element _path;
  String searchParam;
  Element _searchParam;
  String valueDateTime;
  Element _valueDateTime;
  Period valuePeriod;
  Duration valueDuration;


DataRequirement_DateFilter(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.searchParam,
this._searchParam,
this.valueDateTime,
this._valueDateTime,
this.valuePeriod,
this.valueDuration});

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_DateFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_DateFilterToJson(this);
}