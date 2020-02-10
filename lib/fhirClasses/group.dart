import 'package:json_annotation/json_annotation.dart';

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
class Group {
  final String resourceType= 'Group';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  bool active;
  Element elementActive;
  String type; // <code> enum: person/animal/practitioner/device/medication/substance;
  Element elementType;
  bool actual;
  Element elementActual;
  CodeableConcept code;
  String name;
  Element elementName;
  int quantity;
  Element elementQuantity;
  Reference managingEntity;
  List<Group_Characteristic> characteristic;
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
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference entity;
  Period period;
  bool inactive;
  Element elementInactive;

Group_Member(
  this.entity,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.period,
    this.inactive,
    this.elementInactive
    });

  factory Group_Member.fromJson(Map<String, dynamic> json) => _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() => _$Group_MemberToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
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
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    json['entity'] == null
        ? null
        : Reference.fromJson(json['entity'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
