

part 'coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {

  This is a Coverage resource resourceType;
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
  String status;
  Element _status;
  CodeableConcept type;
  Reference policyHolder;
  Reference subscriber;
  String subscriberId;
  Element _subscriberId;
  Reference beneficiary;
  String dependent;
  Element _dependent;
  CodeableConcept relationship;
  Period period;
  List<Reference> payor;
  List<Coverage_Class> class;
  int order;
  Element _order;
  String network;
  Element _network;
  List<Coverage_CostToBeneficiary> costToBeneficiary;
  bool subrogation;
  Element _subrogation;
  List<Reference> contract;


Coverage(
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
this.policyHolder,
this.subscriber,
this.subscriberId,
this._subscriberId,
this.beneficiary,
this.dependent,
this._dependent,
this.relationship,
this.period,
this.payor,
this.class,
this.order,
this._order,
this.network,
this._network,
this.costToBeneficiary,
this.subrogation,
this._subrogation,
this.contract});

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}