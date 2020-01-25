

part 'claim_Item.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Item {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  List<int> careTeamSequence;
  List<Element> _careTeamSequence;
  List<int> diagnosisSequence;
  List<Element> _diagnosisSequence;
  List<int> procedureSequence;
  List<Element> _procedureSequence;
  List<int> informationSequence;
  List<Element> _informationSequence;
  CodeableConcept revenue;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  List<CodeableConcept> programCode;
  String servicedDate;
  Element _servicedDate;
  Period servicedPeriod;
  CodeableConcept locationCodeableConcept;
  Address locationAddress;
  Reference locationReference;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element _factor;
  Money net;
  List<Reference> udi;
  CodeableConcept bodySite;
  List<CodeableConcept> subSite;
  List<Reference> encounter;
  List<Claim_Detail> detail;


Claim_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.careTeamSequence,
this._careTeamSequence,
this.diagnosisSequence,
this._diagnosisSequence,
this.procedureSequence,
this._procedureSequence,
this.informationSequence,
this._informationSequence,
this.revenue,
this.category,
this.productOrService,
this.modifier,
this.programCode,
this.servicedDate,
this._servicedDate,
this.servicedPeriod,
this.locationCodeableConcept,
this.locationAddress,
this.locationReference,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.udi,
this.bodySite,
this.subSite,
this.encounter,
this.detail});

  factory Claim_Item.fromJson(Map<String, dynamic> json) => _$Claim_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ItemToJson(this);
}