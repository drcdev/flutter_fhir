
part 'immunizationRecommendation.g.dart';

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation {
  
  // This is a ImmunizationRecommendation 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A unique identifier assigned to this particular recommendation record.
  List<Identifier identifier;

  // The patient the recommendation(s) are for.
  Reference patient;

  // The date the immunization recommendation(s) were created.
  StringTime date;

  // Extensions for date
  Element _date;

  // Indicates the authority who published the protocol (e.g. ACIP).
  Reference authority;

  // Vaccine administration recommendations.
  List<ImmunizationRecommendation_Recommendation recommendation
ImmunizationRecommendation(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.patient,
this.date,
this._date,
this.authority,
this.recommendation});

  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_DateCriterion {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Date classification of recommendation.  For example, earliest date to give,
  //  latest date to give, etc.
  CodeableConcept code;

  // The date whose meaning is specified by dateCriterion.code.
  StringTime value;

  // Extensions for value
  Element _value
ImmunizationRecommendation_DateCriterion(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.value,
this._value});

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_DateCriterionFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_DateCriterionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImmunizationRecommendation_Recommendation {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Vaccine(s) or vaccine group that pertain to the recommendation.
  List<CodeableConcept vaccineCode;

  // The targeted disease for the recommendation.
  CodeableConcept targetDisease;

  // Vaccine(s) which should not be used to fulfill the recommendation.
  List<CodeableConcept contraindicatedVaccineCode;

  // Indicates the patient status with respect to the path to immunity for the
  //  target disease.
  CodeableConcept forecastStatus;

  // The reason for the assigned forecast status.
  List<CodeableConcept forecastReason;

  // Vaccine date recommendations.  For example, earliest date to administer,
  //  latest date to administer, etc.
  List<ImmunizationRecommendation_DateCriterion dateCriterion;

  // Contains the description about the protocol under which the vaccine was
  //  administered.
  String description;

  // Extensions for description
  Element _description;

  // One possible path to achieve presumed immunity against a disease - within
  //  the context of an authority.
  String series;

  // Extensions for series
  Element _series;

  // Nominal position of the recommended dose in a series (e.g. dose 2 is the
  //  next recommended dose). number doseNumberPositiveInt;

  // Extensions for doseNumberPositiveInt
  Element _doseNumberPositiveInt;

  // Nominal position of the recommended dose in a series (e.g. dose 2 is the
  //  next recommended dose). string doseNumberString;

  // Extensions for doseNumberString
  Element _doseNumberString;

  // The recommended number of doses to achieve immunity. number
  //  seriesDosesPositiveInt;

  // Extensions for seriesDosesPositiveInt
  Element _seriesDosesPositiveInt;

  // The recommended number of doses to achieve immunity. string
  //  seriesDosesString;

  // Extensions for seriesDosesString
  Element _seriesDosesString;

  // Immunization event history and/or evaluation that supports the status and
  //  recommendation.
  List<Reference supportingImmunization;

  // Patient Information that supports the status and recommendation.  This
  //  includes patient observations, adverse reactions and allergy/intolerance
  //  information.
  List<Reference supportingPatientInformation
ImmunizationRecommendation_Recommendation(
      {this.id,
this.extension,
this.modifierExtension,
this.vaccineCode,
this.targetDisease,
this.contraindicatedVaccineCode,
this.forecastStatus,
this.forecastReason,
this.dateCriterion,
this.description,
this._description,
this.series,
this._series,
this.doseNumberPositiveInt,
this._doseNumberPositiveInt,
this.doseNumberString,
this._doseNumberString,
this.seriesDosesPositiveInt,
this._seriesDosesPositiveInt,
this.seriesDosesString,
this._seriesDosesString,
this.supportingImmunization,
this.supportingPatientInformation});

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) => _$ImmunizationRecommendation_RecommendationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationRecommendation_RecommendationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Education {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Identifier of the material presented to the patient.
  String documentType;

  // Extensions for documentType
  Element _documentType;

  // Reference pointer to the educational material given to the patient if the
  //  information was on line.
  String reference;

  // Extensions for reference
  Element _reference;

  // Date the educational material was published.
  StringTime publicationDate;

  // Extensions for publicationDate
  Element _publicationDate;

  // Date the educational material was given to the patient.
  StringTime presentationDate;

  // Extensions for presentationDate
  Element _presentationDate
Immunization_Education(
      {this.id,
this.extension,
this.modifierExtension,
this.documentType,
this._documentType,
this.reference,
this._reference,
this.publicationDate,
this._publicationDate,
this.presentationDate,
this._presentationDate});

  factory Immunization_Education.fromJson(Map<String, dynamic> json) => _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_EducationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Describes the type of performance (e.g. ordering provider, administering
  //  provider, etc.).
  CodeableConcept function;

  // The practitioner or organization who performed the action.
  Reference actor
Immunization_Performer(
      {this.id,
this.extension,
this.modifierExtension,
this.function,
this.actor});

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) => _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_ProtocolApplied {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // One possible path to achieve presumed immunity against a disease - within
  //  the context of an authority.
  String series;

  // Extensions for series
  Element _series;

  // Indicates the authority who published the protocol (e.g. ACIP) that is
  //  being followed.
  Reference authority;

  // The vaccine preventable disease the dose is being administered against.
  List<CodeableConcept targetDisease;

  // Nominal position in a series. number doseNumberPositiveInt;

  // Extensions for doseNumberPositiveInt
  Element _doseNumberPositiveInt;

  // Nominal position in a series. string doseNumberString;

  // Extensions for doseNumberString
  Element _doseNumberString;

  // The recommended number of doses to achieve immunity. number
  //  seriesDosesPositiveInt;

  // Extensions for seriesDosesPositiveInt
  Element _seriesDosesPositiveInt;

  // The recommended number of doses to achieve immunity. string
  //  seriesDosesString;

  // Extensions for seriesDosesString
  Element _seriesDosesString
Immunization_ProtocolApplied(
      {this.id,
this.extension,
this.modifierExtension,
this.series,
this._series,
this.authority,
this.targetDisease,
this.doseNumberPositiveInt,
this._doseNumberPositiveInt,
this.doseNumberString,
this._doseNumberString,
this.seriesDosesPositiveInt,
this._seriesDosesPositiveInt,
this.seriesDosesString,
this._seriesDosesString});

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) => _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ProtocolAppliedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Reaction {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Date of reaction to the immunization.
  StringTime date;

  // Extensions for date
  Element _date;

  // Details of the reaction.
  Reference detail;

  // Self-reported indicator.
  bool reported;

  // Extensions for reported
  Element _reported
Immunization_Reaction(
      {this.id,
this.extension,
this.modifierExtension,
this.date,
this._date,
this.detail,
this.reported,
this._reported});

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) => _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ReactionToJson(this);
}