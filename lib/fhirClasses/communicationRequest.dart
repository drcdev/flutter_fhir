import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
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
@HiveType(typeId: 79)
class CommunicationRequest {

	static Future<CommunicationRequest> newInstance({
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
		List<Reference> basedOn,
		List<Reference> replaces,
		Identifier groupIdentifier,
		String status,
		Element elementStatus,
		CodeableConcept statusReason,
		List<CodeableConcept> category,
		String priority,
		Element elementPriority,
		bool doNotPerform,
		Element elementDoNotPerform,
		List<CodeableConcept> medium,
		Reference subject,
		List<Reference> about,
		Reference encounter,
		List<CommunicationRequest_Payload> payload,
		String occurrenceDateTime,
		Element elementOccurrenceDateTime,
		Period occurrencePeriod,
		DateTime authoredOn,
		Element elementAuthoredOn,
		Reference requester,
		List<Reference> recipient,
		Reference sender,
		List<CodeableConcept> reasonCode,
		List<Reference> reasonReference,
		List<Annotation> note}) async {
	CommunicationRequest newCommunicationRequest = new CommunicationRequest(
			id: await newId('CommunicationRequest'),
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
			basedOn: basedOn,
			replaces: replaces,
			groupIdentifier: groupIdentifier,
			status: status,
			elementStatus: elementStatus,
			statusReason: statusReason,
			category: category,
			priority: priority,
			elementPriority: elementPriority,
			doNotPerform: doNotPerform,
			elementDoNotPerform: elementDoNotPerform,
			medium: medium,
			subject: subject,
			about: about,
			encounter: encounter,
			payload: payload,
			occurrenceDateTime: occurrenceDateTime,
			elementOccurrenceDateTime: elementOccurrenceDateTime,
			occurrencePeriod: occurrencePeriod,
			authoredOn: authoredOn,
			elementAuthoredOn: elementAuthoredOn,
			requester: requester,
			recipient: recipient,
			sender: sender,
			reasonCode: reasonCode,
			reasonReference: reasonReference,
			note: note);
	var communicationRequestBox = await Hive.openBox<CommunicationRequest>('CommunicationRequestBox');
	communicationRequestBox.add(newCommunicationRequest);
	return newCommunicationRequest;
}
  @HiveField(0)
  final String resourceType= 'CommunicationRequest';
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
  List<Reference> basedOn;
  @HiveField(13)
  List<Reference> replaces;
  @HiveField(14)
  Identifier groupIdentifier;
  @HiveField(15)
  String status;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  CodeableConcept statusReason;
  @HiveField(18)
  List<CodeableConcept> category;
  @HiveField(19)
  String priority;
  @HiveField(20)
  Element elementPriority;
  @HiveField(21)
  bool doNotPerform;
  @HiveField(22)
  Element elementDoNotPerform;
  @HiveField(23)
  List<CodeableConcept> medium;
  @HiveField(24)
  Reference subject;
  @HiveField(25)
  List<Reference> about;
  @HiveField(26)
  Reference encounter;
  @HiveField(27)
  List<CommunicationRequest_Payload> payload;
  @HiveField(28)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  @HiveField(29)
  Element elementOccurrenceDateTime;
  @HiveField(30)
  Period occurrencePeriod;
  @HiveField(31)
  DateTime authoredOn;
  @HiveField(32)
  Element elementAuthoredOn;
  @HiveField(33)
  Reference requester;
  @HiveField(34)
  List<Reference> recipient;
  @HiveField(35)
  Reference sender;
  @HiveField(36)
  List<CodeableConcept> reasonCode;
  @HiveField(37)
  List<Reference> reasonReference;
  @HiveField(38)
  List<Annotation> note;

CommunicationRequest(
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
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.note
    });

  factory CommunicationRequest.fromJson(Map<String, dynamic> json) => _$CommunicationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CommunicationRequest_Payload {

	static Future<CommunicationRequest_Payload> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String contentString,
		Element elementContentString,
		Attachment contentAttachment,
		Reference contentReference}) async {
	CommunicationRequest_Payload newCommunicationRequest_Payload = new CommunicationRequest_Payload(
			id: await newId('CommunicationRequest_Payload'),
			extension: extension,
			modifierExtension: modifierExtension,
			contentString: contentString,
			elementContentString: elementContentString,
			contentAttachment: contentAttachment,
			contentReference: contentReference);
	var communicationRequest_PayloadBox = await Hive.openBox<CommunicationRequest_Payload>('CommunicationRequest_PayloadBox');
	communicationRequest_PayloadBox.add(newCommunicationRequest_Payload);
	return newCommunicationRequest_Payload;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String contentString; //  pattern: ^[ \r\n\t\S]+$
  Element elementContentString;
  Attachment contentAttachment;
  Reference contentReference;

CommunicationRequest_Payload(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this.elementContentString,
    this.contentAttachment,
    this.contentReference
    });

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) => _$CommunicationRequest_PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationRequest_PayloadToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommunicationRequestAdapter extends TypeAdapter<CommunicationRequest> {
  @override
  final typeId = 79;

  @override
  CommunicationRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommunicationRequest(
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
      basedOn: (fields[12] as List)?.cast<Reference>(),
      replaces: (fields[13] as List)?.cast<Reference>(),
      groupIdentifier: fields[14] as Identifier,
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      statusReason: fields[17] as CodeableConcept,
      category: (fields[18] as List)?.cast<CodeableConcept>(),
      priority: fields[19] as String,
      elementPriority: fields[20] as Element,
      doNotPerform: fields[21] as bool,
      elementDoNotPerform: fields[22] as Element,
      medium: (fields[23] as List)?.cast<CodeableConcept>(),
      subject: fields[24] as Reference,
      about: (fields[25] as List)?.cast<Reference>(),
      encounter: fields[26] as Reference,
      payload: (fields[27] as List)?.cast<CommunicationRequest_Payload>(),
      occurrenceDateTime: fields[28] as String,
      elementOccurrenceDateTime: fields[29] as Element,
      occurrencePeriod: fields[30] as Period,
      authoredOn: fields[31] as DateTime,
      elementAuthoredOn: fields[32] as Element,
      requester: fields[33] as Reference,
      recipient: (fields[34] as List)?.cast<Reference>(),
      sender: fields[35] as Reference,
      reasonCode: (fields[36] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[37] as List)?.cast<Reference>(),
      note: (fields[38] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, CommunicationRequest obj) {
    writer
      ..writeByte(39)
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
      ..write(obj.basedOn)
      ..writeByte(13)
      ..write(obj.replaces)
      ..writeByte(14)
      ..write(obj.groupIdentifier)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.statusReason)
      ..writeByte(18)
      ..write(obj.category)
      ..writeByte(19)
      ..write(obj.priority)
      ..writeByte(20)
      ..write(obj.elementPriority)
      ..writeByte(21)
      ..write(obj.doNotPerform)
      ..writeByte(22)
      ..write(obj.elementDoNotPerform)
      ..writeByte(23)
      ..write(obj.medium)
      ..writeByte(24)
      ..write(obj.subject)
      ..writeByte(25)
      ..write(obj.about)
      ..writeByte(26)
      ..write(obj.encounter)
      ..writeByte(27)
      ..write(obj.payload)
      ..writeByte(28)
      ..write(obj.occurrenceDateTime)
      ..writeByte(29)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(30)
      ..write(obj.occurrencePeriod)
      ..writeByte(31)
      ..write(obj.authoredOn)
      ..writeByte(32)
      ..write(obj.elementAuthoredOn)
      ..writeByte(33)
      ..write(obj.requester)
      ..writeByte(34)
      ..write(obj.recipient)
      ..writeByte(35)
      ..write(obj.sender)
      ..writeByte(36)
      ..write(obj.reasonCode)
      ..writeByte(37)
      ..write(obj.reasonReference)
      ..writeByte(38)
      ..write(obj.note);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunicationRequest _$CommunicationRequestFromJson(Map<String, dynamic> json) {
  return CommunicationRequest(
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
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    replaces: (json['replaces'] as List)
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
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
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
    medium: (json['medium'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    about: (json['about'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    payload: (json['payload'] as List)
        ?.map((e) => e == null
            ? null
            : CommunicationRequest_Payload.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    recipient: (json['recipient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sender: json['sender'] == null
        ? null
        : Reference.fromJson(json['sender'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CommunicationRequestToJson(
        CommunicationRequest instance) =>
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
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'replaces': instance.replaces?.map((e) => e?.toJson())?.toList(),
      'groupIdentifier': instance.groupIdentifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'medium': instance.medium?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'about': instance.about?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.toJson(),
      'payload': instance.payload?.map((e) => e?.toJson())?.toList(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'recipient': instance.recipient?.map((e) => e?.toJson())?.toList(),
      'sender': instance.sender?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

CommunicationRequest_Payload _$CommunicationRequest_PayloadFromJson(
    Map<String, dynamic> json) {
  return CommunicationRequest_Payload(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contentString: json['contentString'] as String,
    elementContentString: json['elementContentString'] == null
        ? null
        : Element.fromJson(
            json['elementContentString'] as Map<String, dynamic>),
    contentAttachment: json['contentAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['contentAttachment'] as Map<String, dynamic>),
    contentReference: json['contentReference'] == null
        ? null
        : Reference.fromJson(json['contentReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommunicationRequest_PayloadToJson(
        CommunicationRequest_Payload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'contentString': instance.contentString,
      'elementContentString': instance.elementContentString?.toJson(),
      'contentAttachment': instance.contentAttachment?.toJson(),
      'contentReference': instance.contentReference?.toJson(),
    };
