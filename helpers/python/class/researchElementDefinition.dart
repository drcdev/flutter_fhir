part 'researchElementDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition {

ResearchElementDefinition resourceType;
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
String shortTitle;
Element _shortTitle;
String subtitle;
Element _subtitle;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
CodeableConcept subjectCodeableConcept;
Reference subjectReference;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<String> comment;
List<Element> _comment;
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
String type; // <code> enum: population/exposure/outcome;
Element _type;
String variableType; // <code> enum: dichotomous/continuous/descriptive;
Element _variableType;
List<ResearchElementDefinition_Characteristic> characteristic;

ResearchElementDefinition(
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
      this.shortTitle,
      this._shortTitle,
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
      this.comment,
      this._comment,
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
      this.type,
      this._type,
      this.variableType,
      this._variableType,
      this.characteristic,
      });

  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ResearchElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchElementDefinition_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept definitionCodeableConcept;
String definitionCanonical; //  pattern: ^\S*$
Element _definitionCanonical;
Expression definitionExpression;
DataRequirement definitionDataRequirement;
List<UsageContext> usageContext;
bool exclude;
Element _exclude;
CodeableConcept unitOfMeasure;
String studyEffectiveDescription;
Element _studyEffectiveDescription;
String studyEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _studyEffectiveDateTime;
Period studyEffectivePeriod;
Duration studyEffectiveDuration;
Timing studyEffectiveTiming;
Duration studyEffectiveTimeFromStart;
String studyEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _studyEffectiveGroupMeasure;
String participantEffectiveDescription;
Element _participantEffectiveDescription;
String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _participantEffectiveDateTime;
Period participantEffectivePeriod;
Duration participantEffectiveDuration;
Timing participantEffectiveTiming;
Duration participantEffectiveTimeFromStart;
String participantEffectiveGroupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _participantEffectiveGroupMeasure;

ResearchElementDefinition_Characteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.definitionCodeableConcept,
      this.definitionCanonical,
      this._definitionCanonical,
      this.definitionExpression,
      this.definitionDataRequirement,
      this.usageContext,
      this.exclude,
      this._exclude,
      this.unitOfMeasure,
      this.studyEffectiveDescription,
      this._studyEffectiveDescription,
      this.studyEffectiveDateTime,
      this._studyEffectiveDateTime,
      this.studyEffectivePeriod,
      this.studyEffectiveDuration,
      this.studyEffectiveTiming,
      this.studyEffectiveTimeFromStart,
      this.studyEffectiveGroupMeasure,
      this._studyEffectiveGroupMeasure,
      this.participantEffectiveDescription,
      this._participantEffectiveDescription,
      this.participantEffectiveDateTime,
      this._participantEffectiveDateTime,
      this.participantEffectivePeriod,
      this.participantEffectiveDuration,
      this.participantEffectiveTiming,
      this.participantEffectiveTimeFromStart,
      this.participantEffectiveGroupMeasure,
      this._participantEffectiveGroupMeasure,
      });

  factory ResearchElementDefinition_Characteristic.fromJson(Map<String, dynamic> json) => _$ResearchElementDefinition_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$ResearchElementDefinition_CharacteristicToJson(this);
}

