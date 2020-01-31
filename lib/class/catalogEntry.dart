import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'catalogEntry.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogEntry {

  //  This is a CatalogEntry resource
  final String resourceType= 'CatalogEntry';

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

  //  Used in supporting different identifiers for the same product, e.g.
  // manufacturer code and retailer code.
  List<Identifier> identifier;

  //  The type of item - medication, device, service, protocol or other.
  CodeableConcept type;

  //  Whether the entry represents an orderable item.
  bool orderable;

  //  Extensions for orderable
  Element element_orderable;

  //  The item in a catalog or definition.
  Reference referencedItem;

  //  Used in supporting related concepts, e.g. NDC to RxNorm.
  List<Identifier> additionalIdentifier;

  //  Classes of devices, or ATC for medication.
  List<CodeableConcept> classification;

  //  Used to support catalog exchange even for unsupported products, e.g.
  // getting list of medications even if not prescribable.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element element_status;

  //  The time period in which this catalog entry is expected to be active.
  Period validityPeriod;

  //  The date until which this catalog entry is expected to be active.
  DateTime validTo;

  //  Extensions for validTo
  Element element_validTo;

  //  Typically date of issue is different from the beginning of the
  // validity. This can be used to see when an item was last updated.
  DateTime lastUpdated;

  //  Extensions for lastUpdated
  Element element_lastUpdated;

  //  Used for examplefor Out of Formulary, or any specifics.
  List<CodeableConcept> additionalCharacteristic;

  //  User for example for ATC classification, or.
  List<CodeableConcept> additionalClassification;

  //  Used for example, to point to a substance, or to a device used to
  // administer a medication.
  List<CatalogEntry_RelatedEntry> relatedEntry;

CatalogEntry(
  this.referencedItem,
    {this.id,
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
    this.orderable,
    this.element_orderable,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.element_status,
    this.validityPeriod,
    this.validTo,
    this.element_validTo,
    this.lastUpdated,
    this.element_lastUpdated,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry
    });

  factory CatalogEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CatalogEntry_RelatedEntry {

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

  //  The type of relation to the related item: child, parent,
  // packageContent, containerPackage, usedIn, uses, requires, etc.
  String relationtype; // <code> enum: triggers/is-replaced-by;

  //  Extensions for relationtype
  Element element_relationtype;

  //  The reference to the related item.
  Reference item;

CatalogEntry_RelatedEntry(
  this.item,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.relationtype,
    this.element_relationtype
    });

  factory CatalogEntry_RelatedEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntry_RelatedEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntry_RelatedEntryToJson(this);
}

