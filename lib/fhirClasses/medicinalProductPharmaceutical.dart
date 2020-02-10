import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical {
  final String resourceType= 'MedicinalProductPharmaceutical';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
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
  this.administrableDoseForm,
    this.routeOfAdministration,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.unitOfPresentation,
    this.ingredient,
    this.device,
    this.characteristics
    });

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceuticalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_Characteristics {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept status;

MedicinalProductPharmaceutical_Characteristics(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.status
    });

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
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
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies
    });

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

MedicinalProductPharmaceutical_TargetSpecies(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.withdrawalPeriod
    });

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_WithdrawalPeriod {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept tissue;
  Quantity value;
  String supportingInformation;
  Element elementSupportingInformation;

MedicinalProductPharmaceutical_WithdrawalPeriod(
  this.tissue,
    this.value,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.supportingInformation,
    this.elementSupportingInformation
    });

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPharmaceutical _$MedicinalProductPharmaceuticalFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical(
    json['administrableDoseForm'] == null
        ? null
        : CodeableConcept.fromJson(
            json['administrableDoseForm'] as Map<String, dynamic>),
    (json['routeOfAdministration'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    unitOfPresentation: json['unitOfPresentation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfPresentation'] as Map<String, dynamic>),
    ingredient: (json['ingredient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    device: (json['device'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    characteristics: (json['characteristics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_Characteristics.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceuticalToJson(
        MedicinalProductPharmaceutical instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'administrableDoseForm': instance.administrableDoseForm?.toJson(),
      'unitOfPresentation': instance.unitOfPresentation?.toJson(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'device': instance.device?.map((e) => e?.toJson())?.toList(),
      'characteristics':
          instance.characteristics?.map((e) => e?.toJson())?.toList(),
      'routeOfAdministration':
          instance.routeOfAdministration?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPharmaceutical_Characteristics
    _$MedicinalProductPharmaceutical_CharacteristicsFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_Characteristics(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_CharacteristicsToJson(
        MedicinalProductPharmaceutical_Characteristics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'status': instance.status?.toJson(),
    };

MedicinalProductPharmaceutical_RouteOfAdministration
    _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_RouteOfAdministration(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    firstDose: json['firstDose'] == null
        ? null
        : Quantity.fromJson(json['firstDose'] as Map<String, dynamic>),
    maxSingleDose: json['maxSingleDose'] == null
        ? null
        : Quantity.fromJson(json['maxSingleDose'] as Map<String, dynamic>),
    maxDosePerDay: json['maxDosePerDay'] == null
        ? null
        : Quantity.fromJson(json['maxDosePerDay'] as Map<String, dynamic>),
    maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] == null
        ? null
        : Ratio.fromJson(
            json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>),
    maxTreatmentPeriod: json['maxTreatmentPeriod'] == null
        ? null
        : Duration.fromJson(json['maxTreatmentPeriod'] as Map<String, dynamic>),
    targetSpecies: (json['targetSpecies'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_TargetSpecies.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic>
    _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(
            MedicinalProductPharmaceutical_RouteOfAdministration instance) =>
        <String, dynamic>{
          'id': instance.id,
          'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
          'modifierExtension':
              instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
          'code': instance.code?.toJson(),
          'firstDose': instance.firstDose?.toJson(),
          'maxSingleDose': instance.maxSingleDose?.toJson(),
          'maxDosePerDay': instance.maxDosePerDay?.toJson(),
          'maxDosePerTreatmentPeriod':
              instance.maxDosePerTreatmentPeriod?.toJson(),
          'maxTreatmentPeriod': instance.maxTreatmentPeriod?.toJson(),
          'targetSpecies':
              instance.targetSpecies?.map((e) => e?.toJson())?.toList(),
        };

MedicinalProductPharmaceutical_TargetSpecies
    _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_TargetSpecies(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    withdrawalPeriod: (json['withdrawalPeriod'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_TargetSpeciesToJson(
        MedicinalProductPharmaceutical_TargetSpecies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'withdrawalPeriod':
          instance.withdrawalPeriod?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPharmaceutical_WithdrawalPeriod
    _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_WithdrawalPeriod(
    json['tissue'] == null
        ? null
        : CodeableConcept.fromJson(json['tissue'] as Map<String, dynamic>),
    json['value'] == null
        ? null
        : Quantity.fromJson(json['value'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInformation: json['supportingInformation'] as String,
    elementSupportingInformation: json['elementSupportingInformation'] == null
        ? null
        : Element.fromJson(
            json['elementSupportingInformation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(
        MedicinalProductPharmaceutical_WithdrawalPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'tissue': instance.tissue?.toJson(),
      'value': instance.value?.toJson(),
      'supportingInformation': instance.supportingInformation,
      'elementSupportingInformation':
          instance.elementSupportingInformation?.toJson(),
    };
