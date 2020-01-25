

part 'claimResponse_AddItem.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_AddItem {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> itemSequence;
  List<Element> _itemSequence;
  List<int> detailSequence;
  List<Element> _detailSequence;
  List<int> subdetailSequence;
  List<Element> _subdetailSequence;
  List<Reference> provider;
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
  CodeableConcept bodySite;
  List<CodeableConcept> subSite;
  List<int> noteNumber;
  List<Element> _noteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_Detail1> detail;


ClaimResponse_AddItem(
      {this.id,
this.extension,
this.modifierExtension,
this.itemSequence,
this._itemSequence,
this.detailSequence,
this._detailSequence,
this.subdetailSequence,
this._subdetailSequence,
this.provider,
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
this.bodySite,
this.subSite,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.detail});

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AddItemToJson(this);
}