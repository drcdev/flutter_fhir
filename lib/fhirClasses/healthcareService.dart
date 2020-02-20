import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'HealthcareService';
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
  Reference providedBy;
  List<CodeableConcept> category;
  List<CodeableConcept> type;
  List<CodeableConcept> specialty;
  List<Reference> location;
  String name;
  Element elementName;
  String comment;
  Element elementComment;
  String extraDetails;
  Element elementExtraDetails;
  Attachment photo;
  List<ContactPoint> telecom;
  List<Reference> coverageArea;
  List<CodeableConcept> serviceProvisionCode;
  List<HealthcareService_Eligibility> eligibility;
  List<CodeableConcept> program;
  List<CodeableConcept> characteristic;
  List<CodeableConcept> communication;
  List<CodeableConcept> referralMethod;
  bool appointmentRequired;
  Element elementAppointmentRequired;
  List<HealthcareService_AvailableTime> availableTime;
  List<HealthcareService_NotAvailable> notAvailable;
  String availabilityExceptions;
  Element elementAvailabilityExceptions;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('HealthcareService_Eligibility'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      comment: comment,
      elementComment: elementComment,
    );
    return newHealthcareService_Eligibility;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String comment;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('HealthcareService_AvailableTime'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String daysOfWeek;
  List<Element> elementDaysOfWeek;
  bool allDay;
  Element elementAllDay;
  String availableStartTime;
  Element elementAvailableStartTime;
  String availableEndTime;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('HealthcareService_NotAvailable'),
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      during: during,
    );
    return newHealthcareService_NotAvailable;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
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
