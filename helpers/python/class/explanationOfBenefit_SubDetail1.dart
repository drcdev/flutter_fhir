

part 'explanationOfBenefit_SubDetail1.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_SubDetail1 {

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


ExplanationOfBenefit_SubDetail1(
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
this.adjudication});

  factory ExplanationOfBenefit_SubDetail1.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SubDetail1ToJson(this);
}