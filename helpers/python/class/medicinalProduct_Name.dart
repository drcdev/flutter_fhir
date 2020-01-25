

part 'medicinalProduct_Name.g.dart';

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
this.countryLanguage});

  factory MedicinalProduct_Name.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NameFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NameToJson(this);
}