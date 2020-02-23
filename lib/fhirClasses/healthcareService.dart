import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class HealthcareService {
  static Future<HealthcareService> newInstance({
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
    Reference providedBy,
    List<CodeableConcept> category,
    List<CodeableConcept> type,
    List<CodeableConcept> specialty,
    List<Reference> location,
    String name,
    Element elementName,
    String comment,
    Element elementComment,
    String extraDetails,
    Element elementExtraDetails,
    Attachment photo,
    List<ContactPoint> telecom,
    List<Reference> coverageArea,
    List<CodeableConcept> serviceProvisionCode,
    List<HealthcareService_Eligibility> eligibility,
    List<CodeableConcept> program,
    List<CodeableConcept> characteristic,
    List<CodeableConcept> communication,
    List<CodeableConcept> referralMethod,
    bool appointmentRequired,
    Element elementAppointmentRequired,
    List<HealthcareService_AvailableTime> availableTime,
    List<HealthcareService_NotAvailable> notAvailable,
    String availabilityExceptions,
    Element elementAvailabilityExceptions,
    List<Reference> endpoint,
  }) async {
    var fhirDb = new DatabaseHelper();
    HealthcareService newHealthcareService = new HealthcareService(
      resourceType: 'HealthcareService',
      id: id ?? await fhirDb.newResourceId('HealthcareService'),
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
      providedBy: providedBy,
      category: category,
      type: type,
      specialty: specialty,
      location: location,
      name: name,
      elementName: elementName,
      comment: comment,
      elementComment: elementComment,
      extraDetails: extraDetails,
      elementExtraDetails: elementExtraDetails,
      photo: photo,
      telecom: telecom,
      coverageArea: coverageArea,
      serviceProvisionCode: serviceProvisionCode,
      eligibility: eligibility,
      program: program,
      characteristic: characteristic,
      communication: communication,
      referralMethod: referralMethod,
      appointmentRequired: appointmentRequired,
      elementAppointmentRequired: elementAppointmentRequired,
      availableTime: availableTime,
      notAvailable: notAvailable,
      availabilityExceptions: availabilityExceptions,
      elementAvailabilityExceptions: elementAvailabilityExceptions,
      endpoint: endpoint,
    );
    newHealthcareService.meta.createdAt = DateTime.now();
    newHealthcareService.meta.lastUpdated = newHealthcareService.meta.createdAt;
    int saved = await fhirDb.saveResource(newHealthcareService);
    return newHealthcareService;
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
  String resourceType = 'HealthcareService';
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
  Reference providedBy;
  @HiveField(15)
  List<CodeableConcept> category;
  @HiveField(16)
  List<CodeableConcept> type;
  @HiveField(17)
  List<CodeableConcept> specialty;
  @HiveField(18)
  List<Reference> location;
  @HiveField(19)
  String name;
  @HiveField(20)
  Element elementName;
  @HiveField(21)
  String comment;
  @HiveField(22)
  Element elementComment;
  @HiveField(23)
  String extraDetails;
  @HiveField(24)
  Element elementExtraDetails;
  @HiveField(25)
  Attachment photo;
  @HiveField(26)
  List<ContactPoint> telecom;
  @HiveField(27)
  List<Reference> coverageArea;
  @HiveField(28)
  List<CodeableConcept> serviceProvisionCode;
  @HiveField(29)
  List<HealthcareService_Eligibility> eligibility;
  @HiveField(30)
  List<CodeableConcept> program;
  @HiveField(31)
  List<CodeableConcept> characteristic;
  @HiveField(32)
  List<CodeableConcept> communication;
  @HiveField(33)
  List<CodeableConcept> referralMethod;
  @HiveField(34)
  bool appointmentRequired;
  @HiveField(35)
  Element elementAppointmentRequired;
  @HiveField(36)
  List<HealthcareService_AvailableTime> availableTime;
  @HiveField(37)
  List<HealthcareService_NotAvailable> notAvailable;
  @HiveField(38)
  String availabilityExceptions;
  @HiveField(39)
  Element elementAvailabilityExceptions;
  @HiveField(40)
  List<Reference> endpoint;

  HealthcareService({
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
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.elementName,
    this.comment,
    this.elementComment,
    this.extraDetails,
    this.elementExtraDetails,
    this.photo,
    this.telecom,
    this.coverageArea,
    this.serviceProvisionCode,
    this.eligibility,
    this.program,
    this.characteristic,
    this.communication,
    this.referralMethod,
    this.appointmentRequired,
    this.elementAppointmentRequired,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.elementAvailabilityExceptions,
    this.endpoint,
  });

  factory HealthcareService.fromJson(Map<String, dynamic> json) =>
      _$HealthcareServiceFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareServiceToJson(this);
}

class HealthcareService_Eligibility {
  static Future<HealthcareService_Eligibility> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    String comment,
    Element elementComment,
  }) async {
    var fhirDb = new DatabaseHelper();
    HealthcareService_Eligibility newHealthcareService_Eligibility =
        new HealthcareService_Eligibility(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      comment: comment,
      elementComment: elementComment,
    );
    return newHealthcareService_Eligibility;
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
  String comment;
  @HiveField(5)
  Element elementComment;

  HealthcareService_Eligibility({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.comment,
    this.elementComment,
  });

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) =>
      _$HealthcareService_EligibilityFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_EligibilityToJson(this);
}

class HealthcareService_AvailableTime {
  static Future<HealthcareService_AvailableTime> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String daysOfWeek,
    List<Element> elementDaysOfWeek,
    bool allDay,
    Element elementAllDay,
    String availableStartTime,
    Element elementAvailableStartTime,
    String availableEndTime,
    Element elementAvailableEndTime,
  }) async {
    var fhirDb = new DatabaseHelper();
    HealthcareService_AvailableTime newHealthcareService_AvailableTime =
        new HealthcareService_AvailableTime(
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
    return newHealthcareService_AvailableTime;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String daysOfWeek;
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

  HealthcareService_AvailableTime({
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

  factory HealthcareService_AvailableTime.fromJson(Map<String, dynamic> json) =>
      _$HealthcareService_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$HealthcareService_AvailableTimeToJson(this);
}

class HealthcareService_NotAvailable {
  static Future<HealthcareService_NotAvailable> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    Period during,
  }) async {
    var fhirDb = new DatabaseHelper();
    HealthcareService_NotAvailable newHealthcareService_NotAvailable =
        new HealthcareService_NotAvailable(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      during: during,
    );
    return newHealthcareService_NotAvailable;
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

  HealthcareService_NotAvailable({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.during,
  });

  factory HealthcareService_NotAvailable.fromJson(Map<String, dynamic> json) =>
      _$HealthcareService_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_NotAvailableToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthcareService _$HealthcareServiceFromJson(Map<String, dynamic> json) {
  return HealthcareService(
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
    providedBy: json['providedBy'] == null
        ? null
        : Reference.fromJson(json['providedBy'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: (json['type'] as List)
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    extraDetails: json['extraDetails'] as String,
    elementExtraDetails: json['elementExtraDetails'] == null
        ? null
        : Element.fromJson(json['elementExtraDetails'] as Map<String, dynamic>),
    photo: json['photo'] == null
        ? null
        : Attachment.fromJson(json['photo'] as Map<String, dynamic>),
    telecom: (json['telecom'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coverageArea: (json['coverageArea'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serviceProvisionCode: (json['serviceProvisionCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    eligibility: (json['eligibility'] as List)
        ?.map((e) => e == null
            ? null
            : HealthcareService_Eligibility.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    program: (json['program'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    characteristic: (json['characteristic'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communication: (json['communication'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referralMethod: (json['referralMethod'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    appointmentRequired: json['appointmentRequired'] as bool,
    elementAppointmentRequired: json['elementAppointmentRequired'] == null
        ? null
        : Element.fromJson(
            json['elementAppointmentRequired'] as Map<String, dynamic>),
    availableTime: (json['availableTime'] as List)
        ?.map((e) => e == null
            ? null
            : HealthcareService_AvailableTime.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    notAvailable: (json['notAvailable'] as List)
        ?.map((e) => e == null
            ? null
            : HealthcareService_NotAvailable.fromJson(
                e as Map<String, dynamic>))
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

Map<String, dynamic> _$HealthcareServiceToJson(HealthcareService instance) {
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
  writeNotNull('providedBy', instance.providedBy?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'specialty', instance.specialty?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'location', instance.location?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  writeNotNull('extraDetails', instance.extraDetails);
  writeNotNull('elementExtraDetails', instance.elementExtraDetails?.toJson());
  writeNotNull('photo', instance.photo?.toJson());
  writeNotNull('telecom', instance.telecom?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'coverageArea', instance.coverageArea?.map((e) => e?.toJson())?.toList());
  writeNotNull('serviceProvisionCode',
      instance.serviceProvisionCode?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'eligibility', instance.eligibility?.map((e) => e?.toJson())?.toList());
  writeNotNull('program', instance.program?.map((e) => e?.toJson())?.toList());
  writeNotNull('characteristic',
      instance.characteristic?.map((e) => e?.toJson())?.toList());
  writeNotNull('communication',
      instance.communication?.map((e) => e?.toJson())?.toList());
  writeNotNull('referralMethod',
      instance.referralMethod?.map((e) => e?.toJson())?.toList());
  writeNotNull('appointmentRequired', instance.appointmentRequired);
  writeNotNull('elementAppointmentRequired',
      instance.elementAppointmentRequired?.toJson());
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

HealthcareService_Eligibility _$HealthcareService_EligibilityFromJson(
    Map<String, dynamic> json) {
  return HealthcareService_Eligibility(
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
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HealthcareService_EligibilityToJson(
    HealthcareService_Eligibility instance) {
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
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  return val;
}

HealthcareService_AvailableTime _$HealthcareService_AvailableTimeFromJson(
    Map<String, dynamic> json) {
  return HealthcareService_AvailableTime(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    daysOfWeek: json['daysOfWeek'] as String,
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

Map<String, dynamic> _$HealthcareService_AvailableTimeToJson(
    HealthcareService_AvailableTime instance) {
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

HealthcareService_NotAvailable _$HealthcareService_NotAvailableFromJson(
    Map<String, dynamic> json) {
  return HealthcareService_NotAvailable(
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

Map<String, dynamic> _$HealthcareService_NotAvailableToJson(
    HealthcareService_NotAvailable instance) {
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

class HealthcareServiceAdapter extends TypeAdapter<HealthcareService> {
  @override
  HealthcareService read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthcareService(
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
      providedBy: fields[14] as Reference,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      type: (fields[16] as List)?.cast<CodeableConcept>(),
      specialty: (fields[17] as List)?.cast<CodeableConcept>(),
      location: (fields[18] as List)?.cast<Reference>(),
      name: fields[19] as String,
      elementName: fields[20] as Element,
      comment: fields[21] as String,
      elementComment: fields[22] as Element,
      extraDetails: fields[23] as String,
      elementExtraDetails: fields[24] as Element,
      photo: fields[25] as Attachment,
      telecom: (fields[26] as List)?.cast<ContactPoint>(),
      coverageArea: (fields[27] as List)?.cast<Reference>(),
      serviceProvisionCode: (fields[28] as List)?.cast<CodeableConcept>(),
      eligibility: (fields[29] as List)?.cast<HealthcareService_Eligibility>(),
      program: (fields[30] as List)?.cast<CodeableConcept>(),
      characteristic: (fields[31] as List)?.cast<CodeableConcept>(),
      communication: (fields[32] as List)?.cast<CodeableConcept>(),
      referralMethod: (fields[33] as List)?.cast<CodeableConcept>(),
      appointmentRequired: fields[34] as bool,
      elementAppointmentRequired: fields[35] as Element,
      availableTime:
          (fields[36] as List)?.cast<HealthcareService_AvailableTime>(),
      notAvailable:
          (fields[37] as List)?.cast<HealthcareService_NotAvailable>(),
      availabilityExceptions: fields[38] as String,
      elementAvailabilityExceptions: fields[39] as Element,
      endpoint: (fields[40] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, HealthcareService obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.providedBy)
      ..writeByte(15)
      ..write(obj.category)
      ..writeByte(16)
      ..write(obj.type)
      ..writeByte(17)
      ..write(obj.specialty)
      ..writeByte(18)
      ..write(obj.location)
      ..writeByte(19)
      ..write(obj.name)
      ..writeByte(20)
      ..write(obj.elementName)
      ..writeByte(21)
      ..write(obj.comment)
      ..writeByte(22)
      ..write(obj.elementComment)
      ..writeByte(23)
      ..write(obj.extraDetails)
      ..writeByte(24)
      ..write(obj.elementExtraDetails)
      ..writeByte(25)
      ..write(obj.photo)
      ..writeByte(26)
      ..write(obj.telecom)
      ..writeByte(27)
      ..write(obj.coverageArea)
      ..writeByte(28)
      ..write(obj.serviceProvisionCode)
      ..writeByte(29)
      ..write(obj.eligibility)
      ..writeByte(30)
      ..write(obj.program)
      ..writeByte(31)
      ..write(obj.characteristic)
      ..writeByte(32)
      ..write(obj.communication)
      ..writeByte(33)
      ..write(obj.referralMethod)
      ..writeByte(34)
      ..write(obj.appointmentRequired)
      ..writeByte(35)
      ..write(obj.elementAppointmentRequired)
      ..writeByte(36)
      ..write(obj.availableTime)
      ..writeByte(37)
      ..write(obj.notAvailable)
      ..writeByte(38)
      ..write(obj.availabilityExceptions)
      ..writeByte(39)
      ..write(obj.elementAvailabilityExceptions)
      ..writeByte(40)
      ..write(obj.endpoint);
  }
}

class HealthcareService_EligibilityAdapter
    extends TypeAdapter<HealthcareService_Eligibility> {
  @override
  HealthcareService_Eligibility read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthcareService_Eligibility(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      comment: fields[4] as String,
      elementComment: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, HealthcareService_Eligibility obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.comment)
      ..writeByte(5)
      ..write(obj.elementComment);
  }
}

class HealthcareService_AvailableTimeAdapter
    extends TypeAdapter<HealthcareService_AvailableTime> {
  @override
  HealthcareService_AvailableTime read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthcareService_AvailableTime(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      daysOfWeek: fields[3] as String,
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
  void write(BinaryWriter writer, HealthcareService_AvailableTime obj) {
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

class HealthcareService_NotAvailableAdapter
    extends TypeAdapter<HealthcareService_NotAvailable> {
  @override
  HealthcareService_NotAvailable read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthcareService_NotAvailable(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      during: fields[5] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, HealthcareService_NotAvailable obj) {
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
