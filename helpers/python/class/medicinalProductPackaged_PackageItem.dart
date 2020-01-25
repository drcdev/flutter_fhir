

part 'medicinalProductPackaged_PackageItem.g.dart';

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
this.manufacturer});

  factory MedicinalProductPackaged_PackageItem.fromJson(Map<String, dynamic> json) => _$MedicinalProductPackaged_PackageItemFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPackaged_PackageItemToJson(this);
}