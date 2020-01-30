import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/marketingStatus.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProduct.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProduct {

//  This is a MedicinalProduct resource
String resourceType;

//  The logical id of the resource, as used in the URL for the resource.
// Once assigned, this value never changes.
String id;

//  The metadata about the resource. This is content that is maintained by
// the infrastructure. Changes to the content might not always be
// associated with version changes to the resource.
Meta meta;

//  A reference to a set of rules that were followed when the resource was
// constructed, and which must be understood when processing the content.
// Often, this is a reference to an implementation guide that defines the
// special rules along with other profiles etc.
String implicitRules;

//  Extensions for implicitRules
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

//  A human-readable narrative that contains a summary of the resource and
// can be used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative. Resource definitions may define what content
// should be represented in the narrative to ensure clinical safety.
Narrative text;

//  These resources do not have an independent existence apart from the
// resource that contains them - they cannot be identified independently,
// and nor can they have their own independent transaction scope.
List<ResourceList> contained;

//  May be used to represent additional information that is not part of
// the basic definition of the resource. To make the use of extensions
// safe and manageable, there is a strict set of governance  applied to
// the definition and use of extensions. Though any implementer can define
// an extension, there is a set of requirements that SHALL be met as part
// of the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the resource and that modifies the
// understanding of the element that contains it and/or the understanding
// of the containing element's descendants. Usually modifier elements
// provide negation or qualification. To make the use of extensions safe
// and manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer is allowed to
// define an extension, there is a set of requirements that SHALL be met
// as part of the definition of the extension. Applications processing a
// resource are required to check for modifier extensions. Modifier
// extensions SHALL NOT change the meaning of any elements on Resource or
// DomainResource (including cannot change the meaning of
// modifierExtension itself).
List<Extension> modifierExtension;

//  Business identifier for this product. Could be an MPID.
List<Identifier> identifier;

//  Regulatory type, e.g. Investigational or Authorized.
CodeableConcept type;

//  If this medicine applies to human or veterinary uses.
Coding domain;

//  The dose form for a single part product, or combined form of a
// multiple part product.
CodeableConcept combinedPharmaceuticalDoseForm;

//  The legal status of supply of the medicinal product as classified by
// the regulator.
CodeableConcept legalStatusOfSupply;

//  Whether the Medicinal Product is subject to additional monitoring for
// regulatory reasons.
CodeableConcept additionalMonitoringIndicator;

//  Whether the Medicinal Product is subject to special measures for
// regulatory reasons.
List<String> specialMeasures;

//  Extensions for specialMeasures
List<Element> element_specialMeasures;

//  If authorised for use in children.
CodeableConcept paediatricUseIndicator;

//  Allows the product to be classified by various systems.
List<CodeableConcept> productClassification;

//  Marketing status of the medicinal product, in contrast to marketing
// authorizaton.
List<MarketingStatus> marketingStatus;

//  Pharmaceutical aspects of product.
List<Reference> pharmaceuticalProduct;

//  Package representation for the product.
List<Reference> packagedMedicinalProduct;

//  Supporting documentation, typically for regulatory submission.
List<Reference> attachedDocument;

//  A master file for to the medicinal product (e.g. Pharmacovigilance
// System Master File).
List<Reference> masterFile;

//  A product specific contact, person (in a role), or an organization.
List<Reference> contact;

//  Clinical trials or studies that this product is involved in.
List<Reference> clinicalTrial;

//  The product's name, including full name and possibly coded parts.
List<MedicinalProduct_Name> name;

//  Reference to another product, e.g. for linking authorised to
// investigational product.
List<Identifier> crossReference;

//  An operation applied to the product, for manufacturing or
// adminsitrative purpose.
List<MedicinalProduct_ManufacturingBusinessOperation> manufacturingBusinessOperation;

//  Indicates if the medicinal product has an orphan designation for the
// treatment of a rare disease.
List<MedicinalProduct_SpecialDesignation> specialDesignation;

MedicinalProduct(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
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
    this.element_specialMeasures,
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
    this.specialDesignation
    });

  factory MedicinalProduct.fromJson(Map<String, dynamic> json) => _$MedicinalProductFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_Name {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The full product name.
String productName;

//  Extensions for productName
Element element_productName;

//  Coding words or phrases of the name.
List<MedicinalProduct_NamePart> namePart;

//  Country where the name applies.
List<MedicinalProduct_CountryLanguage> countryLanguage;

MedicinalProduct_Name(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.productName,
    this.element_productName,
    this.namePart,
    this.countryLanguage
    });

  factory MedicinalProduct_Name.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NameFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  A fragment of a product name.
String part;

//  Extensions for part
Element element_part;

//  Idenifying type for this part of the name (e.g. strength part).
Coding type;

MedicinalProduct_NamePart(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.part,
    this.element_part,
    this.type
    });

  factory MedicinalProduct_NamePart.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NamePartFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NamePartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_CountryLanguage {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Country code for where this name applies.
CodeableConcept country;

//  Jurisdiction code for where this name applies.
CodeableConcept jurisdiction;

//  Language code for this name.
CodeableConcept language;

MedicinalProduct_CountryLanguage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.country,
    this.jurisdiction,
    this.language
    });

  factory MedicinalProduct_CountryLanguage.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_CountryLanguageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_CountryLanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_ManufacturingBusinessOperation {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  The type of manufacturing operation.
CodeableConcept operationType;

//  Regulatory authorization reference number.
Identifier authorisationReferenceNumber;

//  Regulatory authorization date.
DateTime effectiveDate;

//  Extensions for effectiveDate
Element element_effectiveDate;

//  To indicate if this proces is commercially confidential.
CodeableConcept confidentialityIndicator;

//  The manufacturer or establishment associated with the process.
List<Reference> manufacturer;

//  A regulator which oversees the operation.
Reference regulator;

MedicinalProduct_ManufacturingBusinessOperation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.operationType,
    this.authorisationReferenceNumber,
    this.effectiveDate,
    this.element_effectiveDate,
    this.confidentialityIndicator,
    this.manufacturer,
    this.regulator
    });

  factory MedicinalProduct_ManufacturingBusinessOperation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_ManufacturingBusinessOperationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_ManufacturingBusinessOperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_SpecialDesignation {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  May be used to represent additional information that is not part of
// the basic definition of the element and that modifies the understanding
// of the element in which it is contained and/or the understanding of the
// containing element's descendants. Usually modifier elements provide
// negation or qualification. To make the use of extensions safe and
// manageable, there is a strict set of governance applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension. Applications processing a resource are
// required to check for modifier extensions. Modifier extensions SHALL
// NOT change the meaning of any elements on Resource or DomainResource
// (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

//  Identifier for the designation, or procedure number.
List<Identifier> identifier;

//  The type of special designation, e.g. orphan drug, minor use.
CodeableConcept type;

//  The intended use of the product, e.g. prevention, treatment.
CodeableConcept intendedUse;

//  Condition for which the medicinal use applies.
CodeableConcept indicationCodeableConcept;

//  Condition for which the medicinal use applies.
Reference indicationReference;

//  For example granted, pending, expired or withdrawn.
CodeableConcept status;

//  Date when the designation was granted.
DateTime date;

//  Extensions for date
Element element_date;

//  Animal species for which this applies.
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
    this.element_date,
    this.species
    });

  factory MedicinalProduct_SpecialDesignation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_SpecialDesignationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_SpecialDesignationToJson(this);
}

