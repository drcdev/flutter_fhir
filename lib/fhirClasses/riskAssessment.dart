import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
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

part 'riskAssessment.g.dart';

@JsonSerializable(explicitToJson: true)
class RiskAssessment {

  //  This is a RiskAssessment resource
  final String resourceType= 'RiskAssessment';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Business identifier assigned to the risk assessment.
  List<Identifier> identifier;

  //  A reference to the request that is fulfilled by this risk assessment.
  Reference basedOn;

  //  A reference to a resource that this risk assessment is part of, such
  // as a Procedure.
  Reference parent;

  //  The status of the RiskAssessment, using the same statuses as an
  // Observation.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  The algorithm, process or mechanism used to evaluate the risk.
  CodeableConcept method;

  //  The type of the risk assessment performed.
  CodeableConcept code;

  //  The patient or group the risk assessment applies to.
  Reference subject;

  //  The encounter where the assessment was performed.
  Reference encounter;

  //  The date (and possibly time) the risk assessment was performed.
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  Element elementOccurrenceDateTime;

  //  The date (and possibly time) the risk assessment was performed.
  Period occurrencePeriod;

  //  For assessments or prognosis specific to a particular condition,
  // indicates the condition being assessed.
  Reference condition;

  //  The provider or software application that performed the assessment.
  Reference performer;

  //  The reason the risk assessment was performed.
  List<CodeableConcept> reasonCode;

  //  Resources supporting the reason the risk assessment was performed.
  List<Reference> reasonReference;

  //  Indicates the source data considered as part of the assessment (for
  // example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  List<Reference> basis;

  //  Describes the expected outcome for the subject.
  List<RiskAssessment_Prediction> prediction;

  //  A description of the steps that might be taken to reduce the
  // identified risk(s).
  String mitigation;

  //  Extensions for mitigation
  Element elementMitigation;

  //  Additional comments about the risk assessment.
  List<Annotation> note;

RiskAssessment(
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
    this.basedOn,
    this.parent,
    this.status,
    this.elementStatus,
    this.method,
    this.code,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.elementMitigation,
    this.note
    });

  factory RiskAssessment.fromJson(Map<String, dynamic> json) => _$RiskAssessmentFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RiskAssessment_Prediction {

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

  //  One of the potential outcomes for the patient (e.g. remission, death, 
  // a particular condition).
  CodeableConcept outcome;

  //  Indicates how likely the outcome is (in the specified timeframe).
  double probabilityDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for probabilityDecimal
  Element elementProbabilityDecimal;

  //  Indicates how likely the outcome is (in the specified timeframe).
  Range probabilityRange;

  //  Indicates how likely the outcome is (in the specified timeframe),
  // expressed as a qualitative value (e.g. low, medium, or high).
  CodeableConcept qualitativeRisk;

  //  Indicates the risk for this particular subject (with their specific
  // characteristics) divided by the risk of the population in general. 
  // (Numbers greater than 1 = higher risk than the population, numbers less
  // than 1 = lower risk.).
  double relativeRisk;

  //  Extensions for relativeRisk
  Element elementRelativeRisk;

  //  Indicates the period of time or age range of the subject to which the
  // specified probability applies.
  Period whenPeriod;

  //  Indicates the period of time or age range of the subject to which the
  // specified probability applies.
  Range whenRange;

  //  Additional information explaining the basis for the prediction.
  String rationale;

  //  Extensions for rationale
  Element elementRationale;

RiskAssessment_Prediction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.elementProbabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.elementRelativeRisk,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    this.elementRationale
    });

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) => _$RiskAssessment_PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$RiskAssessment_PredictionToJson(this);
}

