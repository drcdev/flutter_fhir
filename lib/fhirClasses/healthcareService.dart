import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 301)
class HealthcareService {

  //  This is a HealthcareService resource
  @HiveField(0)
  final String resourceType= 'HealthcareService';

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

  //  External identifiers for this item.
  @HiveField(11)
  List<Identifier> identifier;

  //  This flag is used to mark the record to not be used. This is not used
  // when a center is closed for maintenance, or for holidays, the
  // notAvailable period is to be used for this.
  @HiveField(12)
  bool active;

  //  Extensions for active
  @HiveField(13)
  Element elementActive;

  //  The organization that provides this healthcare service.
  @HiveField(14)
  Reference providedBy;

  //  Identifies the broad category of service being performed or delivered.
  @HiveField(15)
  List<CodeableConcept> category;

  //  The specific type of service that may be delivered or performed.
  @HiveField(16)
  List<CodeableConcept> type;

  //  Collection of specialties handled by the service site. This is more of
  // a medical term.
  @HiveField(17)
  List<CodeableConcept> specialty;

  //  The location(s) where this healthcare service may be provided.
  @HiveField(18)
  List<Reference> location;

  //  Further description of the service as it would be presented to a
  // consumer while searching.
  @HiveField(19)
  String name;

  //  Extensions for name
  @HiveField(20)
  Element elementName;

  //  Any additional description of the service and/or any specific issues
  // not covered by the other attributes, which can be displayed as further
  // detail under the serviceName.
  @HiveField(21)
  String comment;

  //  Extensions for comment
  @HiveField(22)
  Element elementComment;

  //  Extra details about the service that can't be placed in the other
  // fields.
  @HiveField(23)
  String extraDetails;

  //  Extensions for extraDetails
  @HiveField(24)
  Element elementExtraDetails;

  //  If there is a photo/symbol associated with this HealthcareService, it
  // may be included here to facilitate quick identification of the service
  // in a list.
  @HiveField(25)
  Attachment photo;

  //  List of contacts related to this specific healthcare service.
  @HiveField(26)
  List<ContactPoint> telecom;

  //  The location(s) that this service is available to (not where the
  // service is provided).
  @HiveField(27)
  List<Reference> coverageArea;

  //  The code(s) that detail the conditions under which the healthcare
  // service is available/offered.
  @HiveField(28)
  List<CodeableConcept> serviceProvisionCode;

  //  Does this service have specific eligibility requirements that need to
  // be met in order to use the service?
  @HiveField(29)
  List<HealthcareService_Eligibility> eligibility;

  //  Programs that this service is applicable to.
  @HiveField(30)
  List<CodeableConcept> program;

  //  Collection of characteristics (attributes).
  @HiveField(31)
  List<CodeableConcept> characteristic;

  //  Some services are specifically made available in multiple languages,
  // this property permits a directory to declare the languages this is
  // offered in. Typically this is only provided where a service operates in
  // communities with mixed languages used.
  @HiveField(32)
  List<CodeableConcept> communication;

  //  Ways that the service accepts referrals, if this is not provided then
  // it is implied that no referral is required.
  @HiveField(33)
  List<CodeableConcept> referralMethod;

  //  Indicates whether or not a prospective consumer will require an
  // appointment for a particular service at a site to be provided by the
  // Organization. Indicates if an appointment is required for access to
  // this service.
  @HiveField(34)
  bool appointmentRequired;

  //  Extensions for appointmentRequired
  @HiveField(35)
  Element elementAppointmentRequired;

  //  A collection of times that the Service Site is available.
  @HiveField(36)
  List<HealthcareService_AvailableTime> availableTime;

  //  The HealthcareService is not available during this period of time due
  // to the provided reason.
  @HiveField(37)
  List<HealthcareService_NotAvailable> notAvailable;

  //  A description of site availability exceptions, e.g. public holiday
  // availability. Succinctly describing all possible exceptions to normal
  // site availability as details in the available Times and not available
  // Times.
  @HiveField(38)
  String availabilityExceptions;

  //  Extensions for availabilityExceptions
  @HiveField(39)
  Element elementAvailabilityExceptions;

  //  Technical endpoints providing access to services operated for the
  // specific healthcare services defined at this resource.
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

  //  Coded value for the eligibility.
  CodeableConcept code;

  //  Describes the eligibility conditions for the service.
  String comment;

  //  Extensions for comment
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
  List<String> daysOfWeek; // <code> enum: mon/tue/wed/thu/fri/sat/sun> daysOfWeek;

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
  final typeId = 301;

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
