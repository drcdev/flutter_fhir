

part 'medicinalProductPharmaceutical.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical {

  This is a MedicinalProductPharmaceutical resource resourceType;
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
  CodeableConcept administrableDoseForm;
  CodeableConcept unitOfPresentation;
  List<Reference> ingredient;
  List<Reference> device;
  List<MedicinalProductPharmaceutical_Characteristics> characteristics;
  List<MedicinalProductPharmaceutical_RouteOfAdministration> routeOfAdministration;


MedicinalProductPharmaceutical(
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
this.administrableDoseForm,
this.unitOfPresentation,
this.ingredient,
this.device,
this.characteristics,
this.routeOfAdministration});

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceuticalToJson(this);
}