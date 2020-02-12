import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 98)
class EffectEvidenceSynthesis {

	static Future<EffectEvidenceSynthesis> newInstance({
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
		String url,
		Element elementUrl,
		List<Identifier> identifier,
		String version,
		Element elementVersion,
		String name,
		Element elementName,
		String title,
		Element elementTitle,
		String status,
		Element elementStatus,
		DateTime date,
		Element elementDate,
		String publisher,
		Element elementPublisher,
		List<ContactDetail> contact,
		String description,
		Element elementDescription,
		List<Annotation> note,
		List<UsageContext> useContext,
		List<CodeableConcept> jurisdiction,
		String copyright,
		Element elementCopyright,
		String approvalDate,
		Element elementApprovalDate,
		String lastReviewDate,
		Element elementLastReviewDate,
		Period effectivePeriod,
		List<CodeableConcept> topic,
		List<ContactDetail> author,
		List<ContactDetail> editor,
		List<ContactDetail> reviewer,
		List<ContactDetail> endorser,
		List<RelatedArtifact> relatedArtifact,
		CodeableConcept synthesisType,
		CodeableConcept studyType,
		Reference population,
		Reference exposure,
		Reference exposureAlternative,
		Reference outcome,
		EffectEvidenceSynthesis_SampleSize sampleSize,
		List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure,
		List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate,
		List<EffectEvidenceSynthesis_Certainty> certainty}) async {
	EffectEvidenceSynthesis newEffectEvidenceSynthesis = new EffectEvidenceSynthesis(
			id: await newId('EffectEvidenceSynthesis'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			url: url,
			elementUrl: elementUrl,
			identifier: identifier,
			version: version,
			elementVersion: elementVersion,
			name: name,
			elementName: elementName,
			title: title,
			elementTitle: elementTitle,
			status: status,
			elementStatus: elementStatus,
			date: date,
			elementDate: elementDate,
			publisher: publisher,
			elementPublisher: elementPublisher,
			contact: contact,
			description: description,
			elementDescription: elementDescription,
			note: note,
			useContext: useContext,
			jurisdiction: jurisdiction,
			copyright: copyright,
			elementCopyright: elementCopyright,
			approvalDate: approvalDate,
			elementApprovalDate: elementApprovalDate,
			lastReviewDate: lastReviewDate,
			elementLastReviewDate: elementLastReviewDate,
			effectivePeriod: effectivePeriod,
			topic: topic,
			author: author,
			editor: editor,
			reviewer: reviewer,
			endorser: endorser,
			relatedArtifact: relatedArtifact,
			synthesisType: synthesisType,
			studyType: studyType,
			population: population,
			exposure: exposure,
			exposureAlternative: exposureAlternative,
			outcome: outcome,
			sampleSize: sampleSize,
			resultsByExposure: resultsByExposure,
			effectEstimate: effectEstimate,
			certainty: certainty);
	var effectEvidenceSynthesisBox = await Hive.openBox<EffectEvidenceSynthesis>('EffectEvidenceSynthesisBox');
	effectEvidenceSynthesisBox.put(newEffectEvidenceSynthesis.id, newEffectEvidenceSynthesis);
	return newEffectEvidenceSynthesis;
}
  @HiveField(0)
  final String resourceType= 'EffectEvidenceSynthesis';
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
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String status; // <code> enum: draft/active/retired/unknown;
  @HiveField(21)
  Element elementStatus;
  @HiveField(22)
  DateTime date;
  @HiveField(23)
  Element elementDate;
  @HiveField(24)
  String publisher;
  @HiveField(25)
  Element elementPublisher;
  @HiveField(26)
  List<ContactDetail> contact;
  @HiveField(27)
  String description;
  @HiveField(28)
  Element elementDescription;
  @HiveField(29)
  List<Annotation> note;
  @HiveField(30)
  List<UsageContext> useContext;
  @HiveField(31)
  List<CodeableConcept> jurisdiction;
  @HiveField(32)
  String copyright;
  @HiveField(33)
  Element elementCopyright;
  @HiveField(34)
  String approvalDate;
  @HiveField(35)
  Element elementApprovalDate;
  @HiveField(36)
  String lastReviewDate;
  @HiveField(37)
  Element elementLastReviewDate;
  @HiveField(38)
  Period effectivePeriod;
  @HiveField(39)
  List<CodeableConcept> topic;
  @HiveField(40)
  List<ContactDetail> author;
  @HiveField(41)
  List<ContactDetail> editor;
  @HiveField(42)
  List<ContactDetail> reviewer;
  @HiveField(43)
  List<ContactDetail> endorser;
  @HiveField(44)
  List<RelatedArtifact> relatedArtifact;
  @HiveField(45)
  CodeableConcept synthesisType;
  @HiveField(46)
  CodeableConcept studyType;
  @HiveField(47)
  Reference population;
  @HiveField(48)
  Reference exposure;
  @HiveField(49)
  Reference exposureAlternative;
  @HiveField(50)
  Reference outcome;
  @HiveField(51)
  EffectEvidenceSynthesis_SampleSize sampleSize;
  @HiveField(52)
  List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure;
  @HiveField(53)
  List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate;
  @HiveField(54)
  List<EffectEvidenceSynthesis_Certainty> certainty;

EffectEvidenceSynthesis(
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
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.status,
    this.elementStatus,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.note,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.synthesisType,
    this.studyType,
    @required this.population,
    @required this.exposure,
    @required this.exposureAlternative,
    @required this.outcome,
    this.sampleSize,
    this.resultsByExposure,
    this.effectEstimate,
    this.certainty
    });

  factory EffectEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_SampleSize {

	static Future<EffectEvidenceSynthesis_SampleSize> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		int numberOfStudies,
		Element elementNumberOfStudies,
		int numberOfParticipants,
		Element elementNumberOfParticipants}) async {
	EffectEvidenceSynthesis_SampleSize newEffectEvidenceSynthesis_SampleSize = new EffectEvidenceSynthesis_SampleSize(
			id: await newId('EffectEvidenceSynthesis_SampleSize'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			numberOfStudies: numberOfStudies,
			elementNumberOfStudies: elementNumberOfStudies,
			numberOfParticipants: numberOfParticipants,
			elementNumberOfParticipants: elementNumberOfParticipants);
	var effectEvidenceSynthesis_SampleSizeBox = await Hive.openBox<EffectEvidenceSynthesis_SampleSize>('EffectEvidenceSynthesis_SampleSizeBox');
	effectEvidenceSynthesis_SampleSizeBox.put(newEffectEvidenceSynthesis_SampleSize.id, newEffectEvidenceSynthesis_SampleSize);
	return newEffectEvidenceSynthesis_SampleSize;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  int numberOfStudies;
  Element elementNumberOfStudies;
  int numberOfParticipants;
  Element elementNumberOfParticipants;

EffectEvidenceSynthesis_SampleSize(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.numberOfStudies,
    this.elementNumberOfStudies,
    this.numberOfParticipants,
    this.elementNumberOfParticipants
    });

  factory EffectEvidenceSynthesis_SampleSize.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_SampleSizeFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_SampleSizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_ResultsByExposure {

	static Future<EffectEvidenceSynthesis_ResultsByExposure> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		String exposureState,
		Element elementExposureState,
		CodeableConcept variantState,
		Reference riskEvidenceSynthesis}) async {
	EffectEvidenceSynthesis_ResultsByExposure newEffectEvidenceSynthesis_ResultsByExposure = new EffectEvidenceSynthesis_ResultsByExposure(
			id: await newId('EffectEvidenceSynthesis_ResultsByExposure'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			exposureState: exposureState,
			elementExposureState: elementExposureState,
			variantState: variantState,
			riskEvidenceSynthesis: riskEvidenceSynthesis);
	var effectEvidenceSynthesis_ResultsByExposureBox = await Hive.openBox<EffectEvidenceSynthesis_ResultsByExposure>('EffectEvidenceSynthesis_ResultsByExposureBox');
	effectEvidenceSynthesis_ResultsByExposureBox.put(newEffectEvidenceSynthesis_ResultsByExposure.id, newEffectEvidenceSynthesis_ResultsByExposure);
	return newEffectEvidenceSynthesis_ResultsByExposure;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String exposureState; // <code> enum: exposure/exposure-alternative;
  Element elementExposureState;
  CodeableConcept variantState;
  Reference riskEvidenceSynthesis;

EffectEvidenceSynthesis_ResultsByExposure(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.exposureState,
    this.elementExposureState,
    this.variantState,
    @required this.riskEvidenceSynthesis
    });

  factory EffectEvidenceSynthesis_ResultsByExposure.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_ResultsByExposureFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_ResultsByExposureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_EffectEstimate {

	static Future<EffectEvidenceSynthesis_EffectEstimate> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String description,
		Element elementDescription,
		CodeableConcept type,
		CodeableConcept variantState,
		double value,
		Element elementValue,
		CodeableConcept unitOfMeasure,
		List<EffectEvidenceSynthesis_PrecisionEstimate> precisionEstimate}) async {
	EffectEvidenceSynthesis_EffectEstimate newEffectEvidenceSynthesis_EffectEstimate = new EffectEvidenceSynthesis_EffectEstimate(
			id: await newId('EffectEvidenceSynthesis_EffectEstimate'),
			extension: extension,
			modifierExtension: modifierExtension,
			description: description,
			elementDescription: elementDescription,
			type: type,
			variantState: variantState,
			value: value,
			elementValue: elementValue,
			unitOfMeasure: unitOfMeasure,
			precisionEstimate: precisionEstimate);
	var effectEvidenceSynthesis_EffectEstimateBox = await Hive.openBox<EffectEvidenceSynthesis_EffectEstimate>('EffectEvidenceSynthesis_EffectEstimateBox');
	effectEvidenceSynthesis_EffectEstimateBox.put(newEffectEvidenceSynthesis_EffectEstimate.id, newEffectEvidenceSynthesis_EffectEstimate);
	return newEffectEvidenceSynthesis_EffectEstimate;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  CodeableConcept type;
  CodeableConcept variantState;
  double value;
  Element elementValue;
  CodeableConcept unitOfMeasure;
  List<EffectEvidenceSynthesis_PrecisionEstimate> precisionEstimate;

EffectEvidenceSynthesis_EffectEstimate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.type,
    this.variantState,
    this.value,
    this.elementValue,
    this.unitOfMeasure,
    this.precisionEstimate
    });

  factory EffectEvidenceSynthesis_EffectEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_EffectEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_EffectEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_PrecisionEstimate {

	static Future<EffectEvidenceSynthesis_PrecisionEstimate> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		double level,
		Element elementLevel,
		double from,
		Element elementFrom,
		double to,
		Element elementTo}) async {
	EffectEvidenceSynthesis_PrecisionEstimate newEffectEvidenceSynthesis_PrecisionEstimate = new EffectEvidenceSynthesis_PrecisionEstimate(
			id: await newId('EffectEvidenceSynthesis_PrecisionEstimate'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			level: level,
			elementLevel: elementLevel,
			from: from,
			elementFrom: elementFrom,
			to: to,
			elementTo: elementTo);
	var effectEvidenceSynthesis_PrecisionEstimateBox = await Hive.openBox<EffectEvidenceSynthesis_PrecisionEstimate>('EffectEvidenceSynthesis_PrecisionEstimateBox');
	effectEvidenceSynthesis_PrecisionEstimateBox.put(newEffectEvidenceSynthesis_PrecisionEstimate.id, newEffectEvidenceSynthesis_PrecisionEstimate);
	return newEffectEvidenceSynthesis_PrecisionEstimate;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  double level;
  Element elementLevel;
  double from;
  Element elementFrom;
  double to;
  Element elementTo;

EffectEvidenceSynthesis_PrecisionEstimate(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.level,
    this.elementLevel,
    this.from,
    this.elementFrom,
    this.to,
    this.elementTo
    });

  factory EffectEvidenceSynthesis_PrecisionEstimate.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_PrecisionEstimateFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_PrecisionEstimateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_Certainty {

	static Future<EffectEvidenceSynthesis_Certainty> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<CodeableConcept> rating,
		List<Annotation> note,
		List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent}) async {
	EffectEvidenceSynthesis_Certainty newEffectEvidenceSynthesis_Certainty = new EffectEvidenceSynthesis_Certainty(
			id: await newId('EffectEvidenceSynthesis_Certainty'),
			extension: extension,
			modifierExtension: modifierExtension,
			rating: rating,
			note: note,
			certaintySubcomponent: certaintySubcomponent);
	var effectEvidenceSynthesis_CertaintyBox = await Hive.openBox<EffectEvidenceSynthesis_Certainty>('EffectEvidenceSynthesis_CertaintyBox');
	effectEvidenceSynthesis_CertaintyBox.put(newEffectEvidenceSynthesis_Certainty.id, newEffectEvidenceSynthesis_Certainty);
	return newEffectEvidenceSynthesis_Certainty;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> rating;
  List<Annotation> note;
  List<EffectEvidenceSynthesis_CertaintySubcomponent> certaintySubcomponent;

EffectEvidenceSynthesis_Certainty(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.rating,
    this.note,
    this.certaintySubcomponent
    });

  factory EffectEvidenceSynthesis_Certainty.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintyFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_CertaintyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_CertaintySubcomponent {

	static Future<EffectEvidenceSynthesis_CertaintySubcomponent> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		List<CodeableConcept> rating,
		List<Annotation> note}) async {
	EffectEvidenceSynthesis_CertaintySubcomponent newEffectEvidenceSynthesis_CertaintySubcomponent = new EffectEvidenceSynthesis_CertaintySubcomponent(
			id: await newId('EffectEvidenceSynthesis_CertaintySubcomponent'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			rating: rating,
			note: note);
	var effectEvidenceSynthesis_CertaintySubcomponentBox = await Hive.openBox<EffectEvidenceSynthesis_CertaintySubcomponent>('EffectEvidenceSynthesis_CertaintySubcomponentBox');
	effectEvidenceSynthesis_CertaintySubcomponentBox.put(newEffectEvidenceSynthesis_CertaintySubcomponent.id, newEffectEvidenceSynthesis_CertaintySubcomponent);
	return newEffectEvidenceSynthesis_CertaintySubcomponent;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> rating;
  List<Annotation> note;

EffectEvidenceSynthesis_CertaintySubcomponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.rating,
    this.note
    });

  factory EffectEvidenceSynthesis_CertaintySubcomponent.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_CertaintySubcomponentFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_CertaintySubcomponentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EffectEvidenceSynthesisAdapter
    extends TypeAdapter<EffectEvidenceSynthesis> {
  @override
  final typeId = 98;

  @override
  EffectEvidenceSynthesis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EffectEvidenceSynthesis(
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
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      date: fields[22] as DateTime,
      elementDate: fields[23] as Element,
      publisher: fields[24] as String,
      elementPublisher: fields[25] as Element,
      contact: (fields[26] as List)?.cast<ContactDetail>(),
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
      note: (fields[29] as List)?.cast<Annotation>(),
      useContext: (fields[30] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[31] as List)?.cast<CodeableConcept>(),
      copyright: fields[32] as String,
      elementCopyright: fields[33] as Element,
      approvalDate: fields[34] as String,
      elementApprovalDate: fields[35] as Element,
      lastReviewDate: fields[36] as String,
      elementLastReviewDate: fields[37] as Element,
      effectivePeriod: fields[38] as Period,
      topic: (fields[39] as List)?.cast<CodeableConcept>(),
      author: (fields[40] as List)?.cast<ContactDetail>(),
      editor: (fields[41] as List)?.cast<ContactDetail>(),
      reviewer: (fields[42] as List)?.cast<ContactDetail>(),
      endorser: (fields[43] as List)?.cast<ContactDetail>(),
      relatedArtifact: (fields[44] as List)?.cast<RelatedArtifact>(),
      synthesisType: fields[45] as CodeableConcept,
      studyType: fields[46] as CodeableConcept,
      population: fields[47] as Reference,
      exposure: fields[48] as Reference,
      exposureAlternative: fields[49] as Reference,
      outcome: fields[50] as Reference,
      sampleSize: fields[51] as EffectEvidenceSynthesis_SampleSize,
      resultsByExposure: (fields[52] as List)
          ?.cast<EffectEvidenceSynthesis_ResultsByExposure>(),
      effectEstimate:
          (fields[53] as List)?.cast<EffectEvidenceSynthesis_EffectEstimate>(),
      certainty:
          (fields[54] as List)?.cast<EffectEvidenceSynthesis_Certainty>(),
    );
  }

  @override
  void write(BinaryWriter writer, EffectEvidenceSynthesis obj) {
    writer
      ..writeByte(55)
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
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.date)
      ..writeByte(23)
      ..write(obj.elementDate)
      ..writeByte(24)
      ..write(obj.publisher)
      ..writeByte(25)
      ..write(obj.elementPublisher)
      ..writeByte(26)
      ..write(obj.contact)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription)
      ..writeByte(29)
      ..write(obj.note)
      ..writeByte(30)
      ..write(obj.useContext)
      ..writeByte(31)
      ..write(obj.jurisdiction)
      ..writeByte(32)
      ..write(obj.copyright)
      ..writeByte(33)
      ..write(obj.elementCopyright)
      ..writeByte(34)
      ..write(obj.approvalDate)
      ..writeByte(35)
      ..write(obj.elementApprovalDate)
      ..writeByte(36)
      ..write(obj.lastReviewDate)
      ..writeByte(37)
      ..write(obj.elementLastReviewDate)
      ..writeByte(38)
      ..write(obj.effectivePeriod)
      ..writeByte(39)
      ..write(obj.topic)
      ..writeByte(40)
      ..write(obj.author)
      ..writeByte(41)
      ..write(obj.editor)
      ..writeByte(42)
      ..write(obj.reviewer)
      ..writeByte(43)
      ..write(obj.endorser)
      ..writeByte(44)
      ..write(obj.relatedArtifact)
      ..writeByte(45)
      ..write(obj.synthesisType)
      ..writeByte(46)
      ..write(obj.studyType)
      ..writeByte(47)
      ..write(obj.population)
      ..writeByte(48)
      ..write(obj.exposure)
      ..writeByte(49)
      ..write(obj.exposureAlternative)
      ..writeByte(50)
      ..write(obj.outcome)
      ..writeByte(51)
      ..write(obj.sampleSize)
      ..writeByte(52)
      ..write(obj.resultsByExposure)
      ..writeByte(53)
      ..write(obj.effectEstimate)
      ..writeByte(54)
      ..write(obj.certainty);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EffectEvidenceSynthesis _$EffectEvidenceSynthesisFromJson(
    Map<String, dynamic> json) {
  return EffectEvidenceSynthesis(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    topic: (json['topic'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    editor: (json['editor'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reviewer: (json['reviewer'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endorser: (json['endorser'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedArtifact: (json['relatedArtifact'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedArtifact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    synthesisType: json['synthesisType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['synthesisType'] as Map<String, dynamic>),
    studyType: json['studyType'] == null
        ? null
        : CodeableConcept.fromJson(json['studyType'] as Map<String, dynamic>),
    population: json['population'] == null
        ? null
        : Reference.fromJson(json['population'] as Map<String, dynamic>),
    exposure: json['exposure'] == null
        ? null
        : Reference.fromJson(json['exposure'] as Map<String, dynamic>),
    exposureAlternative: json['exposureAlternative'] == null
        ? null
        : Reference.fromJson(
            json['exposureAlternative'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : Reference.fromJson(json['outcome'] as Map<String, dynamic>),
    sampleSize: json['sampleSize'] == null
        ? null
        : EffectEvidenceSynthesis_SampleSize.fromJson(
            json['sampleSize'] as Map<String, dynamic>),
    resultsByExposure: (json['resultsByExposure'] as List)
        ?.map((e) => e == null
            ? null
            : EffectEvidenceSynthesis_ResultsByExposure.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    effectEstimate: (json['effectEstimate'] as List)
        ?.map((e) => e == null
            ? null
            : EffectEvidenceSynthesis_EffectEstimate.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    certainty: (json['certainty'] as List)
        ?.map((e) => e == null
            ? null
            : EffectEvidenceSynthesis_Certainty.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesisToJson(
        EffectEvidenceSynthesis instance) =>
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
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'topic': instance.topic?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'editor': instance.editor?.map((e) => e?.toJson())?.toList(),
      'reviewer': instance.reviewer?.map((e) => e?.toJson())?.toList(),
      'endorser': instance.endorser?.map((e) => e?.toJson())?.toList(),
      'relatedArtifact':
          instance.relatedArtifact?.map((e) => e?.toJson())?.toList(),
      'synthesisType': instance.synthesisType?.toJson(),
      'studyType': instance.studyType?.toJson(),
      'population': instance.population?.toJson(),
      'exposure': instance.exposure?.toJson(),
      'exposureAlternative': instance.exposureAlternative?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'sampleSize': instance.sampleSize?.toJson(),
      'resultsByExposure':
          instance.resultsByExposure?.map((e) => e?.toJson())?.toList(),
      'effectEstimate':
          instance.effectEstimate?.map((e) => e?.toJson())?.toList(),
      'certainty': instance.certainty?.map((e) => e?.toJson())?.toList(),
    };

EffectEvidenceSynthesis_SampleSize _$EffectEvidenceSynthesis_SampleSizeFromJson(
    Map<String, dynamic> json) {
  return EffectEvidenceSynthesis_SampleSize(
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
    numberOfStudies: json['numberOfStudies'] as int,
    elementNumberOfStudies: json['elementNumberOfStudies'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfStudies'] as Map<String, dynamic>),
    numberOfParticipants: json['numberOfParticipants'] as int,
    elementNumberOfParticipants: json['elementNumberOfParticipants'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfParticipants'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesis_SampleSizeToJson(
        EffectEvidenceSynthesis_SampleSize instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'numberOfStudies': instance.numberOfStudies,
      'elementNumberOfStudies': instance.elementNumberOfStudies?.toJson(),
      'numberOfParticipants': instance.numberOfParticipants,
      'elementNumberOfParticipants':
          instance.elementNumberOfParticipants?.toJson(),
    };

EffectEvidenceSynthesis_ResultsByExposure
    _$EffectEvidenceSynthesis_ResultsByExposureFromJson(
        Map<String, dynamic> json) {
  return EffectEvidenceSynthesis_ResultsByExposure(
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
    exposureState: json['exposureState'] as String,
    elementExposureState: json['elementExposureState'] == null
        ? null
        : Element.fromJson(
            json['elementExposureState'] as Map<String, dynamic>),
    variantState: json['variantState'] == null
        ? null
        : CodeableConcept.fromJson(
            json['variantState'] as Map<String, dynamic>),
    riskEvidenceSynthesis: json['riskEvidenceSynthesis'] == null
        ? null
        : Reference.fromJson(
            json['riskEvidenceSynthesis'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesis_ResultsByExposureToJson(
        EffectEvidenceSynthesis_ResultsByExposure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'exposureState': instance.exposureState,
      'elementExposureState': instance.elementExposureState?.toJson(),
      'variantState': instance.variantState?.toJson(),
      'riskEvidenceSynthesis': instance.riskEvidenceSynthesis?.toJson(),
    };

EffectEvidenceSynthesis_EffectEstimate
    _$EffectEvidenceSynthesis_EffectEstimateFromJson(
        Map<String, dynamic> json) {
  return EffectEvidenceSynthesis_EffectEstimate(
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    variantState: json['variantState'] == null
        ? null
        : CodeableConcept.fromJson(
            json['variantState'] as Map<String, dynamic>),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    unitOfMeasure: json['unitOfMeasure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfMeasure'] as Map<String, dynamic>),
    precisionEstimate: (json['precisionEstimate'] as List)
        ?.map((e) => e == null
            ? null
            : EffectEvidenceSynthesis_PrecisionEstimate.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesis_EffectEstimateToJson(
        EffectEvidenceSynthesis_EffectEstimate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'type': instance.type?.toJson(),
      'variantState': instance.variantState?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'unitOfMeasure': instance.unitOfMeasure?.toJson(),
      'precisionEstimate':
          instance.precisionEstimate?.map((e) => e?.toJson())?.toList(),
    };

EffectEvidenceSynthesis_PrecisionEstimate
    _$EffectEvidenceSynthesis_PrecisionEstimateFromJson(
        Map<String, dynamic> json) {
  return EffectEvidenceSynthesis_PrecisionEstimate(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    level: (json['level'] as num)?.toDouble(),
    elementLevel: json['elementLevel'] == null
        ? null
        : Element.fromJson(json['elementLevel'] as Map<String, dynamic>),
    from: (json['from'] as num)?.toDouble(),
    elementFrom: json['elementFrom'] == null
        ? null
        : Element.fromJson(json['elementFrom'] as Map<String, dynamic>),
    to: (json['to'] as num)?.toDouble(),
    elementTo: json['elementTo'] == null
        ? null
        : Element.fromJson(json['elementTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesis_PrecisionEstimateToJson(
        EffectEvidenceSynthesis_PrecisionEstimate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'level': instance.level,
      'elementLevel': instance.elementLevel?.toJson(),
      'from': instance.from,
      'elementFrom': instance.elementFrom?.toJson(),
      'to': instance.to,
      'elementTo': instance.elementTo?.toJson(),
    };

EffectEvidenceSynthesis_Certainty _$EffectEvidenceSynthesis_CertaintyFromJson(
    Map<String, dynamic> json) {
  return EffectEvidenceSynthesis_Certainty(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rating: (json['rating'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    certaintySubcomponent: (json['certaintySubcomponent'] as List)
        ?.map((e) => e == null
            ? null
            : EffectEvidenceSynthesis_CertaintySubcomponent.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesis_CertaintyToJson(
        EffectEvidenceSynthesis_Certainty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'rating': instance.rating?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'certaintySubcomponent':
          instance.certaintySubcomponent?.map((e) => e?.toJson())?.toList(),
    };

EffectEvidenceSynthesis_CertaintySubcomponent
    _$EffectEvidenceSynthesis_CertaintySubcomponentFromJson(
        Map<String, dynamic> json) {
  return EffectEvidenceSynthesis_CertaintySubcomponent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    rating: (json['rating'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EffectEvidenceSynthesis_CertaintySubcomponentToJson(
        EffectEvidenceSynthesis_CertaintySubcomponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'rating': instance.rating?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
