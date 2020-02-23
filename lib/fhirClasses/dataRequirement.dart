import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  String type;
  @HiveField(3)
  Element elementType;
  @HiveField(4)
  List<String> profile;
  @HiveField(5)
  CodeableConcept subjectCodeableConcept;
  @HiveField(6)
  Reference subjectReference;
  @HiveField(7)
  List<String> mustSupport;
  @HiveField(8)
  List<Element> elementMustSupport;
  @HiveField(9)
  List<DataRequirement_CodeFilter> codeFilter;
  @HiveField(10)
  List<DataRequirement_DateFilter> dateFilter;
  @HiveField(11)
  int limit;
  @HiveField(12)
  Element elementLimit;
  @HiveField(13)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String path;
  @HiveField(4)
  Element elementPath;
  @HiveField(5)
  String searchParam;
  @HiveField(6)
  Element elementSearchParam;
  @HiveField(7)
  String valueSet;
  @HiveField(8)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String path;
  @HiveField(4)
  Element elementPath;
  @HiveField(5)
  String searchParam;
  @HiveField(6)
  Element elementSearchParam;
  @HiveField(7)
  String valueDateTime;
  @HiveField(8)
  Element elementValueDateTime;
  @HiveField(9)
  Period valuePeriod;
  @HiveField(10)
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String path;
  @HiveField(4)
  Element elementPath;
  @HiveField(5)
  String direction;
  @HiveField(6)
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

Map<String, dynamic> _$DataRequirementToJson(DataRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('profile', instance.profile);
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull('mustSupport', instance.mustSupport);
  writeNotNull('elementMustSupport',
      instance.elementMustSupport?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'codeFilter', instance.codeFilter?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'dateFilter', instance.dateFilter?.map((e) => e?.toJson())?.toList());
  writeNotNull('limit', instance.limit);
  writeNotNull('elementLimit', instance.elementLimit?.toJson());
  writeNotNull('sort', instance.sort?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    DataRequirement_CodeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('searchParam', instance.searchParam);
  writeNotNull('elementSearchParam', instance.elementSearchParam?.toJson());
  writeNotNull('valueSet', instance.valueSet);
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    DataRequirement_DateFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('searchParam', instance.searchParam);
  writeNotNull('elementSearchParam', instance.elementSearchParam?.toJson());
  writeNotNull('valueDateTime', instance.valueDateTime);
  writeNotNull('elementValueDateTime', instance.elementValueDateTime?.toJson());
  writeNotNull('valuePeriod', instance.valuePeriod?.toJson());
  writeNotNull('valueDuration', instance.valueDuration?.toJson());
  return val;
}

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
    DataRequirement_Sort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('path', instance.path);
  writeNotNull('elementPath', instance.elementPath?.toJson());
  writeNotNull('direction', instance.direction);
  writeNotNull('elementDirection', instance.elementDirection?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DataRequirementAdapter extends TypeAdapter<DataRequirement> {
  @override
  DataRequirement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataRequirement(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      type: fields[2] as String,
      elementType: fields[3] as Element,
      profile: (fields[4] as List)?.cast<String>(),
      subjectCodeableConcept: fields[5] as CodeableConcept,
      subjectReference: fields[6] as Reference,
      mustSupport: (fields[7] as List)?.cast<String>(),
      elementMustSupport: (fields[8] as List)?.cast<Element>(),
      codeFilter: (fields[9] as List)?.cast<DataRequirement_CodeFilter>(),
      dateFilter: (fields[10] as List)?.cast<DataRequirement_DateFilter>(),
      limit: fields[11] as int,
      elementLimit: fields[12] as Element,
      sort: (fields[13] as List)?.cast<DataRequirement_Sort>(),
    );
  }

  @override
  void write(BinaryWriter writer, DataRequirement obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.elementType)
      ..writeByte(4)
      ..write(obj.profile)
      ..writeByte(5)
      ..write(obj.subjectCodeableConcept)
      ..writeByte(6)
      ..write(obj.subjectReference)
      ..writeByte(7)
      ..write(obj.mustSupport)
      ..writeByte(8)
      ..write(obj.elementMustSupport)
      ..writeByte(9)
      ..write(obj.codeFilter)
      ..writeByte(10)
      ..write(obj.dateFilter)
      ..writeByte(11)
      ..write(obj.limit)
      ..writeByte(12)
      ..write(obj.elementLimit)
      ..writeByte(13)
      ..write(obj.sort);
  }
}

class DataRequirement_CodeFilterAdapter
    extends TypeAdapter<DataRequirement_CodeFilter> {
  @override
  DataRequirement_CodeFilter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataRequirement_CodeFilter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      searchParam: fields[5] as String,
      elementSearchParam: fields[6] as Element,
      valueSet: fields[7] as String,
      code: (fields[8] as List)?.cast<Coding>(),
    );
  }

  @override
  void write(BinaryWriter writer, DataRequirement_CodeFilter obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.searchParam)
      ..writeByte(6)
      ..write(obj.elementSearchParam)
      ..writeByte(7)
      ..write(obj.valueSet)
      ..writeByte(8)
      ..write(obj.code);
  }
}

class DataRequirement_DateFilterAdapter
    extends TypeAdapter<DataRequirement_DateFilter> {
  @override
  DataRequirement_DateFilter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataRequirement_DateFilter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      searchParam: fields[5] as String,
      elementSearchParam: fields[6] as Element,
      valueDateTime: fields[7] as String,
      elementValueDateTime: fields[8] as Element,
      valuePeriod: fields[9] as Period,
      valueDuration: fields[10] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, DataRequirement_DateFilter obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.searchParam)
      ..writeByte(6)
      ..write(obj.elementSearchParam)
      ..writeByte(7)
      ..write(obj.valueDateTime)
      ..writeByte(8)
      ..write(obj.elementValueDateTime)
      ..writeByte(9)
      ..write(obj.valuePeriod)
      ..writeByte(10)
      ..write(obj.valueDuration);
  }
}

class DataRequirement_SortAdapter extends TypeAdapter<DataRequirement_Sort> {
  @override
  DataRequirement_Sort read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataRequirement_Sort(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      direction: fields[5] as String,
      elementDirection: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, DataRequirement_Sort obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.direction)
      ..writeByte(6)
      ..write(obj.elementDirection);
  }
}
