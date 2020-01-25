

part 'medicinalProduct_ManufacturingBusinessOperation.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_ManufacturingBusinessOperation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept operationType;
  Identifier authorisationReferenceNumber;
  StringTime effectiveDate;
  Element _effectiveDate;
  CodeableConcept confidentialityIndicator;
  List<Reference> manufacturer;
  Reference regulator;


MedicinalProduct_ManufacturingBusinessOperation(
      {this.id,
this.extension,
this.modifierExtension,
this.operationType,
this.authorisationReferenceNumber,
this.effectiveDate,
this._effectiveDate,
this.confidentialityIndicator,
this.manufacturer,
this.regulator});

  factory MedicinalProduct_ManufacturingBusinessOperation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_ManufacturingBusinessOperationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_ManufacturingBusinessOperationToJson(this);
}