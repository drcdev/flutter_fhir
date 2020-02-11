import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 490)
class PractitionerRole {

  //  This is a PractitionerRole resource
  @HiveField(0)
  final String resourceType= 'PractitionerRole';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Business Identifiers that are specific to a role/location.
  @HiveField(11)
  List<Identifier> identifier;

  //  Whether this practitioner role record is in active use.
  @HiveField(12)
  bool active;

  //  Extensions for active
  @HiveField(13)
  Element elementActive;

  //  The period during which the person is authorized to act as a
  // practitioner in these role(s) for the organization.
  @HiveField(14)
  Period period;

  //  Practitioner that is able to provide the defined services for the
  // organization.
  @HiveField(15)
  Reference practitioner;

  //  The organization where the Practitioner performs the roles associated.
  @HiveField(16)
  Reference organization;

  //  Roles which this practitioner is authorized to perform for the
  // organization.
  @HiveField(17)
  List<CodeableConcept> code;

  //  Specific specialty of the practitioner.
  @HiveField(18)
  List<CodeableConcept> specialty;

  //  The location(s) at which this practitioner provides care.
  @HiveField(19)
  List<Reference> location;

  //  The list of healthcare services that this worker provides for this
  // role's Organization/Location(s).
  @HiveField(20)
  List<Reference> healthcareService;

  //  Contact details that are specific to the role/location/service.
  @HiveField(21)
  List<ContactPoint> telecom;

  //  A collection of times the practitioner is available or performing this
  // role at the location and/or healthcareservice.
  @HiveField(22)
  List<PractitionerRole_AvailableTime> availableTime;

  //  The practitioner is not available or performing this role during this
  // period of time due to the provided reason.
  @HiveField(23)
  List<PractitionerRole_NotAvailable> notAvailable;

  //  A description of site availability exceptions, e.g. public holiday
  // availability. Succinctly describing all possible exceptions to normal
  // site availability as details in the available Times and not available
  // Times.
  @HiveField(24)
  String availabilityExceptions;

  //  Extensions for availabilityExceptions
  @HiveField(25)
  Element elementAvailabilityExceptions;

  //  Technical endpoints providing access to services operated for the
  // practitioner with this role.
  @HiveField(26)
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

  //  Indicates which days of the week are available between the start and
  // end Times.
  List<String> daysOfWeek;

  //  Extensions for daysOfWeek
  List<Element> elementDaysOfWeek;

  //  Is this always available? (hence times are irrelevant) e.g. 24 hour
  // service.
  bool allDay;

  //  Extensions for allDay
  Element elementAllDay;

  //  The opening time of day. Note: If the AllDay flag is set, then this
  // time is ignored.
  String availableStartTime;

  //  Extensions for availableStartTime
  Element elementAvailableStartTime;

  //  The closing time of day. Note: If the AllDay flag is set, then this
  // time is ignored.
  String availableEndTime;

  //  Extensions for availableEndTime
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

  //  The reason that can be presented to the user as to why this time is
  // not available.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Service is not available (seasonally or for a public holiday) from
  // this date.
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
// TypeAdapterGenerator
// **************************************************************************

class PractitionerRoleAdapter extends TypeAdapter<PractitionerRole> {
  @override
  final typeId = 490;

  @override
  PractitionerRole read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PractitionerRole(
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
