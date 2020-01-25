

part 'insurancePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan {

  This is a InsurancePlan resource resourceType;
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
  enum: draftactiveretiredunknown status;
  Element _status;
  List<CodeableConcept> type;
  String name;
  Element _name;
  List<String> alias;
  List<Element> _alias;
  Period period;
  Reference ownedBy;
  Reference administeredBy;
  List<Reference> coverageArea;
  List<InsurancePlan_Contact> contact;
  List<Reference> endpoint;
  List<Reference> network;
  List<InsurancePlan_Coverage> coverage;
  List<InsurancePlan_Plan> plan;


InsurancePlan(
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
this.status,
this._status,
this.type,
this.name,
this._name,
this.alias,
this._alias,
this.period,
this.ownedBy,
this.administeredBy,
this.coverageArea,
this.contact,
this.endpoint,
this.network,
this.coverage,
this.plan});

  factory InsurancePlan.fromJson(Map<String, dynamic> json) => _$InsurancePlanFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlanToJson(this);
}