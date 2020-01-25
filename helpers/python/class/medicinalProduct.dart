

part 'medicinalProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct {

  This is a MedicinalProduct resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept type;
  Coding domain;
  CodeableConcept combinedPharmaceuticalDoseForm;
  CodeableConcept legalStatusOfSupply;
  CodeableConcept additionalMonitoringIndicator;
  List<String> specialMeasures;
  List<Element> _specialMeasures;
  CodeableConcept paediatricUseIndicator;
  List<CodeableConcept> productClassification;
  List<MarketingStatus> marketingStatus;
  List<Reference> pharmaceuticalProduct;
  List<Reference> packagedMedicinalProduct;
  List<Reference> attachedDocument;
  List<Reference> masterFile;
  List<Reference> contact;
  List<Reference> clinicalTrial;
  List<MedicinalProduct_Name> name;
  List<Identifier> crossReference;
  List<MedicinalProduct_ManufacturingBusinessOperation> manufacturingBusinessOperation;
  List<MedicinalProduct_SpecialDesignation> specialDesignation;


MedicinalProduct(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.type,
this.domain,
this.combinedPharmaceuticalDoseForm,
this.legalStatusOfSupply,
this.additionalMonitoringIndicator,
this.specialMeasures,
this._specialMeasures,
this.paediatricUseIndicator,
this.productClassification,
this.marketingStatus,
this.pharmaceuticalProduct,
this.packagedMedicinalProduct,
this.attachedDocument,
this.masterFile,
this.contact,
this.clinicalTrial,
this.name,
this.crossReference,
this.manufacturingBusinessOperation,
this.specialDesignation});

  factory MedicinalProduct.fromJson(Map<String, dynamic> json) => _$MedicinalProductFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductToJson(this);
}