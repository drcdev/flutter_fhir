import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 531)
class ServiceRequest {

  //  This is a ServiceRequest resource
  @HiveField(0)
  final String resourceType= 'ServiceRequest';

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

  //  Identifiers assigned to this order instance by the orderer and/or the
  // receiver and/or order fulfiller.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this
  // ServiceRequest.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this ServiceRequest.
  @HiveField(13)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  List<Element> elementInstantiatesUri;

  //  Plan/proposal/order fulfilled by this request.
  @HiveField(15)
  List<Reference> basedOn;

  //  The request takes the place of the referenced completed or terminated
  // request(s).
  @HiveField(16)
  List<Reference> replaces;

  //  A shared identifier common to all service requests that were
  // authorized more or less simultaneously by a single author, representing
  // the composite or group identifier.
  @HiveField(17)
  Identifier requisition;

  //  The status of the order.
  @HiveField(18)
  String status;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  Whether the request is a proposal, plan, an original order or a reflex
  // order.
  @HiveField(20)
  String intent;

  //  Extensions for intent
  @HiveField(21)
  Element elementIntent;

  //  A code that classifies the service for searching, sorting and display
  // purposes (e.g. "Surgical Procedure").
  @HiveField(22)
  List<CodeableConcept> category;

  //  Indicates how quickly the ServiceRequest should be addressed with
  // respect to other requests.
  @HiveField(23)
  String priority;

  //  Extensions for priority
  @HiveField(24)
  Element elementPriority;

  //  Set this to true if the record is saying that the service/procedure
  // should NOT be performed.
  @HiveField(25)
  bool doNotPerform;

  //  Extensions for doNotPerform
  @HiveField(26)
  Element elementDoNotPerform;

  //  A code that identifies a particular service (i.e., procedure,
  // diagnostic investigation, or panel of investigations) that have been
  // requested.
  @HiveField(27)
  CodeableConcept code;

  //  Additional details and instructions about the how the services are to
  // be delivered.   For example, and order for a urinary catheter may have
  // an order detail for an external or indwelling catheter, or an order for
  // a bandage may require additional instructions specifying how the
  // bandage should be applied.
  @HiveField(28)
  List<CodeableConcept> orderDetail;

  //  An amount of service being requested which can be a quantity ( for
  // example $1,500 home modification), a ratio ( for example, 20 half day
  // visits per month), or a range (2.0 to 1.8 Gy per fraction).
  @HiveField(29)
  Quantity quantityQuantity;

  //  An amount of service being requested which can be a quantity ( for
  // example $1,500 home modification), a ratio ( for example, 20 half day
  // visits per month), or a range (2.0 to 1.8 Gy per fraction).
  @HiveField(30)
  Ratio quantityRatio;

  //  An amount of service being requested which can be a quantity ( for
  // example $1,500 home modification), a ratio ( for example, 20 half day
  // visits per month), or a range (2.0 to 1.8 Gy per fraction).
  @HiveField(31)
  Range quantityRange;

  //  On whom or what the service is to be performed. This is usually a
  // human patient, but can also be requested on animals, groups of humans
  // or animals, devices such as dialysis machines, or even locations
  // (typically for environmental scans).
  @HiveField(32)
  Reference subject;

  //  An encounter that provides additional information about the healthcare
  // context in which this request is made.
  @HiveField(33)
  Reference encounter;

  //  The date/time at which the requested service should occur.
  @HiveField(34)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(35)
  Element elementOccurrenceDateTime;

  //  The date/time at which the requested service should occur.
  @HiveField(36)
  Period occurrencePeriod;

  //  The date/time at which the requested service should occur.
  @HiveField(37)
  Timing occurrenceTiming;

  //  If a CodeableConcept is present, it indicates the pre-condition for
  // performing the service.  For example "pain", "on flare-up", etc.
  @HiveField(38)
  bool asNeededBoolean; //  pattern: ^true|false$

  //  Extensions for asNeededBoolean
  @HiveField(39)
  Element elementAsNeededBoolean;

  //  If a CodeableConcept is present, it indicates the pre-condition for
  // performing the service.  For example "pain", "on flare-up", etc.
  @HiveField(40)
  CodeableConcept asNeededCodeableConcept;

  //  When the request transitioned to being actionable.
  @HiveField(41)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(42)
  Element elementAuthoredOn;

  //  The individual who initiated the request and has responsibility for
  // its activation.
  @HiveField(43)
  Reference requester;

  //  Desired type of performer for doing the requested service.
  @HiveField(44)
  CodeableConcept performerType;

  //  The desired performer for doing the requested service.  For example,
  // the surgeon, dermatopathologist, endoscopist, etc.
  @HiveField(45)
  List<Reference> performer;

  //  The preferred location(s) where the procedure should actually happen
  // in coded or free text form. E.g. at home or nursing day care center.
  @HiveField(46)
  List<CodeableConcept> locationCode;

  //  A reference to the the preferred location(s) where the procedure
  // should actually happen. E.g. at home or nursing day care center.
  @HiveField(47)
  List<Reference> locationReference;

  //  An explanation or justification for why this service is being
  // requested in coded or textual form.   This is often for billing
  // purposes.  May relate to the resources referred to in `supportingInfo`.
  @HiveField(48)
  List<CodeableConcept> reasonCode;

  //  Indicates another resource that provides a justification for why this
  // service is being requested.   May relate to the resources referred to
  // in `supportingInfo`.
  @HiveField(49)
  List<Reference> reasonReference;

  //  Insurance plans, coverage extensions, pre-authorizations and/or
  // pre-determinations that may be needed for delivering the requested
  // service.
  @HiveField(50)
  List<Reference> insurance;

  //  Additional clinical information about the patient or specimen that may
  // influence the services or their interpretations.     This information
  // includes diagnosis, clinical findings and other observations.  In
  // laboratory ordering these are typically referred to as "ask at order
  // entry questions (AOEs)".  This includes observations explicitly
  // requested by the producer (filler) to provide context or supporting
  // information needed to complete the order. For example,  reporting the
  // amount of inspired oxygen for blood gas measurements.
  @HiveField(51)
  List<Reference> supportingInfo;

  //  One or more specimens that the laboratory procedure will use.
  @HiveField(52)
  List<Reference> specimen;

  //  Anatomic location where the procedure should be performed. This is the
  // target site.
  @HiveField(53)
  List<CodeableConcept> bodySite;

  //  Any other notes and comments made about the service request. For
  // example, internal billing notes.
  @HiveField(54)
  List<Annotation> note;

  //  Instructions in terms that are understood by the patient or consumer.
  @HiveField(55)
  String patientInstruction;

  //  Extensions for patientInstruction
  @HiveField(56)
  Element elementPatientInstruction;

  //  Key events in the history of the request.
  @HiveField(57)
  List<Reference> relevantHistory;

ServiceRequest(
  this.subject,
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
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.replaces,
    this.requisition,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.category,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.elementAsNeededBoolean,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.locationCode,
    this.locationReference,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.note,
    this.patientInstruction,
    this.elementPatientInstruction,
    this.relevantHistory
    });

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServiceRequestAdapter extends TypeAdapter<ServiceRequest> {
  @override
  final typeId = 531;

  @override
  ServiceRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServiceRequest(
      fields[32] as Reference,
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
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      basedOn: (fields[15] as List)?.cast<Reference>(),
      replaces: (fields[16] as List)?.cast<Reference>(),
      requisition: fields[17] as Identifier,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      intent: fields[20] as String,
      elementIntent: fields[21] as Element,
      category: (fields[22] as List)?.cast<CodeableConcept>(),
      priority: fields[23] as String,
      elementPriority: fields[24] as Element,
      doNotPerform: fields[25] as bool,
      elementDoNotPerform: fields[26] as Element,
      code: fields[27] as CodeableConcept,
      orderDetail: (fields[28] as List)?.cast<CodeableConcept>(),
      quantityQuantity: fields[29] as Quantity,
      quantityRatio: fields[30] as Ratio,
      quantityRange: fields[31] as Range,
      encounter: fields[33] as Reference,
      occurrenceDateTime: fields[34] as String,
      elementOccurrenceDateTime: fields[35] as Element,
      occurrencePeriod: fields[36] as Period,
      occurrenceTiming: fields[37] as Timing,
      asNeededBoolean: fields[38] as bool,
      elementAsNeededBoolean: fields[39] as Element,
      asNeededCodeableConcept: fields[40] as CodeableConcept,
      authoredOn: fields[41] as DateTime,
      elementAuthoredOn: fields[42] as Element,
      requester: fields[43] as Reference,
      performerType: fields[44] as CodeableConcept,
      performer: (fields[45] as List)?.cast<Reference>(),
      locationCode: (fields[46] as List)?.cast<CodeableConcept>(),
      locationReference: (fields[47] as List)?.cast<Reference>(),
      reasonCode: (fields[48] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[49] as List)?.cast<Reference>(),
      insurance: (fields[50] as List)?.cast<Reference>(),
      supportingInfo: (fields[51] as List)?.cast<Reference>(),
      specimen: (fields[52] as List)?.cast<Reference>(),
      bodySite: (fields[53] as List)?.cast<CodeableConcept>(),
      note: (fields[54] as List)?.cast<Annotation>(),
      patientInstruction: fields[55] as String,
      elementPatientInstruction: fields[56] as Element,
      relevantHistory: (fields[57] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, ServiceRequest obj) {
    writer
      ..writeByte(58)
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
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.replaces)
      ..writeByte(17)
      ..write(obj.requisition)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.intent)
      ..writeByte(21)
      ..write(obj.elementIntent)
      ..writeByte(22)
      ..write(obj.category)
      ..writeByte(23)
      ..write(obj.priority)
      ..writeByte(24)
      ..write(obj.elementPriority)
      ..writeByte(25)
      ..write(obj.doNotPerform)
      ..writeByte(26)
      ..write(obj.elementDoNotPerform)
      ..writeByte(27)
      ..write(obj.code)
      ..writeByte(28)
      ..write(obj.orderDetail)
      ..writeByte(29)
      ..write(obj.quantityQuantity)
      ..writeByte(30)
      ..write(obj.quantityRatio)
      ..writeByte(31)
      ..write(obj.quantityRange)
      ..writeByte(32)
      ..write(obj.subject)
      ..writeByte(33)
      ..write(obj.encounter)
      ..writeByte(34)
      ..write(obj.occurrenceDateTime)
      ..writeByte(35)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(36)
      ..write(obj.occurrencePeriod)
      ..writeByte(37)
      ..write(obj.occurrenceTiming)
      ..writeByte(38)
      ..write(obj.asNeededBoolean)
      ..writeByte(39)
      ..write(obj.elementAsNeededBoolean)
      ..writeByte(40)
      ..write(obj.asNeededCodeableConcept)
      ..writeByte(41)
      ..write(obj.authoredOn)
      ..writeByte(42)
      ..write(obj.elementAuthoredOn)
      ..writeByte(43)
      ..write(obj.requester)
      ..writeByte(44)
      ..write(obj.performerType)
      ..writeByte(45)
      ..write(obj.performer)
      ..writeByte(46)
      ..write(obj.locationCode)
      ..writeByte(47)
      ..write(obj.locationReference)
      ..writeByte(48)
      ..write(obj.reasonCode)
      ..writeByte(49)
      ..write(obj.reasonReference)
      ..writeByte(50)
      ..write(obj.insurance)
      ..writeByte(51)
      ..write(obj.supportingInfo)
      ..writeByte(52)
      ..write(obj.specimen)
      ..writeByte(53)
      ..write(obj.bodySite)
      ..writeByte(54)
      ..write(obj.note)
      ..writeByte(55)
      ..write(obj.patientInstruction)
      ..writeByte(56)
      ..write(obj.elementPatientInstruction)
      ..writeByte(57)
      ..write(obj.relevantHistory);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) {
  return ServiceRequest(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    replaces: (json['replaces'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    requisition: json['requisition'] == null
        ? null
        : Identifier.fromJson(json['requisition'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    orderDetail: (json['orderDetail'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantityQuantity: json['quantityQuantity'] == null
        ? null
        : Quantity.fromJson(json['quantityQuantity'] as Map<String, dynamic>),
    quantityRatio: json['quantityRatio'] == null
        ? null
        : Ratio.fromJson(json['quantityRatio'] as Map<String, dynamic>),
    quantityRange: json['quantityRange'] == null
        ? null
        : Range.fromJson(json['quantityRange'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    asNeededBoolean: json['asNeededBoolean'] as bool,
    elementAsNeededBoolean: json['elementAsNeededBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAsNeededBoolean'] as Map<String, dynamic>),
    asNeededCodeableConcept: json['asNeededCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['asNeededCodeableConcept'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    performerType: json['performerType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerType'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    locationCode: (json['locationCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    locationReference: (json['locationReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    insurance: (json['insurance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patientInstruction: json['patientInstruction'] as String,
    elementPatientInstruction: json['elementPatientInstruction'] == null
        ? null
        : Element.fromJson(
            json['elementPatientInstruction'] as Map<String, dynamic>),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ServiceRequestToJson(ServiceRequest instance) =>
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
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'replaces': instance.replaces?.map((e) => e?.toJson())?.toList(),
      'requisition': instance.requisition?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'code': instance.code?.toJson(),
      'orderDetail': instance.orderDetail?.map((e) => e?.toJson())?.toList(),
      'quantityQuantity': instance.quantityQuantity?.toJson(),
      'quantityRatio': instance.quantityRatio?.toJson(),
      'quantityRange': instance.quantityRange?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'asNeededBoolean': instance.asNeededBoolean,
      'elementAsNeededBoolean': instance.elementAsNeededBoolean?.toJson(),
      'asNeededCodeableConcept': instance.asNeededCodeableConcept?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'performerType': instance.performerType?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'locationCode': instance.locationCode?.map((e) => e?.toJson())?.toList(),
      'locationReference':
          instance.locationReference?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'specimen': instance.specimen?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'patientInstruction': instance.patientInstruction,
      'elementPatientInstruction': instance.elementPatientInstruction?.toJson(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
    };
