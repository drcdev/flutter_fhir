
part 'researchStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchStudy {
  
  // This is a ResearchStudy 
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

  // Identifiers assigned to this research study by the sponsor or other
  //  systems.
  List<Identifier identifier;

  // A short, descriptive user-friendly label for the study.
  String title;

  // Extensions for title
  Element _title;

  // The set of steps expected to be performed as part of the execution of the
  //  study.
  List<Reference protocol;

  // A larger research study of which this particular study is a component or
  //  step.
  List<Reference partOf;

  // The current state of the study.Enum enum; //
  // 
  // 
  //  activeadministratively-completedapprovedclosed-to-accrualclosed-to-accrual-and-interventioncompleteddisapprovedin-reviewtemporarily-closed-to-accrualtemporarily-closed-to-accrual-and-interventionwithdrawn status;

  // Extensions for status
  Element _status;

  // The type of study based upon the intent of the study's activities. A
  //  classification of the intent of the study.
  CodeableConcept primaryPurposeType;

  // The stage in the progression of a therapy from initial experimental use in
  //  humans in clinical trials to post-market evaluation.
  CodeableConcept phase;

  // Codes categorizing the type of study such as investigational vs.
  //  observational, type of blinding, type of randomization, safety vs. efficacy, etc.
  List<CodeableConcept category;

  // The medication(s), food(s), therapy(ies), device(s) or other concerns or
  //  interventions that the study is seeking to gain more information about.
  List<CodeableConcept focus;

  // The condition that is the focus of the study.  For example, In a study to
  //  examine risk factors for Lupus, might have as an inclusion criterion "healthy
  //  volunteer", but the target condition code would be a Lupus SNOMED code.
  List<CodeableConcept condition;

  // Contact details to assist a user in learning more about or engaging with
  //  the study.
  List<ContactDetail contact;

  // Citations, references and other related documents.
  List<RelatedArtifact relatedArtifact;

  // Key terms to aid in searching for or filtering the study.
  List<CodeableConcept keyword;

  // Indicates a country, state or other region where the study is taking place.
  List<CodeableConcept location;

  // A full description of how the study is being conducted.
  String description;

  // Extensions for description
  Element _description;

  // Reference to a Group that defines the criteria for and quantity of subjects
  //  participating in the study.  E.g. " 200 female Europeans between the ages of 20
  //  and 45 with early onset diabetes".
  List<Reference enrollment;

  // Identifies the start date and the expected (or actual, depending on status)
  //  end date for the study.
  Period period;

  // An organization that initiates the investigation and is legally responsible
  //  for the study.
  Reference sponsor;

  // A researcher in a study who oversees multiple aspects of the study, such as
  //  concept development, protocol writing, protocol submission for IRB approval,
  //  participant recruitment, informed consent, data collection, analysis,
  //  interpretation and presentation.
  Reference principalInvestigator;

  // A facility in which study activities are conducted.
  List<Reference site;

  // A description and/or code explaining the premature termination of the
  //  study.
  CodeableConcept reasonStopped;

  // Comments made about the study by the performer, subject or other
  //  participants.
  List<Annotation note;

  // Describes an expected sequence of events for one of the participants of a
  //  study.  E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out,
  //  follow-up.
  List<ResearchStudy_Arm arm;

  // A goal that the study is aiming to achieve in terms of a scientific
  //  question to be answered by the analysis of data collected during the study.
  List<ResearchStudy_Objective objective
ResearchStudy(
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
this.title,
this._title,
this.protocol,
this.partOf,
this.status,
this._status,
this.primaryPurposeType,
this.phase,
this.category,
this.focus,
this.condition,
this.contact,
this.relatedArtifact,
this.keyword,
this.location,
this.description,
this._description,
this.enrollment,
this.period,
this.sponsor,
this.principalInvestigator,
this.site,
this.reasonStopped,
this.note,
this.arm,
this.objective});

  factory ResearchStudy.fromJson(Map<String, dynamic> json) => _$ResearchStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Arm {

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

  // Unique, human-readable label for this arm of the study.
  String name;

  // Extensions for name
  Element _name;

  // Categorization of study arm, e.g. experimental, active comparator, placebo
  //  comparater.
  CodeableConcept type;

  // A succinct description of the path through the study that would be followed
  //  by a subject adhering to this arm.
  String description;

  // Extensions for description
  Element _description
ResearchStudy_Arm(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type,
this.description,
this._description});

  factory ResearchStudy_Arm.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ArmFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ArmToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Objective {

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

  // Unique, human-readable label for this objective of the study.
  String name;

  // Extensions for name
  Element _name;

  // The kind of study objective.
  CodeableConcept type
ResearchStudy_Objective(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.type});

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ObjectiveFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudy_ObjectiveToJson(this);
}
