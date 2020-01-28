part 'medicinalProductPharmaceutical.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical {

MedicinalProductPharmaceutical resourceType;
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
      this.routeOfAdministration,
      });

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceuticalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_Characteristics {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept status;

MedicinalProductPharmaceutical_Characteristics(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.status,
      });

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_RouteOfAdministration {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
Quantity firstDose;
Quantity maxSingleDose;
Quantity maxDosePerDay;
Ratio maxDosePerTreatmentPeriod;
Duration maxTreatmentPeriod;
List<MedicinalProductPharmaceutical_TargetSpecies> targetSpecies;

MedicinalProductPharmaceutical_RouteOfAdministration(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.firstDose,
      this.maxSingleDose,
      this.maxDosePerDay,
      this.maxDosePerTreatmentPeriod,
      this.maxTreatmentPeriod,
      this.targetSpecies,
      });

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

MedicinalProductPharmaceutical_TargetSpecies(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.withdrawalPeriod,
      });

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_WithdrawalPeriod {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept tissue;
Quantity value;
String supportingInformation;
Element _supportingInformation;

MedicinalProductPharmaceutical_WithdrawalPeriod(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.tissue,
      this.value,
      this.supportingInformation,
      this._supportingInformation,
      });

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
}

