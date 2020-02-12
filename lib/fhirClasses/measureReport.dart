import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport {

	static Future<MeasureReport> newInstance({
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
		String type,
		Element elementType,
		String measure,
		Reference subject,
		DateTime date,
		Element elementDate,
		Reference reporter,
		Period period,
		CodeableConcept improvementNotation,
		List<MeasureReport_Group> group,
		List<Reference> evaluatedResource}) async {
	MeasureReport newMeasureReport = new MeasureReport(
			id: await newId('MeasureReport'),
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
			elementType: elementType,
			measure: measure,
			subject: subject,
			date: date,
			elementDate: elementDate,
			reporter: reporter,
			period: period,
			improvementNotation: improvementNotation,
			group: group,
			evaluatedResource: evaluatedResource);
	var measureReportBox = await Hive.openBox<MeasureReport>('MeasureReportBox');
	measureReportBox.put(newMeasureReport.id, newMeasureReport);
	return newMeasureReport;
}
  final String resourceType= 'MeasureReport';
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
  String status; // <code> enum: complete/pending/error;
  Element elementStatus;
  String type; // <code> enum: individual/subject-list/summary/data-collection;
  Element elementType;
  String measure;
  Reference subject;
  DateTime date;
  Element elementDate;
  Reference reporter;
  Period period;
  CodeableConcept improvementNotation;
  List<MeasureReport_Group> group;
  List<Reference> evaluatedResource;

MeasureReport(
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
    this.type,
    this.elementType,
    @required this.measure,
    this.subject,
    this.date,
    this.elementDate,
    this.reporter,
    @required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource
    });

  factory MeasureReport.fromJson(Map<String, dynamic> json) => _$MeasureReportFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Group {

	static Future<MeasureReport_Group> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		List<MeasureReport_Population> population,
		Quantity measureScore,
		List<MeasureReport_Stratifier> stratifier}) async {
	MeasureReport_Group newMeasureReport_Group = new MeasureReport_Group(
			id: await newId('MeasureReport_Group'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			population: population,
			measureScore: measureScore,
			stratifier: stratifier);
	var measureReport_GroupBox = await Hive.openBox<MeasureReport_Group>('MeasureReport_GroupBox');
	measureReport_GroupBox.put(newMeasureReport_Group.id, newMeasureReport_Group);
	return newMeasureReport_Group;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<MeasureReport_Population> population;
  Quantity measureScore;
  List<MeasureReport_Stratifier> stratifier;

MeasureReport_Group(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier
    });

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) => _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population {

	static Future<MeasureReport_Population> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		int count,
		Element elementCount,
		Reference subjectResults}) async {
	MeasureReport_Population newMeasureReport_Population = new MeasureReport_Population(
			id: await newId('MeasureReport_Population'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			count: count,
			elementCount: elementCount,
			subjectResults: subjectResults);
	var measureReport_PopulationBox = await Hive.openBox<MeasureReport_Population>('MeasureReport_PopulationBox');
	measureReport_PopulationBox.put(newMeasureReport_Population.id, newMeasureReport_Population);
	return newMeasureReport_Population;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  int count;
  Element elementCount;
  Reference subjectResults;

MeasureReport_Population(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.elementCount,
    this.subjectResults
    });

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) => _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratifier {

	static Future<MeasureReport_Stratifier> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> code,
		List<MeasureReport_Stratum> stratum}) async {
	MeasureReport_Stratifier newMeasureReport_Stratifier = new MeasureReport_Stratifier(
			id: await newId('MeasureReport_Stratifier'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			stratum: stratum);
	var measureReport_StratifierBox = await Hive.openBox<MeasureReport_Stratifier>('MeasureReport_StratifierBox');
	measureReport_StratifierBox.put(newMeasureReport_Stratifier.id, newMeasureReport_Stratifier);
	return newMeasureReport_Stratifier;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> code;
  List<MeasureReport_Stratum> stratum;

MeasureReport_Stratifier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.stratum
    });

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratum {

	static Future<MeasureReport_Stratum> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept value,
		List<MeasureReport_Component> component,
		List<MeasureReport_Population1> population,
		Quantity measureScore}) async {
	MeasureReport_Stratum newMeasureReport_Stratum = new MeasureReport_Stratum(
			id: await newId('MeasureReport_Stratum'),
			extension: extension,
			modifierExtension: modifierExtension,
			value: value,
			component: component,
			population: population,
			measureScore: measureScore);
	var measureReport_StratumBox = await Hive.openBox<MeasureReport_Stratum>('MeasureReport_StratumBox');
	measureReport_StratumBox.put(newMeasureReport_Stratum.id, newMeasureReport_Stratum);
	return newMeasureReport_Stratum;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept value;
  List<MeasureReport_Component> component;
  List<MeasureReport_Population1> population;
  Quantity measureScore;

MeasureReport_Stratum(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore
    });

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Component {

	static Future<MeasureReport_Component> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		CodeableConcept value}) async {
	MeasureReport_Component newMeasureReport_Component = new MeasureReport_Component(
			id: await newId('MeasureReport_Component'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			value: value);
	var measureReport_ComponentBox = await Hive.openBox<MeasureReport_Component>('MeasureReport_ComponentBox');
	measureReport_ComponentBox.put(newMeasureReport_Component.id, newMeasureReport_Component);
	return newMeasureReport_Component;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept value;

MeasureReport_Component(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    @required this.value
    });

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) => _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population1 {

	static Future<MeasureReport_Population1> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept code,
		int count,
		Element elementCount,
		Reference subjectResults}) async {
	MeasureReport_Population1 newMeasureReport_Population1 = new MeasureReport_Population1(
			id: await newId('MeasureReport_Population1'),
			extension: extension,
			modifierExtension: modifierExtension,
			code: code,
			count: count,
			elementCount: elementCount,
			subjectResults: subjectResults);
	var measureReport_Population1Box = await Hive.openBox<MeasureReport_Population1>('MeasureReport_Population1Box');
	measureReport_Population1Box.put(newMeasureReport_Population1.id, newMeasureReport_Population1);
	return newMeasureReport_Population1;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  int count;
  Element elementCount;
  Reference subjectResults;

MeasureReport_Population1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.elementCount,
    this.subjectResults
    });

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) => _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_Population1ToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasureReport _$MeasureReportFromJson(Map<String, dynamic> json) {
  return MeasureReport(
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
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    measure: json['measure'] as String,
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    reporter: json['reporter'] == null
        ? null
        : Reference.fromJson(json['reporter'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    improvementNotation: json['improvementNotation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['improvementNotation'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluatedResource: (json['evaluatedResource'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReportToJson(MeasureReport instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'measure': instance.measure,
      'subject': instance.subject?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'reporter': instance.reporter?.toJson(),
      'period': instance.period?.toJson(),
      'improvementNotation': instance.improvementNotation?.toJson(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
      'evaluatedResource':
          instance.evaluatedResource?.map((e) => e?.toJson())?.toList(),
    };

MeasureReport_Group _$MeasureReport_GroupFromJson(Map<String, dynamic> json) {
  return MeasureReport_Group(
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
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measureScore: json['measureScore'] == null
        ? null
        : Quantity.fromJson(json['measureScore'] as Map<String, dynamic>),
    stratifier: (json['stratifier'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Stratifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_GroupToJson(
        MeasureReport_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
      'measureScore': instance.measureScore?.toJson(),
      'stratifier': instance.stratifier?.map((e) => e?.toJson())?.toList(),
    };

MeasureReport_Population _$MeasureReport_PopulationFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Population(
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
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    subjectResults: json['subjectResults'] == null
        ? null
        : Reference.fromJson(json['subjectResults'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_PopulationToJson(
        MeasureReport_Population instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'count': instance.count,
      'elementCount': instance.elementCount?.toJson(),
      'subjectResults': instance.subjectResults?.toJson(),
    };

MeasureReport_Stratifier _$MeasureReport_StratifierFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Stratifier(
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
    stratum: (json['stratum'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Stratum.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_StratifierToJson(
        MeasureReport_Stratifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'stratum': instance.stratum?.map((e) => e?.toJson())?.toList(),
    };

MeasureReport_Stratum _$MeasureReport_StratumFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Stratum(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] == null
        ? null
        : CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Population1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measureScore: json['measureScore'] == null
        ? null
        : Quantity.fromJson(json['measureScore'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_StratumToJson(
        MeasureReport_Stratum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value?.toJson(),
      'component': instance.component?.map((e) => e?.toJson())?.toList(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
      'measureScore': instance.measureScore?.toJson(),
    };

MeasureReport_Component _$MeasureReport_ComponentFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Component(
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
    value: json['value'] == null
        ? null
        : CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_ComponentToJson(
        MeasureReport_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'value': instance.value?.toJson(),
    };

MeasureReport_Population1 _$MeasureReport_Population1FromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Population1(
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
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    subjectResults: json['subjectResults'] == null
        ? null
        : Reference.fromJson(json['subjectResults'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_Population1ToJson(
        MeasureReport_Population1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'count': instance.count,
      'elementCount': instance.elementCount?.toJson(),
      'subjectResults': instance.subjectResults?.toJson(),
    };
