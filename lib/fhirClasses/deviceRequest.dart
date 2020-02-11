import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 223)
class DeviceRequest {

  //  This is a DeviceRequest resource
  @HiveField(0)
  final String resourceType= 'DeviceRequest';

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

  //  Identifiers assigned to this order by the orderer or by the receiver.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this
  // DeviceRequest.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this DeviceRequest.
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
  List<Reference> priorRequest;

  //  Composite request this is part of.
  @HiveField(17)
  Identifier groupIdentifier;

  //  The status of the request.
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

  //  Indicates how quickly the {{title}} should be addressed with respect
  // to other requests.
  @HiveField(22)
  String priority;

  //  Extensions for priority
  @HiveField(23)
  Element elementPriority;

  //  The details of the device to be used.
  @HiveField(24)
  Reference codeReference;

  //  The details of the device to be used.
  @HiveField(25)
  CodeableConcept codeCodeableConcept;

  //  Specific parameters for the ordered item.  For example, the prism
  // value for lenses.
  @HiveField(26)
  List<DeviceRequest_Parameter> parameter;

  //  The patient who will use the device.
  @HiveField(27)
  Reference subject;

  //  An encounter that provides additional context in which this request is
  // made.
  @HiveField(28)
  Reference encounter;

  //  The timing schedule for the use of the device. The Schedule data type
  // allows many different expressions, for example. "Every 8 hours"; "Three
  // times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  // 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  @HiveField(29)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(30)
  Element elementOccurrenceDateTime;

  //  The timing schedule for the use of the device. The Schedule data type
  // allows many different expressions, for example. "Every 8 hours"; "Three
  // times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  // 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  @HiveField(31)
  Period occurrencePeriod;

  //  The timing schedule for the use of the device. The Schedule data type
  // allows many different expressions, for example. "Every 8 hours"; "Three
  // times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  // 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  @HiveField(32)
  Timing occurrenceTiming;

  //  When the request transitioned to being actionable.
  @HiveField(33)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(34)
  Element elementAuthoredOn;

  //  The individual who initiated the request and has responsibility for
  // its activation.
  @HiveField(35)
  Reference requester;

  //  Desired type of performer for doing the diagnostic testing.
  @HiveField(36)
  CodeableConcept performerType;

  //  The desired performer for doing the diagnostic testing.
  @HiveField(37)
  Reference performer;

  //  Reason or justification for the use of this device.
  @HiveField(38)
  List<CodeableConcept> reasonCode;

  //  Reason or justification for the use of this device.
  @HiveField(39)
  List<Reference> reasonReference;

  //  Insurance plans, coverage extensions, pre-authorizations and/or
  // pre-determinations that may be required for delivering the requested
  // service.
  @HiveField(40)
  List<Reference> insurance;

  //  Additional clinical information about the patient that may influence
  // the request fulfilment.  For example, this may include where on the
  // subject's body the device will be used (i.e. the target site).
  @HiveField(41)
  List<Reference> supportingInfo;

  //  Details about this request that were not represented at all or
  // sufficiently in one of the attributes provided in a class. These may
  // include for example a comment, an instruction, or a note associated
  // with the statement.
  @HiveField(42)
  List<Annotation> note;

  //  Key events in the history of the request.
  @HiveField(43)
  List<Reference> relevantHistory;

DeviceRequest(
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
    this.priorRequest,
    this.groupIdentifier,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.priority,
    this.elementPriority,
    this.codeReference,
    this.codeCodeableConcept,
    this.parameter,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.note,
    this.relevantHistory
    });

  factory DeviceRequest.fromJson(Map<String, dynamic> json) => _$DeviceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceRequest_Parameter {

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

  //  A code or string that identifies the device detail being asserted.
  CodeableConcept code;

  //  The value of the device detail.
  CodeableConcept valueCodeableConcept;

  //  The value of the device detail.
  Quantity valueQuantity;

  //  The value of the device detail.
  Range valueRange;

  //  The value of the device detail.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

DeviceRequest_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    this.elementValueBoolean
    });

  factory DeviceRequest_Parameter.fromJson(Map<String, dynamic> json) => _$DeviceRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRequest_ParameterToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceRequestAdapter extends TypeAdapter<DeviceRequest> {
  @override
  final typeId = 223;

  @override
  DeviceRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceRequest(
      fields[27] as Reference,
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
      priorRequest: (fields[16] as List)?.cast<Reference>(),
      groupIdentifier: fields[17] as Identifier,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      intent: fields[20] as String,
      elementIntent: fields[21] as Element,
      priority: fields[22] as String,
      elementPriority: fields[23] as Element,
      codeReference: fields[24] as Reference,
      codeCodeableConcept: fields[25] as CodeableConcept,
      parameter: (fields[26] as List)?.cast<DeviceRequest_Parameter>(),
      encounter: fields[28] as Reference,
      occurrenceDateTime: fields[29] as String,
      elementOccurrenceDateTime: fields[30] as Element,
      occurrencePeriod: fields[31] as Period,
      occurrenceTiming: fields[32] as Timing,
      authoredOn: fields[33] as DateTime,
      elementAuthoredOn: fields[34] as Element,
      requester: fields[35] as Reference,
      performerType: fields[36] as CodeableConcept,
      performer: fields[37] as Reference,
      reasonCode: (fields[38] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[39] as List)?.cast<Reference>(),
      insurance: (fields[40] as List)?.cast<Reference>(),
      supportingInfo: (fields[41] as List)?.cast<Reference>(),
      note: (fields[42] as List)?.cast<Annotation>(),
      relevantHistory: (fields[43] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, DeviceRequest obj) {
    writer
      ..writeByte(44)
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
      ..write(obj.priorRequest)
      ..writeByte(17)
      ..write(obj.groupIdentifier)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.intent)
      ..writeByte(21)
      ..write(obj.elementIntent)
      ..writeByte(22)
      ..write(obj.priority)
      ..writeByte(23)
      ..write(obj.elementPriority)
      ..writeByte(24)
      ..write(obj.codeReference)
      ..writeByte(25)
      ..write(obj.codeCodeableConcept)
      ..writeByte(26)
      ..write(obj.parameter)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.encounter)
      ..writeByte(29)
      ..write(obj.occurrenceDateTime)
      ..writeByte(30)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(31)
      ..write(obj.occurrencePeriod)
      ..writeByte(32)
      ..write(obj.occurrenceTiming)
      ..writeByte(33)
      ..write(obj.authoredOn)
      ..writeByte(34)
      ..write(obj.elementAuthoredOn)
      ..writeByte(35)
      ..write(obj.requester)
      ..writeByte(36)
      ..write(obj.performerType)
      ..writeByte(37)
      ..write(obj.performer)
      ..writeByte(38)
      ..write(obj.reasonCode)
      ..writeByte(39)
      ..write(obj.reasonReference)
      ..writeByte(40)
      ..write(obj.insurance)
      ..writeByte(41)
      ..write(obj.supportingInfo)
      ..writeByte(42)
      ..write(obj.note)
      ..writeByte(43)
      ..write(obj.relevantHistory);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceRequest _$DeviceRequestFromJson(Map<String, dynamic> json) {
  return DeviceRequest(
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
    priorRequest: (json['priorRequest'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groupIdentifier: json['groupIdentifier'] == null
        ? null
        : Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    codeReference: json['codeReference'] == null
        ? null
        : Reference.fromJson(json['codeReference'] as Map<String, dynamic>),
    codeCodeableConcept: json['codeCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['codeCodeableConcept'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceRequest_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
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
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relevantHistory: (json['relevantHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceRequestToJson(DeviceRequest instance) =>
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
      'priorRequest': instance.priorRequest?.map((e) => e?.toJson())?.toList(),
      'groupIdentifier': instance.groupIdentifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'codeReference': instance.codeReference?.toJson(),
      'codeCodeableConcept': instance.codeCodeableConcept?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'performerType': instance.performerType?.toJson(),
      'performer': instance.performer?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'relevantHistory':
          instance.relevantHistory?.map((e) => e?.toJson())?.toList(),
    };

DeviceRequest_Parameter _$DeviceRequest_ParameterFromJson(
    Map<String, dynamic> json) {
  return DeviceRequest_Parameter(
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
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceRequest_ParameterToJson(
        DeviceRequest_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
    };
