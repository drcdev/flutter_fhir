import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/productShelfLife.dart';
import 'package:flutter_fhir/class/prodCharacteristic.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/marketingStatus.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProductPackaged.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged {

//  This is a MedicinalProductPackaged resource
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

//  The base language in which the resource is written.
String language;

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

//  Unique identifier.
List<Identifier> identifier;

//  The product with this is a pack for.
List<Reference> subject;

//  Textual description.
String description;

//  The legal status of supply of the medicinal product as classified by
// the regulator.
CodeableConcept legalStatusOfSupply;

//  Marketing information.
List<MarketingStatus> marketingStatus;

//  Manufacturer of this Package Item.
Reference marketingAuthorization;

//  Manufacturer of this Package Item.
List<Reference> manufacturer;

//  Batch numbering.
List<MedicinalProductPackaged_BatchIdentifier> batchIdentifier;

//  A packaging item, as a contained for medicine, possibly with other
// packaging items within.
List<MedicinalProductPackaged_PackageItem> packageItem;

MedicinalProductPackaged(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.subject,
    this.description,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.marketingAuthorization,
    this.manufacturer,
    this.batchIdentifier,
    this.packageItem
    });

  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackagedFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackagedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_BatchIdentifier {

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

//  A number appearing on the outer packaging of a specific batch.
Identifier outerPackaging;

//  A number appearing on the immediate packaging (and not the outer
// packaging).
Identifier immediatePackaging;

MedicinalProductPackaged_BatchIdentifier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.outerPackaging,
    this.immediatePackaging
    });

  factory MedicinalProductPackaged_BatchIdentifier.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_BatchIdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackaged_BatchIdentifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_PackageItem {

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

//  Including possibly Data Carrier Identifier.
List<Identifier> identifier;

//  The physical type of the container of the medicine.
CodeableConcept type;

//  The quantity of this package in the medicinal product, at the current
// level of packaging. The outermost is always 1.
Quantity quantity;

//  Material type of the package item.
List<CodeableConcept> material;

//  A possible alternate material for the packaging.
List<CodeableConcept> alternateMaterial;

//  A device accompanying a medicinal product.
List<Reference> device;

//  The manufactured item as contained in the packaged medicinal product.
List<Reference> manufacturedItem;

//  Allows containers within containers.
List<MedicinalProductPackaged_PackageItem> packageItem;

//  Dimensions, color etc.
ProdCharacteristic physicalCharacteristics;

//  Other codeable characteristics.
List<CodeableConcept> otherCharacteristics;

//  Shelf Life and storage information.
List<ProductShelfLife> shelfLifeStorage;

//  Manufacturer of this Package Item.
List<Reference> manufacturer;

MedicinalProductPackaged_PackageItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
    this.material,
    this.alternateMaterial,
    this.device,
    this.manufacturedItem,
    this.packageItem,
    this.physicalCharacteristics,
    this.otherCharacteristics,
    this.shelfLifeStorage,
    this.manufacturer
    });

  factory MedicinalProductPackaged_PackageItem.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_PackageItemFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackaged_PackageItemToJson(this);
}

