import 'package:json_annotation/json_annotation.dart';

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
class EffectEvidenceSynthesis {
  final String resourceType= 'EffectEvidenceSynthesis';
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
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<Annotation> note;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element elementCopyright;
  String approvalDate;
  Element elementApprovalDate;
  String lastReviewDate;
  Element elementLastReviewDate;
  Period effectivePeriod;
  List<CodeableConcept> topic;
  List<ContactDetail> author;
  List<ContactDetail> editor;
  List<ContactDetail> reviewer;
  List<ContactDetail> endorser;
  List<RelatedArtifact> relatedArtifact;
  CodeableConcept synthesisType;
  CodeableConcept studyType;
  Reference population;
  Reference exposure;
  Reference exposureAlternative;
  Reference outcome;
  EffectEvidenceSynthesis_SampleSize sampleSize;
  List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure;
  List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate;
  List<EffectEvidenceSynthesis_Certainty> certainty;

EffectEvidenceSynthesis(
  this.population,
    this.exposure,
    this.exposureAlternative,
    this.outcome,
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
  this.riskEvidenceSynthesis,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.exposureState,
    this.elementExposureState,
    this.variantState
    });

  factory EffectEvidenceSynthesis_ResultsByExposure.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesis_ResultsByExposureFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesis_ResultsByExposureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis_EffectEstimate {
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
// JsonSerializableGenerator
// **************************************************************************

EffectEvidenceSynthesis _$EffectEvidenceSynthesisFromJson(
    Map<String, dynamic> json) {
  return EffectEvidenceSynthesis(
    json['population'] == null
        ? null
        : Reference.fromJson(json['population'] as Map<String, dynamic>),
    json['exposure'] == null
        ? null
        : Reference.fromJson(json['exposure'] as Map<String, dynamic>),
    json['exposureAlternative'] == null
        ? null
        : Reference.fromJson(
            json['exposureAlternative'] as Map<String, dynamic>),
    json['outcome'] == null
        ? null
        : Reference.fromJson(json['outcome'] as Map<String, dynamic>),
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
    json['riskEvidenceSynthesis'] == null
        ? null
        : Reference.fromJson(
            json['riskEvidenceSynthesis'] as Map<String, dynamic>),
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
