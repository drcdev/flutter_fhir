import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Group {
  static Future<Group> newInstance({
    String resourceType,
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
    List<Group_Member> member,
  }) async {
    var fhirDb = new DatabaseHelper();
    Group newGroup = new Group(
      resourceType: 'Group',
      id: id ?? await fhirDb.newResourceId('Group'),
      meta: meta ?? await Meta.newInstance(),
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
      member: member,
    );
    newGroup.meta.createdAt = DateTime.now();
    newGroup.meta.lastUpdated = newGroup.meta.createdAt;
    int saved = await fhirDb.saveResource(newGroup);
    return newGroup;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Group';
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
  String type;
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

  Group({
    @required this.resourceType,
    this.id,
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
    this.member,
  });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

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
    Period period,
  }) async {
    var fhirDb = new DatabaseHelper();
    Group_Characteristic newGroup_Characteristic = new Group_Characteristic(
      id: id,
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
      period: period,
    );
    return newGroup_Characteristic;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  CodeableConcept valueCodeableConcept;
  @HiveField(5)
  bool valueBoolean;
  @HiveField(6)
  Element elementValueBoolean;
  @HiveField(7)
  Quantity valueQuantity;
  @HiveField(8)
  Range valueRange;
  @HiveField(9)
  Reference valueReference;
  @HiveField(10)
  bool exclude;
  @HiveField(11)
  Element elementExclude;
  @HiveField(12)
  Period period;

  Group_Characteristic({
    this.id,
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
    this.period,
  });

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) =>
      _$Group_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$Group_CharacteristicToJson(this);
}

class Group_Member {
  static Future<Group_Member> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference entity,
    Period period,
    bool inactive,
    Element elementInactive,
  }) async {
    var fhirDb = new DatabaseHelper();
    Group_Member newGroup_Member = new Group_Member(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      entity: entity,
      period: period,
      inactive: inactive,
      elementInactive: elementInactive,
    );
    return newGroup_Member;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference entity;
  @HiveField(4)
  Period period;
  @HiveField(5)
  bool inactive;
  @HiveField(6)
  Element elementInactive;

  Group_Member({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.entity,
    this.period,
    this.inactive,
    this.elementInactive,
  });

  factory Group_Member.fromJson(Map<String, dynamic> json) =>
      _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() => _$Group_MemberToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$GroupToJson(Group instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('active', instance.active);
  writeNotNull('elementActive', instance.elementActive?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('actual', instance.actual);
  writeNotNull('elementActual', instance.elementActual?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('quantity', instance.quantity);
  writeNotNull('elementQuantity', instance.elementQuantity?.toJson());
  writeNotNull('managingEntity', instance.managingEntity?.toJson());
  writeNotNull('characteristic',
      instance.characteristic?.map((e) => e?.toJson())?.toList());
  writeNotNull('member', instance.member?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    Group_Characteristic instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueRange', instance.valueRange?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('exclude', instance.exclude);
  writeNotNull('elementExclude', instance.elementExclude?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

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

Map<String, dynamic> _$Group_MemberToJson(Group_Member instance) {
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
  writeNotNull('entity', instance.entity?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('inactive', instance.inactive);
  writeNotNull('elementInactive', instance.elementInactive?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GroupAdapter extends TypeAdapter<Group> {
  @override
  Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Group(
      resourceType: fields[0] as String,
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

class Group_CharacteristicAdapter extends TypeAdapter<Group_Characteristic> {
  @override
  Group_Characteristic read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Group_Characteristic(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      valueCodeableConcept: fields[4] as CodeableConcept,
      valueBoolean: fields[5] as bool,
      elementValueBoolean: fields[6] as Element,
      valueQuantity: fields[7] as Quantity,
      valueRange: fields[8] as Range,
      valueReference: fields[9] as Reference,
      exclude: fields[10] as bool,
      elementExclude: fields[11] as Element,
      period: fields[12] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, Group_Characteristic obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.valueCodeableConcept)
      ..writeByte(5)
      ..write(obj.valueBoolean)
      ..writeByte(6)
      ..write(obj.elementValueBoolean)
      ..writeByte(7)
      ..write(obj.valueQuantity)
      ..writeByte(8)
      ..write(obj.valueRange)
      ..writeByte(9)
      ..write(obj.valueReference)
      ..writeByte(10)
      ..write(obj.exclude)
      ..writeByte(11)
      ..write(obj.elementExclude)
      ..writeByte(12)
      ..write(obj.period);
  }
}

class Group_MemberAdapter extends TypeAdapter<Group_Member> {
  @override
  Group_Member read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Group_Member(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      entity: fields[3] as Reference,
      period: fields[4] as Period,
      inactive: fields[5] as bool,
      elementInactive: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Group_Member obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.entity)
      ..writeByte(4)
      ..write(obj.period)
      ..writeByte(5)
      ..write(obj.inactive)
      ..writeByte(6)
      ..write(obj.elementInactive);
  }
}
