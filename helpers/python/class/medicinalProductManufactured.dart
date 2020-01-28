part 'medicinalProductManufactured.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductManufactured {

MedicinalProductManufactured resourceType;
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
CodeableConcept manufacturedDoseForm;
CodeableConcept unitOfPresentation;
Quantity quantity;
List<Reference> manufacturer;
List<Reference> ingredient;
ProdCharacteristic physicalCharacteristics;
List<CodeableConcept> otherCharacteristics;

MedicinalProductManufactured(
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
      this.manufacturedDoseForm,
      this.unitOfPresentation,
      this.quantity,
      this.manufacturer,
      this.ingredient,
      this.physicalCharacteristics,
      this.otherCharacteristics,
      });

  factory MedicinalProductManufactured.fromJson(Map<String, dynamic> json) => _$MedicinalProductManufacturedFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductManufacturedToJson(this);
}

