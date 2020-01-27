
part 'familyMemberHistory.g.dart';

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory {
  
  // This is a FamilyMemberHistory 
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

  // Business identifiers assigned to this family member history by the
  //  performer or other systems which remain constant as the resource is updated and
  //  propagates from server to server.
  List<Identifier identifier;

  // The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  //  definition that is adhered to in whole or in part by this FamilyMemberHistory.
  List<String instantiatesCanonical;

  // The URL pointing to an externally maintained protocol, guideline, orderset
  //  or other definition that is adhered to in whole or in part by this
  //  FamilyMemberHistory.
  List<String instantiatesUri;

  // Extensions for instantiatesUri
  List<Element _instantiatesUri;

  // A code specifying the status of the record of the family history of a
  //  specific family member.Enum enum; //
  //  partialcompletedentered-in-errorhealth-unknown status;

  // Extensions for status
  Element _status;

  // Describes why the family member's history is not available.
  CodeableConcept dataAbsentReason;

  // The person who this history concerns.
  Reference patient;

  // The date (and possibly time) when the family member history was recorded or
  //  last updated.
  StringTime date;

  // Extensions for date
  Element _date;

  // This will either be a name or a description; e.g. "Aunt Susan", "my cousin
  //  with the red hair".
  String name;

  // Extensions for name
  Element _name;

  // The type of relationship this person has to the patient (father, mother,
  //  brother etc.).
  CodeableConcept relationship;

  // The birth sex of the family member.
  CodeableConcept sex;

  // The actual or approximate date of birth of the relative.
  Period bornPeriod;

  // The actual or approximate date of birth of the relative. string bornDate;

  // Extensions for bornDate
  Element _bornDate;

  // The actual or approximate date of birth of the relative. string bornString;

  // Extensions for bornString
  Element _bornString;

  // The age of the relative at the time the family member history is recorded.
  Age ageAge;

  // The age of the relative at the time the family member history is recorded.
  Range ageRange;

  // The age of the relative at the time the family member history is recorded.
  //  string ageString;

  // Extensions for ageString
  Element _ageString;

  // If true, indicates that the age value specified is an estimated value.
  bool estimatedAge;

  // Extensions for estimatedAge
  Element _estimatedAge;

  // Deceased flag or the actual or approximate age of the relative at the time
  //  of death for the family member history record. boolean deceasedBoolean;

  // Extensions for deceasedBoolean
  Element _deceasedBoolean;

  // Deceased flag or the actual or approximate age of the relative at the time
  //  of death for the family member history record.
  Age deceasedAge;

  // Deceased flag or the actual or approximate age of the relative at the time
  //  of death for the family member history record.
  Range deceasedRange;

  // Deceased flag or the actual or approximate age of the relative at the time
  //  of death for the family member history record. string deceasedDate;

  // Extensions for deceasedDate
  Element _deceasedDate;

  // Deceased flag or the actual or approximate age of the relative at the time
  //  of death for the family member history record. string deceasedString;

  // Extensions for deceasedString
  Element _deceasedString;

  // Describes why the family member history occurred in coded or textual form.
  List<CodeableConcept reasonCode;

  // Indicates a Condition, Observation, AllergyIntolerance, or
  //  QuestionnaireResponse that justifies this family member history event.
  List<Reference reasonReference;

  // This property allows a non condition-specific note to the made about the
  //  related person. Ideally, the note would be in the condition property, but this
  //  is not always possible.
  List<Annotation note;

  // The significant Conditions (or condition) that the family member had.   //
  //  This is a repeating section to allow a system to represent more than one
  //  condition per resource, though there is nothing stopping multiple resources -
  //  one per condition.
  List<FamilyMemberHistory_Condition condition
FamilyMemberHistory(
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
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.status,
this._status,
this.dataAbsentReason,
this.patient,
this.date,
this._date,
this.name,
this._name,
this.relationship,
this.sex,
this.bornPeriod,
this.bornDate,
this._bornDate,
this.bornString,
this._bornString,
this.ageAge,
this.ageRange,
this.ageString,
this._ageString,
this.estimatedAge,
this._estimatedAge,
this.deceasedBoolean,
this._deceasedBoolean,
this.deceasedAge,
this.deceasedRange,
this.deceasedDate,
this._deceasedDate,
this.deceasedString,
this._deceasedString,
this.reasonCode,
this.reasonReference,
this.note,
this.condition});

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory_Condition {

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

  // The actual condition specified. Could be a coded condition (like MI or
  //  Diabetes) or a less specific string like 'cancer' depending on how much is
  //  known about the condition and the capabilities of the creating system.
  CodeableConcept code;

  // Indicates what happened following the condition.  If the condition resulted
  //  in death, deceased date is captured on the relation.
  CodeableConcept outcome;

  // This condition contributed to the cause of death of the related person. If
  //  contributedToDeath is not populated, then it is unknown.
  bool contributedToDeath;

  // Extensions for contributedToDeath
  Element _contributedToDeath;

  // Either the age of onset, range of approximate age or descriptive string can
  //  be recorded.  For conditions with multiple occurrences, this describes the
  //  first known occurrence.
  Age onsetAge;

  // Either the age of onset, range of approximate age or descriptive string can
  //  be recorded.  For conditions with multiple occurrences, this describes the
  //  first known occurrence.
  Range onsetRange;

  // Either the age of onset, range of approximate age or descriptive string can
  //  be recorded.  For conditions with multiple occurrences, this describes the
  //  first known occurrence.
  Period onsetPeriod;

  // Either the age of onset, range of approximate age or descriptive string can
  //  be recorded.  For conditions with multiple occurrences, this describes the
  //  first known occurrence. string onsetString;

  // Extensions for onsetString
  Element _onsetString;

  // An area where general notes can be placed about this specific condition.
  List<Annotation note
FamilyMemberHistory_Condition(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.outcome,
this.contributedToDeath,
this._contributedToDeath,
this.onsetAge,
this.onsetRange,
this.onsetPeriod,
this.onsetString,
this._onsetString,
this.note});

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistory_ConditionToJson(this);
}
