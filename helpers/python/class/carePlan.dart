

part 'carePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class CarePlan {

  This is a CarePlan resource resourceType;
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
  StringTime created;
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
this.note});

  factory CarePlan.fromJson(Map<String, dynamic> json) => _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlanToJson(this);
}