

part 'medicinalProduct_CountryLanguage.g.dart';

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
this.language});

  factory MedicinalProduct_CountryLanguage.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_CountryLanguageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_CountryLanguageToJson(this);
}