import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement {
  static Future<DataRequirement> newInstance({
    String id,
    List<Extension> extension,
    String type,
    Element elementType,
    List<String> profile,
    CodeableConcept subjectCodeableConcept,
    Reference subjectReference,
    List<String> mustSupport,
    List<Element> elementMustSupport,
    List<DataRequirement_CodeFilter> codeFilter,
    List<DataRequirement_DateFilter> dateFilter,
    int limit,
    Element elementLimit,
    List<DataRequirement_Sort> sort,
  }) async {
    var fhirDb = new DatabaseHelper();
    DataRequirement newDataRequirement = new DataRequirement(
      id: id,
      extension: extension,
      type: type,
      elementType: elementType,
      profile: profile,
      subjectCodeableConcept: subjectCodeableConcept,
      subjectReference: subjectReference,
      mustSupport: mustSupport,
      elementMustSupport: elementMustSupport,
      codeFilter: codeFilter,
      dateFilter: dateFilter,
      limit: limit,
      elementLimit: elementLimit,
      sort: sort,
    );
    return newDataRequirement;
  }

  String id;
  List<Extension> extension;
  String type;
  Element elementType;
  List<String> profile;
  CodeableConcept subjectCodeableConcept;
  Reference subjectReference;
  List<String> mustSupport;
  List<Element> elementMustSupport;
  List<DataRequirement_CodeFilter> codeFilter;
  List<DataRequirement_DateFilter> dateFilter;
  int limit;
  Element elementLimit;
  List<DataRequirement_Sort> sort;

  DataRequirement({
    this.id,
    this.extension,
    this.type,
    this.elementType,
    this.profile,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.elementMustSupport,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.elementLimit,
    this.sort,
  });

  factory DataRequirement.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_CodeFilter {
  static Future<DataRequirement_CodeFilter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    String searchParam,
    Element elementSearchParam,
    String valueSet,
    List<Coding> code,
  }) async {
    var fhirDb = new DatabaseHelper();
    DataRequirement_CodeFilter newDataRequirement_CodeFilter =
        new DataRequirement_CodeFilter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      searchParam: searchParam,
      elementSearchParam: elementSearchParam,
      valueSet: valueSet,
      code: code,
    );
    return newDataRequirement_CodeFilter;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  String searchParam;
  Element elementSearchParam;
  String valueSet;
  List<Coding> code;

  DataRequirement_CodeFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.searchParam,
    this.elementSearchParam,
    this.valueSet,
    this.code,
  });

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_CodeFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_CodeFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_DateFilter {
  static Future<DataRequirement_DateFilter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    String searchParam,
    Element elementSearchParam,
    String valueDateTime,
    Element elementValueDateTime,
    Period valuePeriod,
    Duration valueDuration,
  }) async {
    var fhirDb = new DatabaseHelper();
    DataRequirement_DateFilter newDataRequirement_DateFilter =
        new DataRequirement_DateFilter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      searchParam: searchParam,
      elementSearchParam: elementSearchParam,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valuePeriod: valuePeriod,
      valueDuration: valueDuration,
    );
    return newDataRequirement_DateFilter;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  String searchParam;
  Element elementSearchParam;
  String valueDateTime;
  Element elementValueDateTime;
  Period valuePeriod;
  Duration valueDuration;

  DataRequirement_DateFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.searchParam,
    this.elementSearchParam,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valuePeriod,
    this.valueDuration,
  });

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_DateFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_DateFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_Sort {
  static Future<DataRequirement_Sort> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    String direction,
    Element elementDirection,
  }) async {
    var fhirDb = new DatabaseHelper();
    DataRequirement_Sort newDataRequirement_Sort = new DataRequirement_Sort(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      direction: direction,
      elementDirection: elementDirection,
    );
    return newDataRequirement_Sort;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  String direction;
  Element elementDirection;

  DataRequirement_Sort({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.direction,
    this.elementDirection,
  });

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_SortFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_SortToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRequirement _$DataRequirementFromJson(Map<String, dynamic> json) {
  return DataRequirement(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    subjectCodeableConcept: json['subjectCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['subjectCodeableConcept'] as Map<String, dynamic>),
    subjectReference: json['subjectReference'] == null
        ? null
        : Reference.fromJson(json['subjectReference'] as Map<String, dynamic>),
    mustSupport:
        (json['mustSupport'] as List)?.map((e) => e as String)?.toList(),
    elementMustSupport: (json['elementMustSupport'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    codeFilter: (json['codeFilter'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement_CodeFilter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dateFilter: (json['dateFilter'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement_DateFilter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    limit: json['limit'] as int,
    elementLimit: json['elementLimit'] == null
        ? null
        : Element.fromJson(json['elementLimit'] as Map<String, dynamic>),
    sort: (json['sort'] as List)
        ?.map((e) => e == null
            ? null
            : DataRequirement_Sort.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataRequirementToJson(DataRequirement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'profile': instance.profile,
      'subjectCodeableConcept': instance.subjectCodeableConcept?.toJson(),
      'subjectReference': instance.subjectReference?.toJson(),
      'mustSupport': instance.mustSupport,
      'elementMustSupport':
          instance.elementMustSupport?.map((e) => e?.toJson())?.toList(),
      'codeFilter': instance.codeFilter?.map((e) => e?.toJson())?.toList(),
      'dateFilter': instance.dateFilter?.map((e) => e?.toJson())?.toList(),
      'limit': instance.limit,
      'elementLimit': instance.elementLimit?.toJson(),
      'sort': instance.sort?.map((e) => e?.toJson())?.toList(),
    };

DataRequirement_CodeFilter _$DataRequirement_CodeFilterFromJson(
    Map<String, dynamic> json) {
  return DataRequirement_CodeFilter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    searchParam: json['searchParam'] as String,
    elementSearchParam: json['elementSearchParam'] == null
        ? null
        : Element.fromJson(json['elementSearchParam'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataRequirement_CodeFilterToJson(
        DataRequirement_CodeFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'searchParam': instance.searchParam,
      'elementSearchParam': instance.elementSearchParam?.toJson(),
      'valueSet': instance.valueSet,
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
    };

DataRequirement_DateFilter _$DataRequirement_DateFilterFromJson(
    Map<String, dynamic> json) {
  return DataRequirement_DateFilter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    searchParam: json['searchParam'] as String,
    elementSearchParam: json['elementSearchParam'] == null
        ? null
        : Element.fromJson(json['elementSearchParam'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'] == null
        ? null
        : Duration.fromJson(json['valueDuration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataRequirement_DateFilterToJson(
        DataRequirement_DateFilter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'searchParam': instance.searchParam,
      'elementSearchParam': instance.elementSearchParam?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueDuration': instance.valueDuration?.toJson(),
    };

DataRequirement_Sort _$DataRequirement_SortFromJson(Map<String, dynamic> json) {
  return DataRequirement_Sort(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    direction: json['direction'] as String,
    elementDirection: json['elementDirection'] == null
        ? null
        : Element.fromJson(json['elementDirection'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataRequirement_SortToJson(
        DataRequirement_Sort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'direction': instance.direction,
      'elementDirection': instance.elementDirection?.toJson(),
    };
