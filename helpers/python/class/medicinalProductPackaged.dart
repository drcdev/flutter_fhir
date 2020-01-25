

part 'medicinalProductPackaged.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged {

  This is a MedicinalProductPackaged resource resourceType;
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
  List<Reference> subject;
  String description;
  Element _description;
  CodeableConcept legalStatusOfSupply;
  List<MarketingStatus> marketingStatus;
  Reference marketingAuthorization;
  List<Reference> manufacturer;
  List<MedicinalProductPackaged_BatchIdentifier> batchIdentifier;
  List<MedicinalProductPackaged_PackageItem> packageItem;


MedicinalProductPackaged(
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
this.subject,
this.description,
this._description,
this.legalStatusOfSupply,
this.marketingStatus,
this.marketingAuthorization,
this.manufacturer,
this.batchIdentifier,
this.packageItem});

  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackagedFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackagedToJson(this);
}