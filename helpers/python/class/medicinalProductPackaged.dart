part 'medicinalProductPackaged.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged {

MedicinalProductPackaged resourceType;
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
      this.packageItem,
      });

  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackagedFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPackagedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_BatchIdentifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier outerPackaging;
Identifier immediatePackaging;

MedicinalProductPackaged_BatchIdentifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.outerPackaging,
      this.immediatePackaging,
      });

  factory MedicinalProductPackaged_BatchIdentifier.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_BatchIdentifierFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPackaged_BatchIdentifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPackaged_PackageItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
Quantity quantity;
List<CodeableConcept> material;
List<CodeableConcept> alternateMaterial;
List<Reference> device;
List<Reference> manufacturedItem;
List<MedicinalProductPackaged_PackageItem> packageItem;
ProdCharacteristic physicalCharacteristics;
List<CodeableConcept> otherCharacteristics;
List<ProductShelfLife> shelfLifeStorage;
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
      this.manufacturer,
      });

  factory MedicinalProductPackaged_PackageItem.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_PackageItemFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPackaged_PackageItemToJson(this);
}

