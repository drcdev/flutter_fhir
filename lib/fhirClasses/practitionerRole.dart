import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole {

	static Future<PractitionerRole> newInstance({
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
		List<Reference> endpoint}) async {
	PractitionerRole newPractitionerRole = new PractitionerRole(
			id: await newId('PractitionerRole'),
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
			endpoint: endpoint);
	var practitionerRoleBox = await Hive.openBox<PractitionerRole>('PractitionerRoleBox');
	practitionerRoleBox.put(newPractitionerRole.id, newPractitionerRole);
	return newPractitionerRole;
}
  final String resourceType= 'PractitionerRole';
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
  Period period;
  Reference practitioner;
  Reference organization;
  List<CodeableConcept> code;
  List<CodeableConcept> specialty;
  List<Reference> location;
  List<Reference> healthcareService;
  List<ContactPoint> telecom;
  List<PractitionerRole_AvailableTime> availableTime;
  List<PractitionerRole_NotAvailable> notAvailable;
  String availabilityExceptions;
  Element elementAvailabilityExceptions;
  List<Reference> endpoint;

PractitionerRole(
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
    this.endpoint
    });

  factory PractitionerRole.fromJson(Map<String, dynamic> json) => _$PractitionerRoleFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRoleToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementAvailableEndTime}) async {
	PractitionerRole_AvailableTime newPractitionerRole_AvailableTime = new PractitionerRole_AvailableTime(
			id: await newId('PractitionerRole_AvailableTime'),
			extension: extension,
			modifierExtension: modifierExtension,
			daysOfWeek: daysOfWeek,
			elementDaysOfWeek: elementDaysOfWeek,
			allDay: allDay,
			elementAllDay: elementAllDay,
			availableStartTime: availableStartTime,
			elementAvailableStartTime: elementAvailableStartTime,
			availableEndTime: availableEndTime,
			elementAvailableEndTime: elementAvailableEndTime);
	var practitionerRole_AvailableTimeBox = await Hive.openBox<PractitionerRole_AvailableTime>('PractitionerRole_AvailableTimeBox');
	practitionerRole_AvailableTimeBox.put(newPractitionerRole_AvailableTime.id, newPractitionerRole_AvailableTime);
	return newPractitionerRole_AvailableTime;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> daysOfWeek;
  List<Element> elementDaysOfWeek;
  bool allDay;
  Element elementAllDay;
  String availableStartTime;
  Element elementAvailableStartTime;
  String availableEndTime;
  Element elementAvailableEndTime;

PractitionerRole_AvailableTime(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.daysOfWeek,
    this.elementDaysOfWeek,
    this.allDay,
    this.elementAllDay,
    this.availableStartTime,
    this.elementAvailableStartTime,
    this.availableEndTime,
    this.elementAvailableEndTime
    });

  factory PractitionerRole_AvailableTime.fromJson(Map<String, dynamic> json) => _$PractitionerRole_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PractitionerRole_NotAvailable {

	static Future<PractitionerRole_NotAvailable> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		Period during}) async {
	PractitionerRole_NotAvailable newPractitionerRole_NotAvailable = new PractitionerRole_NotAvailable(
			id: await newId('PractitionerRole_NotAvailable'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			during: during);
	var practitionerRole_NotAvailableBox = await Hive.openBox<PractitionerRole_NotAvailable>('PractitionerRole_NotAvailableBox');
	practitionerRole_NotAvailableBox.put(newPractitionerRole_NotAvailable.id, newPractitionerRole_NotAvailable);
	return newPractitionerRole_NotAvailable;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  Period during;

PractitionerRole_NotAvailable(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.during
    });

  factory PractitionerRole_NotAvailable.fromJson(Map<String, dynamic> json) => _$PractitionerRole_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_NotAvailableToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PractitionerRole _$PractitionerRoleFromJson(Map<String, dynamic> json) {
  return PractitionerRole(
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

Map<String, dynamic> _$PractitionerRoleToJson(PractitionerRole instance) =>
    <String, dynamic>{
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
      'period': instance.period?.toJson(),
      'practitioner': instance.practitioner?.toJson(),
      'organization': instance.organization?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'specialty': instance.specialty?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'healthcareService':
          instance.healthcareService?.map((e) => e?.toJson())?.toList(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'availableTime':
          instance.availableTime?.map((e) => e?.toJson())?.toList(),
      'notAvailable': instance.notAvailable?.map((e) => e?.toJson())?.toList(),
      'availabilityExceptions': instance.availabilityExceptions,
      'elementAvailabilityExceptions':
          instance.elementAvailabilityExceptions?.toJson(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
    };

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
        PractitionerRole_AvailableTime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'daysOfWeek': instance.daysOfWeek,
      'elementDaysOfWeek':
          instance.elementDaysOfWeek?.map((e) => e?.toJson())?.toList(),
      'allDay': instance.allDay,
      'elementAllDay': instance.elementAllDay?.toJson(),
      'availableStartTime': instance.availableStartTime,
      'elementAvailableStartTime': instance.elementAvailableStartTime?.toJson(),
      'availableEndTime': instance.availableEndTime,
      'elementAvailableEndTime': instance.elementAvailableEndTime?.toJson(),
    };

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
        PractitionerRole_NotAvailable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'during': instance.during?.toJson(),
    };
