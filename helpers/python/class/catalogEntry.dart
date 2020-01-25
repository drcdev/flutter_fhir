

part 'catalogEntry.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogEntry {

  This is a CatalogEntry resource resourceType;
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
  bool orderable;
  Element _orderable;
  Reference referencedItem;
  List<Identifier> additionalIdentifier;
  List<CodeableConcept> classification;
  enum: draftactiveretiredunknown status;
  Element _status;
  Period validityPeriod;
  StringTime validTo;
  Element _validTo;
  StringTime lastUpdated;
  Element _lastUpdated;
  List<CodeableConcept> additionalCharacteristic;
  List<CodeableConcept> additionalClassification;
  List<CatalogEntry_RelatedEntry> relatedEntry;


CatalogEntry(
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
this.orderable,
this._orderable,
this.referencedItem,
this.additionalIdentifier,
this.classification,
this.status,
this._status,
this.validityPeriod,
this.validTo,
this._validTo,
this.lastUpdated,
this._lastUpdated,
this.additionalCharacteristic,
this.additionalClassification,
this.relatedEntry});

  factory CatalogEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntryToJson(this);
}