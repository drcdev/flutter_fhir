import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'immunizationRecommendation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation {

  //  This is a ImmunizationRecommendation resource
  final String resourceType= 'ImmunizationRecommendation';

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

  //  A unique identifier assigned to this particular recommendation record.
  List<Identifier> identifier;

  //  The patient the recommendation(s) are for.
  Reference patient;

  //  The date the immunization recommendation(s) were created.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  Indicates the authority who published the protocol (e.g. ACIP).
  Reference authority;

  //  Vaccine administration recommendations.
  List<ImmunizationRecommendation_Recommendation> recommendation;

ImmunizationRecommendation(
  this.patient,
    this.recommendation,
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
    this.date,
    this.elementDate,
    this.authority
    });

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_Recommendation {

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

  //  Vaccine(s) or vaccine group that pertain to the recommendation.
  List<CodeableConcept> vaccineCode;

  //  The targeted disease for the recommendation.
  CodeableConcept targetDisease;

  //  Vaccine(s) which should not be used to fulfill the recommendation.
  List<CodeableConcept> contraindicatedVaccineCode;

  //  Indicates the patient status with respect to the path to immunity for
  // the target disease.
  CodeableConcept forecastStatus;

  //  The reason for the assigned forecast status.
  List<CodeableConcept> forecastReason;

  //  Vaccine date recommendations.  For example, earliest date to
  // administer, latest date to administer, etc.
  List<ImmunizationRecommendation_DateCriterion> dateCriterion;

  //  Contains the description about the protocol under which the vaccine
  // was administered.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  One possible path to achieve presumed immunity against a disease -
  // within the context of an authority.
  String series;

  //  Extensions for series
  Element elementSeries;

  //  Nominal position of the recommended dose in a series (e.g. dose 2 is
  // the next recommended dose).
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for doseNumberPositiveInt
  Element elementDoseNumberPositiveInt;

  //  Nominal position of the recommended dose in a series (e.g. dose 2 is
  // the next recommended dose).
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for doseNumberString
  Element elementDoseNumberString;

  //  The recommended number of doses to achieve immunity.
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for seriesDosesPositiveInt
  Element elementSeriesDosesPositiveInt;

  //  The recommended number of doses to achieve immunity.
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for seriesDosesString
  Element elementSeriesDosesString;

  //  Immunization event history and/or evaluation that supports the status
  // and recommendation.
  List<Reference> supportingImmunization;

  //  Patient Information that supports the status and recommendation.  This
  // includes patient observations, adverse reactions and
  // allergy/intolerance information.
  List<Reference> supportingPatientInformation;

ImmunizationRecommendation_Recommendation(
  this.forecastStatus,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    this.forecastReason,
    this.dateCriterion,
    this.description,
    this.elementDescription,
    this.series,
    this.elementSeries,
    this.doseNumberPositiveInt,
    this.elementDoseNumberPositiveInt,
    this.doseNumberString,
    this.elementDoseNumberString,
    this.seriesDosesPositiveInt,
    this.elementSeriesDosesPositiveInt,
    this.seriesDosesString,
    this.elementSeriesDosesString,
    this.supportingImmunization,
    this.supportingPatientInformation
    });

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_RecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

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

  //  Date classification of recommendation.  For example, earliest date to
  // give, latest date to give, etc.
  CodeableConcept code;

  //  The date whose meaning is specified by dateCriterion.code.
  DateTime value;

  //  Extensions for value
  Element elementValue;

ImmunizationRecommendation_DateCriterion(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.elementValue
    });

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_DateCriterionToJson(this);
}
