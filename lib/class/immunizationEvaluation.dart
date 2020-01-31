import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'immunizationEvaluation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationEvaluation {

  //  This is a ImmunizationEvaluation resource
  final String resourceType= 'ImmunizationEvaluation';

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
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

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

  //  Extensions for status
  Element element_status;

  //  The individual for whom the evaluation is being done.
  Reference patient;

  //  The date the evaluation of the vaccine administration event was
  // performed.
  DateTime date;

  //  Extensions for date
  Element element_date;

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

  //  Extensions for description
  Element element_description;

  //  One possible path to achieve presumed immunity against a disease -
  // within the context of an authority.
  String series;

  //  Extensions for series
  Element element_series;

  //  Nominal position in a series.
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for doseNumberPositiveInt
  Element element_doseNumberPositiveInt;

  //  Nominal position in a series.
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for doseNumberString
  Element element_doseNumberString;

  //  The recommended number of doses to achieve immunity.
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for seriesDosesPositiveInt
  Element element_seriesDosesPositiveInt;

  //  The recommended number of doses to achieve immunity.
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for seriesDosesString
  Element element_seriesDosesString;

ImmunizationEvaluation(
  this.patient,
    this.targetDisease,
    this.immunizationEvent,
    this.doseStatus,
    {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.date,
    this.element_date,
    this.authority,
    this.doseStatusReason,
    this.description,
    this.element_description,
    this.series,
    this.element_series,
    this.doseNumberPositiveInt,
    this.element_doseNumberPositiveInt,
    this.doseNumberString,
    this.element_doseNumberString,
    this.seriesDosesPositiveInt,
    this.element_seriesDosesPositiveInt,
    this.seriesDosesString,
    this.element_seriesDosesString
    });

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) => _$ImmunizationEvaluationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationEvaluationToJson(this);
}

