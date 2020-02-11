import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 115)
class HealthcareService {

	static Future<HealthcareService> newInstance({
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
		List<Reference> endpoint}) async {
	 return HealthcareService(
			id: await newEntry('HealthcareService'),
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
			endpoint: endpoint);
	}

  @HiveField(0)
  final String resourceType= 'HealthcareService';
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

HealthcareService(
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
    this.endpoint
    });

  factory HealthcareService.fromJson(Map<String, dynamic> json) => _$HealthcareServiceFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareServiceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_Eligibility {

	static Future<HealthcareService_Eligibility> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		String comment,
		Element elementComment}) async {
	 return HealthcareService_Eligibility(
			id: await newEntry('HealthcareService_Eligibility'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			comment: comment,
			elementComment: elementComment);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String comment;
  Element elementComment;

HealthcareService_Eligibility(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.comment,
    this.elementComment
    });

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) => _$HealthcareService_EligibilityFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_EligibilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_AvailableTime {

	static Future<HealthcareService_AvailableTime> newInstance({
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
	 return HealthcareService_AvailableTime(
			id: await newEntry('HealthcareService_AvailableTime'),
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
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> daysOfWeek; // <code> enum: mon/tue/wed/thu/fri/sat/sun> daysOfWeek;
  List<Element> elementDaysOfWeek;
  bool allDay;
  Element elementAllDay;
  String availableStartTime;
  Element elementAvailableStartTime;
  String availableEndTime;
  Element elementAvailableEndTime;

HealthcareService_AvailableTime(
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

  factory HealthcareService_AvailableTime.fromJson(Map<String, dynamic> json) => _$HealthcareService_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_AvailableTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HealthcareService_NotAvailable {

	static Future<HealthcareService_NotAvailable> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		Period during}) async {
	 return HealthcareService_NotAvailable(
			id: await newEntry('HealthcareService_NotAvailable'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			during: during);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  Period during;

HealthcareService_NotAvailable(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.during
    });

  factory HealthcareService_NotAvailable.fromJson(Map<String, dynamic> json) => _$HealthcareService_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_NotAvailableToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthcareServiceAdapter extends TypeAdapter<HealthcareService> {
  @override
  final typeId = 115;

  @override
  HealthcareService read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthcareService(
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthcareService _$HealthcareServiceFromJson(Map<String, dynamic> json) {
  return HealthcareService(
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

Map<String, dynamic> _$HealthcareServiceToJson(HealthcareService instance) =>
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
      'providedBy': instance.providedBy?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'specialty': instance.specialty?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'extraDetails': instance.extraDetails,
      'elementExtraDetails': instance.elementExtraDetails?.toJson(),
      'photo': instance.photo?.toJson(),
      'telecom': instance.telecom?.map((e) => e?.toJson())?.toList(),
      'coverageArea': instance.coverageArea?.map((e) => e?.toJson())?.toList(),
      'serviceProvisionCode':
          instance.serviceProvisionCode?.map((e) => e?.toJson())?.toList(),
      'eligibility': instance.eligibility?.map((e) => e?.toJson())?.toList(),
      'program': instance.program?.map((e) => e?.toJson())?.toList(),
      'characteristic':
          instance.characteristic?.map((e) => e?.toJson())?.toList(),
      'communication':
          instance.communication?.map((e) => e?.toJson())?.toList(),
      'referralMethod':
          instance.referralMethod?.map((e) => e?.toJson())?.toList(),
      'appointmentRequired': instance.appointmentRequired,
      'elementAppointmentRequired':
          instance.elementAppointmentRequired?.toJson(),
      'availableTime':
          instance.availableTime?.map((e) => e?.toJson())?.toList(),
      'notAvailable': instance.notAvailable?.map((e) => e?.toJson())?.toList(),
      'availabilityExceptions': instance.availabilityExceptions,
      'elementAvailabilityExceptions':
          instance.elementAvailabilityExceptions?.toJson(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
    };

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
        HealthcareService_Eligibility instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };

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

Map<String, dynamic> _$HealthcareService_AvailableTimeToJson(
        HealthcareService_AvailableTime instance) =>
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
        HealthcareService_NotAvailable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'during': instance.during?.toJson(),
    };
