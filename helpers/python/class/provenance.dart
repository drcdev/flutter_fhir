

part 'provenance.g.dart';

@JsonSerializable(explicitToJson: true)
class Provenance {

  This is a Provenance resource resourceType;
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
  List<Reference> target;
  Period occurredPeriod;
  String occurredDateTime;
  Element _occurredDateTime;
  DateTime recorded;
  Element _recorded;
  List<String> policy;
  List<Element> _policy;
  Reference location;
  List<CodeableConcept> reason;
  CodeableConcept activity;
  List<Provenance_Agent> agent;
  List<Provenance_Entity> entity;
  List<Signature> signature;


Provenance(
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
this.target,
this.occurredPeriod,
this.occurredDateTime,
this._occurredDateTime,
this.recorded,
this._recorded,
this.policy,
this._policy,
this.location,
this.reason,
this.activity,
this.agent,
this.entity,
this.signature});

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() => _$ProvenanceToJson(this);
}