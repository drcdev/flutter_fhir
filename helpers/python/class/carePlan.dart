part 'carePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan {

CarePlan resourceType;
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
List<Identifier> identifier;
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> replaces;
List<Reference> partOf;
String status;
Element _status;
String intent;
Element _intent;
List<CodeableConcept> category;
String title;
Element _title;
String description;
Element _description;
Reference subject;
Reference encounter;
Period period;
DateTime created;
Element _created;
Reference author;
List<Reference> contributor;
List<Reference> careTeam;
List<Reference> addresses;
List<Reference> supportingInfo;
List<Reference> goal;
List<CarePlan_Activity> activity;
List<Annotation> note;

CarePlan(
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
      this.basedOn,
      this.replaces,
      this.partOf,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.category,
      this.title,
      this._title,
      this.description,
      this._description,
      this.subject,
      this.encounter,
      this.period,
      this.created,
      this._created,
      this.author,
      this.contributor,
      this.careTeam,
      this.addresses,
      this.supportingInfo,
      this.goal,
      this.activity,
      this.note,
      });

  factory CarePlan.fromJson(Map<String, dynamic> json) => _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() _$CarePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CarePlan_Activity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> outcomeCodeableConcept;
List<Reference> outcomeReference;
List<Annotation> progress;
Reference reference;
CarePlan_Detail detail;

CarePlan_Activity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.outcomeCodeableConcept,
      this.outcomeReference,
      this.progress,
      this.reference,
      this.detail,
      });

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) => _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() _$CarePlan_ActivityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CarePlan_Detail {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String kind;
Element _kind;
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
CodeableConcept code;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> goal;
String status; // <code> enum: not-started/scheduled/in-progress/on-hold/completed/cancelled/stopped/unknown/entered-in-error;
Element _status;
CodeableConcept statusReason;
bool doNotPerform;
Element _doNotPerform;
Timing scheduledTiming;
Period scheduledPeriod;
String scheduledString; //  pattern: ^[ \r\n\t\S]+$
Element _scheduledString;
Reference location;
List<Reference> performer;
CodeableConcept productCodeableConcept;
Reference productReference;
Quantity dailyAmount;
Quantity quantity;
String description;
Element _description;

CarePlan_Detail(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.kind,
      this._kind,
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.code,
      this.reasonCode,
      this.reasonReference,
      this.goal,
      this.status,
      this._status,
      this.statusReason,
      this.doNotPerform,
      this._doNotPerform,
      this.scheduledTiming,
      this.scheduledPeriod,
      this.scheduledString,
      this._scheduledString,
      this.location,
      this.performer,
      this.productCodeableConcept,
      this.productReference,
      this.dailyAmount,
      this.quantity,
      this.description,
      this._description,
      });

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) => _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() _$CarePlan_DetailToJson(this);
}

