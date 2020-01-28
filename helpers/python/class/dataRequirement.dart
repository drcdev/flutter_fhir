part 'dataRequirement.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement {

String id;
List<Extension> extension;
String type;
Element _type;
List<String> profile;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
List<String> mustSupport;
List<Element> _mustSupport;
List<DataRequirement_CodeFilter> codeFilter;
List<DataRequirement_DateFilter> dateFilter;
int limit;
Element _limit;
List<DataRequirement_Sort> sort;

DataRequirement(
  {this.id,
      this.extension,
      this.type,
      this._type,
      this.profile,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.mustSupport,
      this._mustSupport,
      this.codeFilter,
      this.dateFilter,
      this.limit,
      this._limit,
      this.sort,
      });

  factory DataRequirement.fromJson(Map<String, dynamic> json) => _$DataRequirementFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirementToJson(this);
}

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
      this.code,
      });

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_CodeFilterFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirement_CodeFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_DateFilter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String searchParam;
Element _searchParam;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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
      this.valueDuration,
      });

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_DateFilterFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirement_DateFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_Sort {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String path;
Element _path;
String direction; // <code> enum: ascending/descending;
Element _direction;

DataRequirement_Sort(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.path,
      this._path,
      this.direction,
      this._direction,
      });

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) => _$DataRequirement_SortFromJson(json);
  Map<String, dynamic> toJson() _$DataRequirement_SortToJson(this);
}

