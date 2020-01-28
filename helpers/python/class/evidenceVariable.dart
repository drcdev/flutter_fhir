part 'evidenceVariable.g.dart';

@JsonSerializable(explicitToJson: true)
class EvidenceVariable {

EvidenceVariable resourceType;
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
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<Annotation> note;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
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
String type; // <code> enum: dichotomous/continuous/descriptive;
Element _type;
List<EvidenceVariable_Characteristic> characteristic;

EvidenceVariable(
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
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.note,
      this.useContext,
      this.jurisdiction,
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
      this.type,
      this._type,
      this.characteristic,
      });

  factory EvidenceVariable.fromJson(Map<String, dynamic> json) => _$EvidenceVariableFromJson(json);
  Map<String, dynamic> toJson() _$EvidenceVariableToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EvidenceVariable_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
Reference definitionReference;
String definitionCanonical; //  pattern: ^\S*$
Element _definitionCanonical;
CodeableConcept definitionCodeableConcept;
Expression definitionExpression;
DataRequirement definitionDataRequirement;
TriggerDefinition definitionTriggerDefinition;
List<UsageContext> usageContext;
bool exclude;
Element _exclude;
String participantEffectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _participantEffectiveDateTime;
Period participantEffectivePeriod;
Duration participantEffectiveDuration;
Timing participantEffectiveTiming;
Duration timeFromStart;
String groupMeasure; // <code> enum: mean/median/mean-of-mean/mean-of-median/median-of-mean/median-of-median;
Element _groupMeasure;

EvidenceVariable_Characteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.definitionReference,
      this.definitionCanonical,
      this._definitionCanonical,
      this.definitionCodeableConcept,
      this.definitionExpression,
      this.definitionDataRequirement,
      this.definitionTriggerDefinition,
      this.usageContext,
      this.exclude,
      this._exclude,
      this.participantEffectiveDateTime,
      this._participantEffectiveDateTime,
      this.participantEffectivePeriod,
      this.participantEffectiveDuration,
      this.participantEffectiveTiming,
      this.timeFromStart,
      this.groupMeasure,
      this._groupMeasure,
      });

  factory EvidenceVariable_Characteristic.fromJson(Map<String, dynamic> json) => _$EvidenceVariable_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$EvidenceVariable_CharacteristicToJson(this);
}

