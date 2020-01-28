part 'biologicallyDerivedProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct {

BiologicallyDerivedProduct resourceType;
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
String productCategory; // <code> enum: organ/tissue/fluid/cells/biologicalAgent;
Element _productCategory;
CodeableConcept productCode;
String status; // <code> enum: available/unavailable;
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
      this.storage,
      });

  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProductFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Collection {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference collector;
Reference source;
String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _collectedDateTime;
Period collectedPeriod;

BiologicallyDerivedProduct_Collection(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.collector,
      this.source,
      this.collectedDateTime,
      this._collectedDateTime,
      this.collectedPeriod,
      });

  factory BiologicallyDerivedProduct_Collection.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_CollectionFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Processing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept procedure;
Reference additive;
String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timeDateTime;
Period timePeriod;

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
      this.timePeriod,
      });

  factory BiologicallyDerivedProduct_Processing.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ProcessingFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Manipulation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timeDateTime;
Period timePeriod;

BiologicallyDerivedProduct_Manipulation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.timeDateTime,
      this._timeDateTime,
      this.timePeriod,
      });

  factory BiologicallyDerivedProduct_Manipulation.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_ManipulationFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_ManipulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Storage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
double temperature;
Element _temperature;
String scale; // <code> enum: farenheit/celsius/kelvin;
Element _scale;
Period duration;

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
      this.duration,
      });

  factory BiologicallyDerivedProduct_Storage.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_StorageFromJson(json);
  Map<String, dynamic> toJson() _$BiologicallyDerivedProduct_StorageToJson(this);
}

