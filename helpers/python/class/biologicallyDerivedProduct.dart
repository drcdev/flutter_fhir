
part 'biologicallyDerivedProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct {
  
  // This is a BiologicallyDerivedProduct 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // This records identifiers associated with this biologically derived product
  //  instance that are defined by business processes and/or used to refer to it when
  //  a direct URL reference to the resource itself is not appropriate (e.g. in CDA
  //  documents, or in written / printed documentation).
  List<Identifier identifier;

  // Broad category of this product.Enum enum; //
  //  organtissuefluidcellsbiologicalAgent productCategory;

  // Extensions for productCategory
  Element _productCategory;

  // A code that identifies the kind of this biologically derived product
  //  (SNOMED Ctcode).
  CodeableConcept productCode;

  // Whether the product is currently available.Enum enum; //
  //  availableunavailable status;

  // Extensions for status
  Element _status;

  // Procedure request to obtain this biologically derived product.
  List<Reference request;

  // Number of discrete units within this product.
  int quantity;

  // Extensions for quantity
  Element _quantity;

  // Parent product (if any).
  List<Reference parent;

  // How this product was collected.
  BiologicallyDerivedProduct_Collection collection;

  // Any processing of the product during collection that does not change the
  //  fundamental nature of the product. For example adding anti-coagulants during
  //  the collection of Peripheral Blood Stem Cells.
  List<BiologicallyDerivedProduct_Processing processing;

  // Any manipulation of product post-collection that is intended to alter the
  //  product.  For example a buffy-coat enrichment or CD8 reduction of Peripheral
  //  Blood Stem Cells to make it more suitable for infusion.
  BiologicallyDerivedProduct_Manipulation manipulation;

  // Product storage.
  List<BiologicallyDerivedProduct_Storage storage
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

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Collection {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Healthcare professional who is performing the collection.
  Reference collector;

  // The patient or entity, such as a hospital or vendor in the case of a
  //  processed/manipulated/manufactured product, providing the product.
  Reference source;

  // Time of product collection. string collectedDateTime;

  // Extensions for collectedDateTime
  Element _collectedDateTime;

  // Time of product collection.
  Period collectedPeriod
BiologicallyDerivedProduct_Collection(
      {this.id,
this.extension,
this.modifierExtension,
this.collector,
this.source,
this.collectedDateTime,
this._collectedDateTime,
this.collectedPeriod});

  factory BiologicallyDerivedProduct_Collection.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Manipulation {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Description of manipulation.
  String description;

  // Extensions for description
  Element _description;

  // Time of manipulation. string timeDateTime;

  // Extensions for timeDateTime
  Element _timeDateTime;

  // Time of manipulation.
  Period timePeriod
BiologicallyDerivedProduct_Manipulation(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.timeDateTime,
this._timeDateTime,
this.timePeriod});

  factory BiologicallyDerivedProduct_Manipulation.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ManipulationFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_ManipulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Processing {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Description of of processing.
  String description;

  // Extensions for description
  Element _description;

  // Procesing code.
  CodeableConcept procedure;

  // Substance added during processing.
  Reference additive;

  // Time of processing. string timeDateTime;

  // Extensions for timeDateTime
  Element _timeDateTime;

  // Time of processing.
  Period timePeriod
BiologicallyDerivedProduct_Processing(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.procedure,
this.additive,
this.timeDateTime,
this._timeDateTime,
this.timePeriod});

  factory BiologicallyDerivedProduct_Processing.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Storage {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Description of storage.
  String description;

  // Extensions for description
  Element _description;

  // Storage temperature.
  double temperature;

  // Extensions for temperature
  Element _temperature;

  // Temperature scale used.Enum enum; // farenheitcelsiuskelvin scale;

  // Extensions for scale
  Element _scale;

  // Storage timeperiod.
  Period duration
BiologicallyDerivedProduct_Storage(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.temperature,
this._temperature,
this.scale,
this._scale,
this.duration});

  factory BiologicallyDerivedProduct_Storage.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_StorageFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_StorageToJson(this);
}
