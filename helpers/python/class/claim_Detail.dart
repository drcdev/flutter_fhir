

part 'claim_Detail.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_Detail {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  CodeableConcept revenue;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  List<CodeableConcept> programCode;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element _factor;
  Money net;
  List<Reference> udi;
  List<Claim_SubDetail> subDetail;


Claim_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.revenue,
this.category,
this.productOrService,
this.modifier,
this.programCode,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.udi,
this.subDetail});

  factory Claim_Detail.fromJson(Map<String, dynamic> json) => _$Claim_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DetailToJson(this);
}