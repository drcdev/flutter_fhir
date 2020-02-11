import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 28)
class DataRequirement {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  The type of the required data, specified as the type name of a
  // resource. For profiles, this value is set to the type of the base
  // resource of the profile.
  @HiveField(2)
  String type;

  //  Extensions for type
  @HiveField(3)
  Element elementType;

  //  The profile of the required data, specified as the uri of the profile
  // definition.
  @HiveField(4)
  List<String> profile;

  //  The intended subjects of the data requirement. If this element is not
  // provided, a Patient subject is assumed.
  @HiveField(5)
  CodeableConcept subjectCodeableConcept;

  //  The intended subjects of the data requirement. If this element is not
  // provided, a Patient subject is assumed.
  @HiveField(6)
  Reference subjectReference;

  //  Indicates that specific elements of the type are referenced by the
  // knowledge module and must be supported by the consumer in order to
  // obtain an effective evaluation. This does not mean that a value is
  // required for this element, only that the consuming system must
  // understand the element and be able to provide values for it if they are
  // available.  The value of mustSupport SHALL be a FHIRPath resolveable on
  // the type of the DataRequirement. The path SHALL consist only of
  // identifiers, constant indexers, and .resolve() (see the [Simple
  // FHIRPath Profile](fhirpath.html#simple) for full details).
  @HiveField(7)
  List<String> mustSupport;

  //  Extensions for mustSupport
  @HiveField(8)
  List<Element> elementMustSupport;

  //  Code filters specify additional constraints on the data, specifying
  // the value set of interest for a particular element of the data. Each
  // code filter defines an additional constraint on the data, i.e. code
  // filters are AND'ed, not OR'ed.
  @HiveField(9)
  List<DataRequirement_CodeFilter> codeFilter;

  //  Date filters specify additional constraints on the data in terms of
  // the applicable date range for specific elements. Each date filter
  // specifies an additional constraint on the data, i.e. date filters are
  // AND'ed, not OR'ed.
  @HiveField(10)
  List<DataRequirement_DateFilter> dateFilter;

  //  Specifies a maximum number of results that are required (uses the
  // _count search parameter).
  @HiveField(11)
  int limit;

  //  Extensions for limit
  @HiveField(12)
  Element elementLimit;

  //  Specifies the order of the results to be returned.
  @HiveField(13)
  List<DataRequirement_Sort> sort;

DataRequirement(
  {this.id,
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
    this.sort
    });

  factory DataRequirement.fromJson(Map<String, dynamic> json) => _$DataRequirementFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_CodeFilter {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The code-valued attribute of the filter. The specified path SHALL be a
  // FHIRPath resolveable on the specified type of the DataRequirement, and
  // SHALL consist only of identifiers, constant indexers, and .resolve().
  // The path is allowed to contain qualifiers (.) to traverse sub-elements,
  // as well as indexers ([x]) to traverse multiple-cardinality sub-elements
  // (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full
  // details). Note that the index must be an integer constant. The path
  // must resolve to an element of type code, Coding, or CodeableConcept.
  String path;

  //  Extensions for path
  Element elementPath;

  //  A token parameter that refers to a search parameter defined on the
  // specified type of the DataRequirement, and which searches on elements
  // of type code, Coding, or CodeableConcept.
  String searchParam;

  //  Extensions for searchParam
  Element elementSearchParam;

  //  The valueset for the code filter. The valueSet and code elements are
  // additive. If valueSet is specified, the filter will return only those
  // data items for which the value of the code-valued element specified in
  // the path is a member of the specified valueset.
  String valueSet;

  //  The codes for the code filter. If values are given, the filter will
  // return only those data items for which the code-valued attribute
  // specified by the path has a value that is one of the specified codes.
  // If codes are specified in addition to a value set, the filter returns
  // items matching a code in the value set or one of the specified codes.
  List<Coding> code;

DataRequirement_CodeFilter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.searchParam,
    this.elementSearchParam,
    this.valueSet,
    this.code
    });

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_CodeFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_CodeFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_DateFilter {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The date-valued attribute of the filter. The specified path SHALL be a
  // FHIRPath resolveable on the specified type of the DataRequirement, and
  // SHALL consist only of identifiers, constant indexers, and .resolve().
  // The path is allowed to contain qualifiers (.) to traverse sub-elements,
  // as well as indexers ([x]) to traverse multiple-cardinality sub-elements
  // (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full
  // details). Note that the index must be an integer constant. The path
  // must resolve to an element of type date, dateTime, Period, Schedule, or
  // Timing.
  String path;

  //  Extensions for path
  Element elementPath;

  //  A date parameter that refers to a search parameter defined on the
  // specified type of the DataRequirement, and which searches on elements
  // of type date, dateTime, Period, Schedule, or Timing.
  String searchParam;

  //  Extensions for searchParam
  Element elementSearchParam;

  //  The value of the filter. If period is specified, the filter will
  // return only those data items that fall within the bounds determined by
  // the Period, inclusive of the period boundaries. If dateTime is
  // specified, the filter will return only those data items that are equal
  // to the specified dateTime. If a Duration is specified, the filter will
  // return only those data items that fall within Duration before now.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  The value of the filter. If period is specified, the filter will
  // return only those data items that fall within the bounds determined by
  // the Period, inclusive of the period boundaries. If dateTime is
  // specified, the filter will return only those data items that are equal
  // to the specified dateTime. If a Duration is specified, the filter will
  // return only those data items that fall within Duration before now.
  Period valuePeriod;

  //  The value of the filter. If period is specified, the filter will
  // return only those data items that fall within the bounds determined by
  // the Period, inclusive of the period boundaries. If dateTime is
  // specified, the filter will return only those data items that are equal
  // to the specified dateTime. If a Duration is specified, the filter will
  // return only those data items that fall within Duration before now.
  Duration valueDuration;

DataRequirement_DateFilter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.searchParam,
    this.elementSearchParam,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valuePeriod,
    this.valueDuration
    });

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_DateFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_DateFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_Sort {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The attribute of the sort. The specified path must be resolvable from
  // the type of the required data. The path is allowed to contain
  // qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to
  // traverse multiple-cardinality sub-elements. Note that the index must be
  // an integer constant.
  String path;

  //  Extensions for path
  Element elementPath;

  //  The direction of the sort, ascending or descending.
  String direction; // <code> enum: ascending/descending;

  //  Extensions for direction
  Element elementDirection;

DataRequirement_Sort(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.direction,
    this.elementDirection
    });

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) => _$DataRequirement_SortFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_SortToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DataRequirementAdapter extends TypeAdapter<DataRequirement> {
  @override
  final typeId = 28;

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
