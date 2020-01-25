

part 'explanationOfBenefit_Detail.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_Detail {

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
  List<int> noteNumber;
  List<Element> _noteNumber;
  List<ExplanationOfBenefit_Adjudication> adjudication;
  List<ExplanationOfBenefit_SubDetail> subDetail;


ExplanationOfBenefit_Detail(
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
this.noteNumber,
this._noteNumber,
this.adjudication,
this.subDetail});

  factory ExplanationOfBenefit_Detail.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DetailToJson(this);
}