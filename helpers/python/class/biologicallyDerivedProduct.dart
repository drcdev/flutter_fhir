

part 'biologicallyDerivedProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct {

  This is a BiologicallyDerivedProduct resource resourceType;
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
  enum: organtissuefluidcellsbiologicalAgent productCategory;
  Element _productCategory;
  CodeableConcept productCode;
  enum: availableunavailable status;
  Element _status;
  List<Reference> request;
  int quantity;
  Element _quantity;
  List<Reference> parent;
  BiologicallyDerivedProduct_Collection collection;
  List<BiologicallyDerivedProduct_Processing> processing;
  BiologicallyDerivedProduct_Manipulation manipulation;
  List<BiologicallyDerivedProduct_Storage> storage;


BiologicallyDerivedProduct(
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
this.productCategory,
this._productCategory,
this.productCode,
this.status,
this._status,
this.request,
this.quantity,
this._quantity,
this.parent,
this.collection,
this.processing,
this.manipulation,
this.storage});

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProductFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProductToJson(this);
}