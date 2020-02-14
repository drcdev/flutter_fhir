import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Composition {


	static Future<Composition> newInstance({
		String  resourceType,
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
		Identifier identifier,
		String status,
		Element elementStatus,
		CodeableConcept type,
		List<CodeableConcept> category,
		Reference subject,
		Reference encounter,
		DateTime date,
		Element elementDate,
		List<Reference> author,
		String title,
		Element elementTitle,
		String confidentiality,
		Element elementConfidentiality,
		List<Composition_Attester> attester,
		Reference custodian,
		List<Composition_RelatesTo> relatesTo,
		List<Composition_Event> event,
		List<Composition_Section> section}) async {
	var fhirDb = new DatabaseHelper();
	Composition newComposition = new Composition(
			resourceType: 'Composition',
			id: await fhirDb.newResourceId('Composition'),
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
			status: status,
			elementStatus: elementStatus,
			type: type,
			category: category,
			subject: subject,
			encounter: encounter,
			date: date,
			elementDate: elementDate,
			author: author,
			title: title,
			elementTitle: elementTitle,
			confidentiality: confidentiality,
			elementConfidentiality: elementConfidentiality,
			attester: attester,
			custodian: custodian,
			relatesTo: relatesTo,
			event: event,
			section: section,
);
	int saved = await fhirDb.newResource(newComposition);
	return newComposition;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.saveResource(this);
}
  String resourceType= 'Composition';
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
  Identifier identifier;
  String status; // <code> enum: preliminary/final/amended/entered-in-error;
  Element elementStatus;
  CodeableConcept type;
  List<CodeableConcept> category;
  Reference subject;
  Reference encounter;
  DateTime date;
  Element elementDate;
  List<Reference> author;
  String title;
  Element elementTitle;
  String confidentiality;
  Element elementConfidentiality;
  List<Composition_Attester> attester;
  Reference custodian;
  List<Composition_RelatesTo> relatesTo;
  List<Composition_Event> event;
  List<Composition_Section> section;

Composition(
  {@required this.resourceType,
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
    this.status,
    this.elementStatus,
    @required this.type,
    this.category,
    this.subject,
    this.encounter,
    this.date,
    this.elementDate,
    @required this.author,
    this.title,
    this.elementTitle,
    this.confidentiality,
    this.elementConfidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section
    });

  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Attester {


	static Future<Composition_Attester> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String mode,
		Element elementMode,
		DateTime time,
		Element elementTime,
		Reference party}) async {
	var fhirDb = new DatabaseHelper();
	Composition_Attester newComposition_Attester = new Composition_Attester(
			id: await fhirDb.newResourceId('Composition_Attester'),
			extension: extension,
			modifierExtension: modifierExtension,
			mode: mode,
			elementMode: elementMode,
			time: time,
			elementTime: elementTime,
			party: party,
);
	return newComposition_Attester;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode; // <code> enum: personal/professional/legal/official;
  Element elementMode;
  DateTime time;
  Element elementTime;
  Reference party;

Composition_Attester(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.time,
    this.elementTime,
    this.party
    });

  factory Composition_Attester.fromJson(Map<String, dynamic> json) => _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_AttesterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_RelatesTo {


	static Future<Composition_RelatesTo> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String code,
		Element elementCode,
		Identifier targetIdentifier,
		Reference targetReference}) async {
	var fhirDb = new DatabaseHelper();
	Composition_RelatesTo newComposition_RelatesTo = new Composition_RelatesTo(
			id: await fhirDb.newResourceId('Composition_RelatesTo'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			elementCode: elementCode,
			targetIdentifier: targetIdentifier,
			targetReference: targetReference,
);
	return newComposition_RelatesTo;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  Identifier targetIdentifier;
  Reference targetReference;

Composition_RelatesTo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.targetIdentifier,
    this.targetReference
    });

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) => _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Event {


	static Future<Composition_Event> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> code,
		Period period,
		List<Reference> detail}) async {
	var fhirDb = new DatabaseHelper();
	Composition_Event newComposition_Event = new Composition_Event(
			id: await fhirDb.newResourceId('Composition_Event'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			period: period,
			detail: detail,
);
	return newComposition_Event;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  Period period;
  List<Reference> detail;

Composition_Event(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail
    });

  factory Composition_Event.fromJson(Map<String, dynamic> json) => _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Section {


	static Future<Composition_Section> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String title,
		Element elementTitle,
		CodeableConcept code,
		List<Reference> author,
		Reference focus,
		Narrative text,
		String mode,
		Element elementMode,
		CodeableConcept orderedBy,
		List<Reference> entry,
		CodeableConcept emptyReason,
		List<Composition_Section> section}) async {
	var fhirDb = new DatabaseHelper();
	Composition_Section newComposition_Section = new Composition_Section(
			id: await fhirDb.newResourceId('Composition_Section'),
			extension: extension,
			modifierExtension: modifierExtension,
			title: title,
			elementTitle: elementTitle,
			code: code,
			author: author,
			focus: focus,
			text: text,
			mode: mode,
			elementMode: elementMode,
			orderedBy: orderedBy,
			entry: entry,
			emptyReason: emptyReason,
			section: section,
);
	return newComposition_Section;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String title;
  Element elementTitle;
  CodeableConcept code;
  List<Reference> author;
  Reference focus;
  Narrative text;
  String mode;
  Element elementMode;
  CodeableConcept orderedBy;
  List<Reference> entry;
  CodeableConcept emptyReason;
  List<Composition_Section> section;

Composition_Section(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.elementTitle,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.elementMode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section
    });

  factory Composition_Section.fromJson(Map<String, dynamic> json) => _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_SectionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Composition _$CompositionFromJson(Map<String, dynamic> json) {
  return Composition(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    confidentiality: json['confidentiality'] as String,
    elementConfidentiality: json['elementConfidentiality'] == null
        ? null
        : Element.fromJson(
            json['elementConfidentiality'] as Map<String, dynamic>),
    attester: (json['attester'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Attester.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompositionToJson(Composition instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'identifier': instance.identifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'confidentiality': instance.confidentiality,
      'elementConfidentiality': instance.elementConfidentiality?.toJson(),
      'attester': instance.attester?.map((e) => e?.toJson())?.toList(),
      'custodian': instance.custodian?.toJson(),
      'relatesTo': instance.relatesTo?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.map((e) => e?.toJson())?.toList(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };

Composition_Attester _$Composition_AttesterFromJson(Map<String, dynamic> json) {
  return Composition_Attester(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    elementTime: json['elementTime'] == null
        ? null
        : Element.fromJson(json['elementTime'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_AttesterToJson(
        Composition_Attester instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'time': instance.time?.toIso8601String(),
      'elementTime': instance.elementTime?.toJson(),
      'party': instance.party?.toJson(),
    };

Composition_RelatesTo _$Composition_RelatesToFromJson(
    Map<String, dynamic> json) {
  return Composition_RelatesTo(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    targetIdentifier: json['targetIdentifier'] == null
        ? null
        : Identifier.fromJson(json['targetIdentifier'] as Map<String, dynamic>),
    targetReference: json['targetReference'] == null
        ? null
        : Reference.fromJson(json['targetReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_RelatesToToJson(
        Composition_RelatesTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'targetIdentifier': instance.targetIdentifier?.toJson(),
      'targetReference': instance.targetReference?.toJson(),
    };

Composition_Event _$Composition_EventFromJson(Map<String, dynamic> json) {
  return Composition_Event(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_EventToJson(Composition_Event instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

Composition_Section _$Composition_SectionFromJson(Map<String, dynamic> json) {
  return Composition_Section(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focus: json['focus'] == null
        ? null
        : Reference.fromJson(json['focus'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_SectionToJson(
        Composition_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'code': instance.code?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'focus': instance.focus?.toJson(),
      'text': instance.text?.toJson(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'orderedBy': instance.orderedBy?.toJson(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'emptyReason': instance.emptyReason?.toJson(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };
