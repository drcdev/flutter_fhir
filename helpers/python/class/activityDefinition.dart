

part 'activityDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ActivityDefinition {

  This is a ActivityDefinition resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element _url;
  List<Identifier> identifier;
  String version;
  Element _version;
  String name;
  Element _name;
  String title;
  Element _title;
  String subtitle;
  Element _subtitle;
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  CodeableConcept subjectCodeableConcept;
  Reference subjectReference;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  String description;
  Element _description;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element _purpose;
  String usage;
  Element _usage;
  String copyright;
  Element _copyright;
  String approvalDate;
  Element _approvalDate;
  String lastReviewDate;
  Element _lastReviewDate;
  Period effectivePeriod;
  List<CodeableConcept> topic;
  List<ContactDetail> author;
  List<ContactDetail> editor;
  List<ContactDetail> reviewer;
  List<ContactDetail> endorser;
  List<RelatedArtifact> relatedArtifact;
  List<String> library;
  String kind;
  Element _kind;
  String profile;
  CodeableConcept code;
  String intent;
  Element _intent;
  String priority;
  Element _priority;
  bool doNotPerform;
  Element _doNotPerform;
  Timing timingTiming;
  String timingDateTime;
  Element _timingDateTime;
  Age timingAge;
  Period timingPeriod;
  Range timingRange;
  Duration timingDuration;
  Reference location;
  List<ActivityDefinition_Participant> participant;
  Reference productReference;
  CodeableConcept productCodeableConcept;
  Quantity quantity;
  List<Dosage> dosage;
  List<CodeableConcept> bodySite;
  List<Reference> specimenRequirement;
  List<Reference> observationRequirement;
  List<Reference> observationResultRequirement;
  String transform;
  List<ActivityDefinition_DynamicValue> dynamicValue;


ActivityDefinition(
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
this.url,
this._url,
this.identifier,
this.version,
this._version,
this.name,
this._name,
this.title,
this._title,
this.subtitle,
this._subtitle,
this.status,
this._status,
this.experimental,
this._experimental,
this.subjectCodeableConcept,
this.subjectReference,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.useContext,
this.jurisdiction,
this.purpose,
this._purpose,
this.usage,
this._usage,
this.copyright,
this._copyright,
this.approvalDate,
this._approvalDate,
this.lastReviewDate,
this._lastReviewDate,
this.effectivePeriod,
this.topic,
this.author,
this.editor,
this.reviewer,
this.endorser,
this.relatedArtifact,
this.library,
this.kind,
this._kind,
this.profile,
this.code,
this.intent,
this._intent,
this.priority,
this._priority,
this.doNotPerform,
this._doNotPerform,
this.timingTiming,
this.timingDateTime,
this._timingDateTime,
this.timingAge,
this.timingPeriod,
this.timingRange,
this.timingDuration,
this.location,
this.participant,
this.productReference,
this.productCodeableConcept,
this.quantity,
this.dosage,
this.bodySite,
this.specimenRequirement,
this.observationRequirement,
this.observationResultRequirement,
this.transform,
this.dynamicValue});

  factory ActivityDefinition.fromJson(Map<String, dynamic> json) => _$ActivityDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityDefinitionToJson(this);
}