

part 'coverageEligibilityRequest_Item.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_Item {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> supportingInfoSequence;
  List<Element> _supportingInfoSequence;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Reference provider;
  Quantity quantity;
  Money unitPrice;
  Reference facility;
  List<CoverageEligibilityRequest_Diagnosis> diagnosis;
  List<Reference> detail;


CoverageEligibilityRequest_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.supportingInfoSequence,
this._supportingInfoSequence,
this.category,
this.productOrService,
this.modifier,
this.provider,
this.quantity,
this.unitPrice,
this.facility,
this.diagnosis,
this.detail});

  factory CoverageEligibilityRequest_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_ItemToJson(this);
}