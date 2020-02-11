import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 113)
class Group {

	static Future<Group> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		bool active,
		Element elementActive,
		String type,
		Element elementType,
		bool actual,
		Element elementActual,
		CodeableConcept code,
		String name,
		Element elementName,
		int quantity,
		Element elementQuantity,
		Reference managingEntity,
		List<Group_Characteristic> characteristic,
		List<Group_Member> member}) async {
	 return Group(
			id: await newEntry('Group'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			active: active,
			elementActive: elementActive,
			type: type,
			elementType: elementType,
			actual: actual,
			elementActual: elementActual,
			code: code,
			name: name,
			elementName: elementName,
			quantity: quantity,
			elementQuantity: elementQuantity,
			managingEntity: managingEntity,
			characteristic: characteristic,
			member: member);
	}

  @HiveField(0)
  final String resourceType= 'Group';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  bool active;
  @HiveField(13)
  Element elementActive;
  @HiveField(14)
  String type; // <code> enum: person/animal/practitioner/device/medication/substance;
  @HiveField(15)
  Element elementType;
  @HiveField(16)
  bool actual;
  @HiveField(17)
  Element elementActual;
  @HiveField(18)
  CodeableConcept code;
  @HiveField(19)
  String name;
  @HiveField(20)
  Element elementName;
  @HiveField(21)
  int quantity;
  @HiveField(22)
  Element elementQuantity;
  @HiveField(23)
  Reference managingEntity;
  @HiveField(24)
  List<Group_Characteristic> characteristic;
  @HiveField(25)
  List<Group_Member> member;

Group(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.elementActive,
    this.type,
    this.elementType,
    this.actual,
    this.elementActual,
    this.code,
    this.name,
    this.elementName,
    this.quantity,
    this.elementQuantity,
    this.managingEntity,
    this.characteristic,
    this.member
    });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Characteristic {

	static Future<Group_Characteristic> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		CodeableConcept valueCodeableConcept,
		bool valueBoolean,
		Element elementValueBoolean,
		Quantity valueQuantity,
		Range valueRange,
		Reference valueReference,
		bool exclude,
		Element elementExclude,
		Period period}) async {
	 return Group_Characteristic(
			id: await newEntry('Group_Characteristic'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			valueCodeableConcept: valueCodeableConcept,
			valueBoolean: valueBoolean,
			elementValueBoolean: elementValueBoolean,
			valueQuantity: valueQuantity,
			valueRange: valueRange,
			valueReference: valueReference,
			exclude: exclude,
			elementExclude: elementExclude,
			period: period);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept valueCodeableConcept;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  Quantity valueQuantity;
  Range valueRange;
  Reference valueReference;
  bool exclude;
  Element elementExclude;
  Period period;

Group_Characteristic(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    this.exclude,
    this.elementExclude,
    this.period
    });

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) => _$Group_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$Group_CharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Member {

	static Future<Group_Member> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference entity,
		Period period,
		bool inactive,
		Element elementInactive}) async {
	 return Group_Member(
			id: await newEntry('Group_Member'),
			extension: extension,
			modifierExtension: modifierExtension,
			entity: entity,
			period: period,
			inactive: inactive,
			elementInactive: elementInactive);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference entity;
  Period period;
  bool inactive;
  Element elementInactive;

Group_Member(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.entity,
    this.period,
    this.inactive,
    this.elementInactive
    });

  factory Group_Member.fromJson(Map<String, dynamic> json) => _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() => _$Group_MemberToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GroupAdapter extends TypeAdapter<Group> {
  @override
  final typeId = 113;

  @override
  Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Group(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      active: fields[12] as bool,
      elementActive: fields[13] as Element,
      type: fields[14] as String,
      elementType: fields[15] as Element,
      actual: fields[16] as bool,
      elementActual: fields[17] as Element,
      code: fields[18] as CodeableConcept,
      name: fields[19] as String,
      elementName: fields[20] as Element,
      quantity: fields[21] as int,
      elementQuantity: fields[22] as Element,
      managingEntity: fields[23] as Reference,
      characteristic: (fields[24] as List)?.cast<Group_Characteristic>(),
      member: (fields[25] as List)?.cast<Group_Member>(),
    );
  }

  @override
  void write(BinaryWriter writer, Group obj) {
    writer
      ..writeByte(26)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.active)
      ..writeByte(13)
      ..write(obj.elementActive)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.elementType)
      ..writeByte(16)
      ..write(obj.actual)
      ..writeByte(17)
      ..write(obj.elementActual)
      ..writeByte(18)
      ..write(obj.code)
      ..writeByte(19)
      ..write(obj.name)
      ..writeByte(20)
      ..write(obj.elementName)
      ..writeByte(21)
      ..write(obj.quantity)
      ..writeByte(22)
      ..write(obj.elementQuantity)
      ..writeByte(23)
      ..write(obj.managingEntity)
      ..writeByte(24)
      ..write(obj.characteristic)
      ..writeByte(25)
      ..write(obj.member);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    active: json['active'] as bool,
    elementActive: json['elementActive'] == null
        ? null
        : Element.fromJson(json['elementActive'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    actual: json['actual'] as bool,
    elementActual: json['elementActual'] == null
        ? null
        : Element.fromJson(json['elementActual'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    quantity: json['quantity'] as int,
    elementQuantity: json['elementQuantity'] == null
        ? null
        : Element.fromJson(json['elementQuantity'] as Map<String, dynamic>),
    managingEntity: json['managingEntity'] == null
        ? null
        : Reference.fromJson(json['managingEntity'] as Map<String, dynamic>),
    characteristic: (json['characteristic'] as List)
        ?.map((e) => e == null
            ? null
            : Group_Characteristic.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    member: (json['member'] as List)
        ?.map((e) =>
            e == null ? null : Group_Member.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'active': instance.active,
      'elementActive': instance.elementActive?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'actual': instance.actual,
      'elementActual': instance.elementActual?.toJson(),
      'code': instance.code?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'quantity': instance.quantity,
      'elementQuantity': instance.elementQuantity?.toJson(),
      'managingEntity': instance.managingEntity?.toJson(),
      'characteristic':
          instance.characteristic?.map((e) => e?.toJson())?.toList(),
      'member': instance.member?.map((e) => e?.toJson())?.toList(),
    };

Group_Characteristic _$Group_CharacteristicFromJson(Map<String, dynamic> json) {
  return Group_Characteristic(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    exclude: json['exclude'] as bool,
    elementExclude: json['elementExclude'] == null
        ? null
        : Element.fromJson(json['elementExclude'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Group_CharacteristicToJson(
        Group_Characteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'exclude': instance.exclude,
      'elementExclude': instance.elementExclude?.toJson(),
      'period': instance.period?.toJson(),
    };

Group_Member _$Group_MemberFromJson(Map<String, dynamic> json) {
  return Group_Member(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entity: json['entity'] == null
        ? null
        : Reference.fromJson(json['entity'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    elementInactive: json['elementInactive'] == null
        ? null
        : Element.fromJson(json['elementInactive'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Group_MemberToJson(Group_Member instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'entity': instance.entity?.toJson(),
      'period': instance.period?.toJson(),
      'inactive': instance.inactive,
      'elementInactive': instance.elementInactive?.toJson(),
    };
