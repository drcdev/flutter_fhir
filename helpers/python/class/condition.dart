
part 'condition.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition {
  
  // This is a Condition 
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

  // Business identifiers assigned to this condition by the performer or other
  //  systems which remain constant as the resource is updated and propagates from
  //  server to server.
  List<Identifier identifier;

  // The clinical status of the condition.
  CodeableConcept clinicalStatus;

  // The verification status to support the clinical status of the condition.
  CodeableConcept verificationStatus;

  // A category assigned to the condition.
  List<CodeableConcept category;

  // A subjective assessment of the severity of the condition as evaluated by
  //  the clinician.
  CodeableConcept severity;

  // Identification of the condition, problem or diagnosis.
  CodeableConcept code;

  // The anatomical location where this condition manifests itself.
  List<CodeableConcept bodySite;

  // Indicates the patient or group who the condition record is associated with.
  Reference subject;

  // The Encounter during which this Condition was created or to which the
  //  creation of this record is tightly associated.
  Reference encounter;

  // Estimated or actual date or date-time  the condition began, in the opinion
  //  of the clinician. string onsetDateTime;

  // Extensions for onsetDateTime
  Element _onsetDateTime;

  // Estimated or actual date or date-time  the condition began, in the opinion
  //  of the clinician.
  Age onsetAge;

  // Estimated or actual date or date-time  the condition began, in the opinion
  //  of the clinician.
  Period onsetPeriod;

  // Estimated or actual date or date-time  the condition began, in the opinion
  //  of the clinician.
  Range onsetRange;

  // Estimated or actual date or date-time  the condition began, in the opinion
  //  of the clinician. string onsetString;

  // Extensions for onsetString
  Element _onsetString;

  // The date or estimated date that the condition resolved or went into
  //  remission. This is called "abatement" because of the many overloaded
  //  connotations associated with "remission" or "resolution" - Conditions are never
  //  really resolved, but they can abate. string abatementDateTime;

  // Extensions for abatementDateTime
  Element _abatementDateTime;

  // The date or estimated date that the condition resolved or went into
  //  remission. This is called "abatement" because of the many overloaded
  //  connotations associated with "remission" or "resolution" - Conditions are never
  //  really resolved, but they can abate.
  Age abatementAge;

  // The date or estimated date that the condition resolved or went into
  //  remission. This is called "abatement" because of the many overloaded
  //  connotations associated with "remission" or "resolution" - Conditions are never
  //  really resolved, but they can abate.
  Period abatementPeriod;

  // The date or estimated date that the condition resolved or went into
  //  remission. This is called "abatement" because of the many overloaded
  //  connotations associated with "remission" or "resolution" - Conditions are never
  //  really resolved, but they can abate.
  Range abatementRange;

  // The date or estimated date that the condition resolved or went into
  //  remission. This is called "abatement" because of the many overloaded
  //  connotations associated with "remission" or "resolution" - Conditions are never
  //  really resolved, but they can abate. string abatementString;

  // Extensions for abatementString
  Element _abatementString;

  // The recordedDate represents when this particular Condition record was
  //  created in the system, which is often a system-generated date.
  StringTime recordedDate;

  // Extensions for recordedDate
  Element _recordedDate;

  // Individual who recorded the record and takes responsibility for its
  //  content.
  Reference recorder;

  // Individual who is making the condition statement.
  Reference asserter;

  // Clinical stage or grade of a condition. May include formal severity
  //  assessments.
  List<Condition_Stage stage;

  // Supporting evidence / manifestations that are the basis of the Condition's
  //  verification status, such as evidence that confirmed or refuted the condition.
  List<Condition_Evidence evidence;

  // Additional information about the Condition.   // This is a general
  //  notes/comments entry  for description of the Condition, its diagnosis and prognosis.
  List<Annotation note
Condition(
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
this.clinicalStatus,
this.verificationStatus,
this.category,
this.severity,
this.code,
this.bodySite,
this.subject,
this.encounter,
this.onsetDateTime,
this._onsetDateTime,
this.onsetAge,
this.onsetPeriod,
this.onsetRange,
this.onsetString,
this._onsetString,
this.abatementDateTime,
this._abatementDateTime,
this.abatementAge,
this.abatementPeriod,
this.abatementRange,
this.abatementString,
this._abatementString,
this.recordedDate,
this._recordedDate,
this.recorder,
this.asserter,
this.stage,
this.evidence,
this.note});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Evidence {

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

  // A manifestation or symptom that led to the recording of this condition.
  List<CodeableConcept code;

  // Links to other relevant information, including pathology reports.
  List<Reference detail
Condition_Evidence(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.detail});

  factory Condition_Evidence.fromJson(Map<String, dynamic> json) => _$Condition_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_EvidenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Condition_Stage {

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

  // A simple summary of the stage such as "Stage 3". The determination of the
  //  stage is disease-specific.
  CodeableConcept summary;

  // Reference to a formal record of the evidence on which the staging
  //  assessment is based.
  List<Reference assessment;

  // The kind of staging, such as pathological or clinical staging.
  CodeableConcept type
Condition_Stage(
      {this.id,
this.extension,
this.modifierExtension,
this.summary,
this.assessment,
this.type});

  factory Condition_Stage.fromJson(Map<String, dynamic> json) => _$Condition_StageFromJson(json);
  Map<String, dynamic> toJson() => _$Condition_StageToJson(this);
}
