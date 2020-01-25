

part 'explanationOfBenefit_Detail1.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail1 {

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
  List<ExplanationOfBenefit_Adjudication> adjudication;
  List<ExplanationOfBenefit_SubDetail1> subDetail;


ExplanationOfBenefit_Detail1(
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

  factory ExplanationOfBenefit_Detail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_Detail1ToJson(this);
}