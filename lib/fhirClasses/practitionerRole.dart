import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class PractitionerRole {
  static Future<PractitionerRole> newInstance({
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
    Period period,
    Reference practitioner,
    Reference organization,
    List<CodeableConcept> code,
    List<CodeableConcept> specialty,
    List<Reference> location,
    List<Reference> healthcareService,
    List<ContactPoint> telecom,
    List<PractitionerRole_AvailableTime> availableTime,
    List<PractitionerRole_NotAvailable> notAvailable,
    String availabilityExceptions,
    Element elementAvailabilityExceptions,
    List<Reference> endpoint,
  }) async {
    var fhirDb = new DatabaseHelper();
    PractitionerRole newPractitionerRole = new PractitionerRole(
      resourceType: 'PractitionerRole',
      id: id ?? await fhirDb.newResourceId('PractitionerRole'),
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
      period: period,
      practitioner: practitioner,
      organization: organization,
      code: code,
      specialty: specialty,
      location: location,
      healthcareService: healthcareService,
      telecom: telecom,
      availableTime: availableTime,
      notAvailable: notAvailable,
      availabilityExceptions: availabilityExceptions,
      elementAvailabilityExceptions: elementAvailabilityExceptions,
      endpoint: endpoint,
    );
    newPractitionerRole.meta.createdAt = DateTime.now();
    newPractitionerRole.meta.lastUpdated = newPractitionerRole.meta.createdAt;
    int saved = await fhirDb.saveResource(newPractitionerRole);
    return newPractitionerRole;
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
  String resourceType = 'PractitionerRole';
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
  Period period;
  @HiveField(15)
  Reference practitioner;
  @HiveField(16)
  Reference organization;
  @HiveField(17)
  List<CodeableConcept> code;
  @HiveField(18)
  List<CodeableConcept> specialty;
  @HiveField(19)
  List<Reference> location;
  @HiveField(20)
  List<Reference> healthcareService;
  @HiveField(21)
  List<ContactPoint> telecom;
  @HiveField(22)
  List<PractitionerRole_AvailableTime> availableTime;
  @HiveField(23)
  List<PractitionerRole_NotAvailable> notAvailable;
  @HiveField(24)
  String availabilityExceptions;
  @HiveField(25)
  Element elementAvailabilityExceptions;
  @HiveField(26)
  List<Reference> endpoint;

  PractitionerRole({
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
    this.period,
    this.practitioner,
    this.organization,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.elementAvailabilityExceptions,
    this.endpoint,
  });

  factory PractitionerRole.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRoleFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRoleToJson(this);
}

class PractitionerRole_AvailableTime {
  static Future<PractitionerRole_AvailableTime> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<String> daysOfWeek,
    List<Element> elementDaysOfWeek,
    bool allDay,
    Element elementAllDay,
    String availableStartTime,
    Element elementAvailableStartTime,
    String availableEndTime,
    Element elementAvailableEndTime,
  }) async {
    var fhirDb = new DatabaseHelper();
    PractitionerRole_AvailableTime newPractitionerRole_AvailableTime =
        new PractitionerRole_AvailableTime(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      daysOfWeek: daysOfWeek,
      elementDaysOfWeek: elementDaysOfWeek,
      allDay: allDay,
      elementAllDay: elementAllDay,
      availableStartTime: availableStartTime,
      elementAvailableStartTime: elementAvailableStartTime,
      availableEndTime: availableEndTime,
      elementAvailableEndTime: elementAvailableEndTime,
    );
    return newPractitionerRole_AvailableTime;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<String> daysOfWeek;
  @HiveField(4)
  List<Element> elementDaysOfWeek;
  @HiveField(5)
  bool allDay;
  @HiveField(6)
  Element elementAllDay;
  @HiveField(7)
  String availableStartTime;
  @HiveField(8)
  Element elementAvailableStartTime;
  @HiveField(9)
  String availableEndTime;
  @HiveField(10)
  Element elementAvailableEndTime;

  PractitionerRole_AvailableTime({
    this.id,
    this.extension,
    this.modifierExtension,
    this.daysOfWeek,
    this.elementDaysOfWeek,
    this.allDay,
    this.elementAllDay,
    this.availableStartTime,
    this.elementAvailableStartTime,
    this.availableEndTime,
    this.elementAvailableEndTime,
  });

  factory PractitionerRole_AvailableTime.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRole_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_AvailableTimeToJson(this);
}

class PractitionerRole_NotAvailable {
  static Future<PractitionerRole_NotAvailable> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    Period during,
  }) async {
    var fhirDb = new DatabaseHelper();
    PractitionerRole_NotAvailable newPractitionerRole_NotAvailable =
        new PractitionerRole_NotAvailable(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      during: during,
    );
    return newPractitionerRole_NotAvailable;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String description;
  @HiveField(4)
  Element elementDescription;
  @HiveField(5)
  Period during;

  PractitionerRole_NotAvailable({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.during,
  });

  factory PractitionerRole_NotAvailable.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRole_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_NotAvailableToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PractitionerRole _$PractitionerRoleFromJson(Map<String, dynamic> json) {
  return PractitionerRole(
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
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    practitioner: json['practitioner'] == null
        ? null
        : Reference.fromJson(json['practitioner'] as Map<String, dynamic>),
    organization: json['organization'] == null
        ? null
        : Reference.fromJson(json['organization'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specialty: (json['specialty'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: (json['location'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    healthcareService: (json['healthcareService'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availableTime: (json['availableTime'] as List)
        ?.map((e) => e == null
            ? null
            : PractitionerRole_AvailableTime.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    notAvailable: (json['notAvailable'] as List)
        ?.map((e) => e == null
            ? null
            : PractitionerRole_NotAvailable.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availabilityExceptions: json['availabilityExceptions'] as String,
    elementAvailabilityExceptions: json['elementAvailabilityExceptions'] == null
        ? null
        : Element.fromJson(
            json['elementAvailabilityExceptions'] as Map<String, dynamic>),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PractitionerRoleToJson(PractitionerRole instance) {
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
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('practitioner', instance.practitioner?.toJson());
  writeNotNull('organization', instance.organization?.toJson());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'specialty', instance.specialty?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'location', instance.location?.map((e) => e?.toJson())?.toList());
  writeNotNull('healthcareService',
      instance.healthcareService?.map((e) => e?.toJson())?.toList());
  writeNotNull('telecom', instance.telecom?.map((e) => e?.toJson())?.toList());
  writeNotNull('availableTime',
      instance.availableTime?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'notAvailable', instance.notAvailable?.map((e) => e?.toJson())?.toList());
  writeNotNull('availabilityExceptions', instance.availabilityExceptions);
  writeNotNull('elementAvailabilityExceptions',
      instance.elementAvailabilityExceptions?.toJson());
  writeNotNull(
      'endpoint', instance.endpoint?.map((e) => e?.toJson())?.toList());
  return val;
}

PractitionerRole_AvailableTime _$PractitionerRole_AvailableTimeFromJson(
    Map<String, dynamic> json) {
  return PractitionerRole_AvailableTime(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    daysOfWeek: (json['daysOfWeek'] as List)?.map((e) => e as String)?.toList(),
    elementDaysOfWeek: (json['elementDaysOfWeek'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allDay: json['allDay'] as bool,
    elementAllDay: json['elementAllDay'] == null
        ? null
        : Element.fromJson(json['elementAllDay'] as Map<String, dynamic>),
    availableStartTime: json['availableStartTime'] as String,
    elementAvailableStartTime: json['elementAvailableStartTime'] == null
        ? null
        : Element.fromJson(
            json['elementAvailableStartTime'] as Map<String, dynamic>),
    availableEndTime: json['availableEndTime'] as String,
    elementAvailableEndTime: json['elementAvailableEndTime'] == null
        ? null
        : Element.fromJson(
            json['elementAvailableEndTime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PractitionerRole_AvailableTimeToJson(
    PractitionerRole_AvailableTime instance) {
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
  writeNotNull('daysOfWeek', instance.daysOfWeek);
  writeNotNull('elementDaysOfWeek',
      instance.elementDaysOfWeek?.map((e) => e?.toJson())?.toList());
  writeNotNull('allDay', instance.allDay);
  writeNotNull('elementAllDay', instance.elementAllDay?.toJson());
  writeNotNull('availableStartTime', instance.availableStartTime);
  writeNotNull('elementAvailableStartTime',
      instance.elementAvailableStartTime?.toJson());
  writeNotNull('availableEndTime', instance.availableEndTime);
  writeNotNull(
      'elementAvailableEndTime', instance.elementAvailableEndTime?.toJson());
  return val;
}

PractitionerRole_NotAvailable _$PractitionerRole_NotAvailableFromJson(
    Map<String, dynamic> json) {
  return PractitionerRole_NotAvailable(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    during: json['during'] == null
        ? null
        : Period.fromJson(json['during'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PractitionerRole_NotAvailableToJson(
    PractitionerRole_NotAvailable instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('during', instance.during?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PractitionerRoleAdapter extends TypeAdapter<PractitionerRole> {
  @override
  PractitionerRole read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PractitionerRole(
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
      period: fields[14] as Period,
      practitioner: fields[15] as Reference,
      organization: fields[16] as Reference,
      code: (fields[17] as List)?.cast<CodeableConcept>(),
      specialty: (fields[18] as List)?.cast<CodeableConcept>(),
      location: (fields[19] as List)?.cast<Reference>(),
      healthcareService: (fields[20] as List)?.cast<Reference>(),
      telecom: (fields[21] as List)?.cast<ContactPoint>(),
      availableTime:
          (fields[22] as List)?.cast<PractitionerRole_AvailableTime>(),
      notAvailable: (fields[23] as List)?.cast<PractitionerRole_NotAvailable>(),
      availabilityExceptions: fields[24] as String,
      elementAvailabilityExceptions: fields[25] as Element,
      endpoint: (fields[26] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, PractitionerRole obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.period)
      ..writeByte(15)
      ..write(obj.practitioner)
      ..writeByte(16)
      ..write(obj.organization)
      ..writeByte(17)
      ..write(obj.code)
      ..writeByte(18)
      ..write(obj.specialty)
      ..writeByte(19)
      ..write(obj.location)
      ..writeByte(20)
      ..write(obj.healthcareService)
      ..writeByte(21)
      ..write(obj.telecom)
      ..writeByte(22)
      ..write(obj.availableTime)
      ..writeByte(23)
      ..write(obj.notAvailable)
      ..writeByte(24)
      ..write(obj.availabilityExceptions)
      ..writeByte(25)
      ..write(obj.elementAvailabilityExceptions)
      ..writeByte(26)
      ..write(obj.endpoint);
  }
}

class PractitionerRole_AvailableTimeAdapter
    extends TypeAdapter<PractitionerRole_AvailableTime> {
  @override
  PractitionerRole_AvailableTime read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PractitionerRole_AvailableTime(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      daysOfWeek: (fields[3] as List)?.cast<String>(),
      elementDaysOfWeek: (fields[4] as List)?.cast<Element>(),
      allDay: fields[5] as bool,
      elementAllDay: fields[6] as Element,
      availableStartTime: fields[7] as String,
      elementAvailableStartTime: fields[8] as Element,
      availableEndTime: fields[9] as String,
      elementAvailableEndTime: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, PractitionerRole_AvailableTime obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.daysOfWeek)
      ..writeByte(4)
      ..write(obj.elementDaysOfWeek)
      ..writeByte(5)
      ..write(obj.allDay)
      ..writeByte(6)
      ..write(obj.elementAllDay)
      ..writeByte(7)
      ..write(obj.availableStartTime)
      ..writeByte(8)
      ..write(obj.elementAvailableStartTime)
      ..writeByte(9)
      ..write(obj.availableEndTime)
      ..writeByte(10)
      ..write(obj.elementAvailableEndTime);
  }
}

class PractitionerRole_NotAvailableAdapter
    extends TypeAdapter<PractitionerRole_NotAvailable> {
  @override
  PractitionerRole_NotAvailable read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PractitionerRole_NotAvailable(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      during: fields[5] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, PractitionerRole_NotAvailable obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.during);
  }
}
