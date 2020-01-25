

part 'claim_SubDetail.g.dart';

@JsonSerializable(explicitToJson: true)
class Claim_SubDetail {

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


Claim_SubDetail(
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
this.udi});

  factory Claim_SubDetail.fromJson(Map<String, dynamic> json) => _$Claim_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SubDetailToJson(this);
}