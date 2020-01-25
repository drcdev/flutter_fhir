

part 'claimResponse_Detail1.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element _factor;
  Money net;
  List<int> noteNumber;
  List<Element> _noteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_SubDetail1> subDetail;


ClaimResponse_Detail1(
      {this.id,
this.extension,
this.modifierExtension,
this.productOrService,
this.modifier,
this.quantity,
this.unitPrice,
this.factor,
this._factor,
this.net,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.subDetail});

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_Detail1ToJson(this);
}