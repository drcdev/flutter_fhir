part 'medicinalProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct {

MedicinalProduct resourceType;
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
      this.specialDesignation,
      });

  factory MedicinalProduct.fromJson(Map<String, dynamic> json) => _$MedicinalProductFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_Name {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String productName;
Element _productName;
List<MedicinalProduct_NamePart> namePart;
List<MedicinalProduct_CountryLanguage> countryLanguage;

MedicinalProduct_Name(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.productName,
      this._productName,
      this.namePart,
      this.countryLanguage,
      });

  factory MedicinalProduct_Name.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NameFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String part;
Element _part;
Coding type;

MedicinalProduct_NamePart(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.part,
      this._part,
      this.type,
      });

  factory MedicinalProduct_NamePart.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NamePartFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_NamePartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_CountryLanguage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept country;
CodeableConcept jurisdiction;
CodeableConcept language;

MedicinalProduct_CountryLanguage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.country,
      this.jurisdiction,
      this.language,
      });

  factory MedicinalProduct_CountryLanguage.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_CountryLanguageFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_CountryLanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_ManufacturingBusinessOperation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept operationType;
Identifier authorisationReferenceNumber;
DateTime effectiveDate;
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
      this.regulator,
      });

  factory MedicinalProduct_ManufacturingBusinessOperation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_ManufacturingBusinessOperationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_ManufacturingBusinessOperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_SpecialDesignation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
CodeableConcept intendedUse;
CodeableConcept indicationCodeableConcept;
Reference indicationReference;
CodeableConcept status;
DateTime date;
Element _date;
CodeableConcept species;

MedicinalProduct_SpecialDesignation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.intendedUse,
      this.indicationCodeableConcept,
      this.indicationReference,
      this.status,
      this.date,
      this._date,
      this.species,
      });

  factory MedicinalProduct_SpecialDesignation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_SpecialDesignationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProduct_SpecialDesignationToJson(this);
}

