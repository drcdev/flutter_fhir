import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'immunizationEvaluation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationEvaluation {

//  This is a ImmunizationEvaluation resource
String resourceType;

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

//  The base language in which the resource is written.
String language;

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
List<ResourceList> contained;

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

//  A unique identifier assigned to this immunization evaluation record.
List<Identifier> identifier;

//  Indicates the current status of the evaluation of the vaccination
// administration event.
String status;

//  The individual for whom the evaluation is being done.
Reference patient;

//  The date the evaluation of the vaccine administration event was
// performed.
DateTime date;

//  Indicates the authority who published the protocol (e.g. ACIP).
Reference authority;

//  The vaccine preventable disease the dose is being evaluated against.
CodeableConcept targetDisease;

//  The vaccine administration event being evaluated.
Reference immunizationEvent;

//  Indicates if the dose is valid or not valid with respect to the
// published recommendations.
CodeableConcept doseStatus;

//  Provides an explanation as to why the vaccine administration event is
// valid or not relative to the published recommendations.
List<CodeableConcept> doseStatusReason;

//  Additional information about the evaluation.
String description;

//  One possible path to achieve presumed immunity against a disease -
// within the context of an authority.
String series;

//  Nominal position in a series.
int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

//  Nominal position in a series.
String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

//  The recommended number of doses to achieve immunity.
int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

//  The recommended number of doses to achieve immunity.
String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

ImmunizationEvaluation(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.patient,
    this.date,
    this.authority,
    this.targetDisease,
    this.immunizationEvent,
    this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.series,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString
    });

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) => _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationEvaluationToJson(this);
}

