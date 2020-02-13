import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Lists {

	static Future<Lists> newInstance({
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
		String status,
		Element elementStatus,
		String mode,
		Element elementMode,
		String title,
		Element elementTitle,
		CodeableConcept code,
		Reference subject,
		Reference encounter,
		DateTime date,
		Element elementDate,
		Reference source,
		CodeableConcept orderedBy,
		List<Annotation> note,
		List<List_Entry> entry,
		CodeableConcept emptyReason}) async {
	Lists newLists = new Lists(
			id: await newId('List'),
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
			mode: mode,
			elementMode: elementMode,
			title: title,
			elementTitle: elementTitle,
			code: code,
			subject: subject,
			encounter: encounter,
			date: date,
			elementDate: elementDate,
			source: source,
			orderedBy: orderedBy,
			note: note,
			entry: entry,
			emptyReason: emptyReason);
	var listsBox = await Hive.openBox<Lists>('ListsBox');
	listsBox.put(newLists.id, newLists);
	return newLists;
}
  final String resourceType= 'List';
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
  String status; // <code> enum: current/retired/entered-in-error;
  Element elementStatus;
  String mode; // <code> enum: working/snapshot/changes;
  Element elementMode;
  String title;
  Element elementTitle;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  DateTime date;
  Element elementDate;
  Reference source;
  CodeableConcept orderedBy;
  List<Annotation> note;
  List<List_Entry> entry;
  CodeableConcept emptyReason;

Lists(
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
    this.status,
    this.elementStatus,
    this.mode,
    this.elementMode,
    this.title,
    this.elementTitle,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.elementDate,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason
    });

  factory Lists.fromJson(Map<String, dynamic> json) => _$ListsFromJson(json);
  Map<String, dynamic> toJson() => _$ListsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class List_Entry {

	static Future<List_Entry> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept flag,
		bool deleted,
		Element elementDeleted,
		DateTime date,
		Element elementDate,
		Reference item}) async {
	List_Entry newList_Entry = new List_Entry(
			id: await newId('List_Entry'),
			extension: extension,
			modifierExtension: modifierExtension,
			flag: flag,
			deleted: deleted,
			elementDeleted: elementDeleted,
			date: date,
			elementDate: elementDate,
			item: item);
	var list_EntryBox = await Hive.openBox<List_Entry>('List_EntryBox');
	list_EntryBox.put(newList_Entry.id, newList_Entry);
	return newList_Entry;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept flag;
  bool deleted;
  Element elementDeleted;
  DateTime date;
  Element elementDate;
  Reference item;

List_Entry(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.flag,
    this.deleted,
    this.elementDeleted,
    this.date,
    this.elementDate,
    @required this.item
    });

  factory List_Entry.fromJson(Map<String, dynamic> json) => _$List_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$List_EntryToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lists _$ListsFromJson(Map<String, dynamic> json) {
  return Lists(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : List_Entry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListsToJson(Lists instance) => <String, dynamic>{
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'source': instance.source?.toJson(),
      'orderedBy': instance.orderedBy?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'emptyReason': instance.emptyReason?.toJson(),
    };

List_Entry _$List_EntryFromJson(Map<String, dynamic> json) {
  return List_Entry(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    flag: json['flag'] == null
        ? null
        : CodeableConcept.fromJson(json['flag'] as Map<String, dynamic>),
    deleted: json['deleted'] as bool,
    elementDeleted: json['elementDeleted'] == null
        ? null
        : Element.fromJson(json['elementDeleted'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    item: json['item'] == null
        ? null
        : Reference.fromJson(json['item'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$List_EntryToJson(List_Entry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'flag': instance.flag?.toJson(),
      'deleted': instance.deleted,
      'elementDeleted': instance.elementDeleted?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'item': instance.item?.toJson(),
    };
