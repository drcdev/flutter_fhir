import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicinalProductPharmaceutical {
  static Future<MedicinalProductPharmaceutical> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    CodeableConcept administrableDoseForm,
    CodeableConcept unitOfPresentation,
    List<Reference> ingredient,
    List<Reference> device,
    List<MedicinalProductPharmaceutical_Characteristics> characteristics,
    List<MedicinalProductPharmaceutical_RouteOfAdministration>
        routeOfAdministration,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPharmaceutical newMedicinalProductPharmaceutical =
        new MedicinalProductPharmaceutical(
      resourceType: 'MedicinalProductPharmaceutical',
      id: id ?? await fhirDb.newResourceId('MedicinalProductPharmaceutical'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      administrableDoseForm: administrableDoseForm,
      unitOfPresentation: unitOfPresentation,
      ingredient: ingredient,
      device: device,
      characteristics: characteristics,
      routeOfAdministration: routeOfAdministration,
    );
    newMedicinalProductPharmaceutical.meta.createdAt = DateTime.now();
    newMedicinalProductPharmaceutical.meta.lastUpdated =
        newMedicinalProductPharmaceutical.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicinalProductPharmaceutical);
    return newMedicinalProductPharmaceutical;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'MedicinalProductPharmaceutical';
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
  List<MedicinalProductPharmaceutical_RouteOfAdministration>
      routeOfAdministration;

  MedicinalProductPharmaceutical({
    @required this.resourceType,
    this.id,
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
    @required this.administrableDoseForm,
    this.unitOfPresentation,
    this.ingredient,
    this.device,
    this.characteristics,
    @required this.routeOfAdministration,
  });

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceuticalToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicinalProductPharmaceutical_Characteristics {
  static Future<MedicinalProductPharmaceutical_Characteristics> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    CodeableConcept status,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPharmaceutical_Characteristics
        newMedicinalProductPharmaceutical_Characteristics =
        new MedicinalProductPharmaceutical_Characteristics(
      id: id ??
          await fhirDb
              .newResourceId('MedicinalProductPharmaceutical_Characteristics'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      status: status,
    );
    return newMedicinalProductPharmaceutical_Characteristics;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept status;

  MedicinalProductPharmaceutical_Characteristics({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.status,
  });

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicinalProductPharmaceutical_RouteOfAdministration {
  static Future<MedicinalProductPharmaceutical_RouteOfAdministration>
      newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    Quantity firstDose,
    Quantity maxSingleDose,
    Quantity maxDosePerDay,
    Ratio maxDosePerTreatmentPeriod,
    Duration maxTreatmentPeriod,
    List<MedicinalProductPharmaceutical_TargetSpecies> targetSpecies,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPharmaceutical_RouteOfAdministration
        newMedicinalProductPharmaceutical_RouteOfAdministration =
        new MedicinalProductPharmaceutical_RouteOfAdministration(
      id: id ??
          await fhirDb.newResourceId(
              'MedicinalProductPharmaceutical_RouteOfAdministration'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      firstDose: firstDose,
      maxSingleDose: maxSingleDose,
      maxDosePerDay: maxDosePerDay,
      maxDosePerTreatmentPeriod: maxDosePerTreatmentPeriod,
      maxTreatmentPeriod: maxTreatmentPeriod,
      targetSpecies: targetSpecies,
    );
    return newMedicinalProductPharmaceutical_RouteOfAdministration;
  }

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

  MedicinalProductPharmaceutical_RouteOfAdministration({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies,
  });

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicinalProductPharmaceutical_TargetSpecies {
  static Future<MedicinalProductPharmaceutical_TargetSpecies> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPharmaceutical_TargetSpecies
        newMedicinalProductPharmaceutical_TargetSpecies =
        new MedicinalProductPharmaceutical_TargetSpecies(
      id: id ??
          await fhirDb
              .newResourceId('MedicinalProductPharmaceutical_TargetSpecies'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      withdrawalPeriod: withdrawalPeriod,
    );
    return newMedicinalProductPharmaceutical_TargetSpecies;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

  MedicinalProductPharmaceutical_TargetSpecies({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.withdrawalPeriod,
  });

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MedicinalProductPharmaceutical_WithdrawalPeriod {
  static Future<MedicinalProductPharmaceutical_WithdrawalPeriod> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept tissue,
    Quantity value,
    String supportingInformation,
    Element elementSupportingInformation,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductPharmaceutical_WithdrawalPeriod
        newMedicinalProductPharmaceutical_WithdrawalPeriod =
        new MedicinalProductPharmaceutical_WithdrawalPeriod(
      id: id ??
          await fhirDb
              .newResourceId('MedicinalProductPharmaceutical_WithdrawalPeriod'),
      extension: extension,
      modifierExtension: modifierExtension,
      tissue: tissue,
      value: value,
      supportingInformation: supportingInformation,
      elementSupportingInformation: elementSupportingInformation,
    );
    return newMedicinalProductPharmaceutical_WithdrawalPeriod;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept tissue;
  Quantity value;
  String supportingInformation;
  Element elementSupportingInformation;

  MedicinalProductPharmaceutical_WithdrawalPeriod({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.tissue,
    @required this.value,
    this.supportingInformation,
    this.elementSupportingInformation,
  });

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPharmaceutical _$MedicinalProductPharmaceuticalFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    administrableDoseForm: json['administrableDoseForm'] == null
        ? null
        : CodeableConcept.fromJson(
            json['administrableDoseForm'] as Map<String, dynamic>),
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
    routeOfAdministration: (json['routeOfAdministration'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceuticalToJson(
    MedicinalProductPharmaceutical instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'administrableDoseForm', instance.administrableDoseForm?.toJson());
  writeNotNull('unitOfPresentation', instance.unitOfPresentation?.toJson());
  writeNotNull(
      'ingredient', instance.ingredient?.map((e) => e?.toJson())?.toList());
  writeNotNull('device', instance.device?.map((e) => e?.toJson())?.toList());
  writeNotNull('characteristics',
      instance.characteristics?.map((e) => e?.toJson())?.toList());
  writeNotNull('routeOfAdministration',
      instance.routeOfAdministration?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductPharmaceutical_Characteristics
    _$MedicinalProductPharmaceutical_CharacteristicsFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_Characteristics(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_CharacteristicsToJson(
    MedicinalProductPharmaceutical_Characteristics instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('status', instance.status?.toJson());
  return val;
}

MedicinalProductPharmaceutical_RouteOfAdministration
    _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_RouteOfAdministration(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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
        MedicinalProductPharmaceutical_RouteOfAdministration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('firstDose', instance.firstDose?.toJson());
  writeNotNull('maxSingleDose', instance.maxSingleDose?.toJson());
  writeNotNull('maxDosePerDay', instance.maxDosePerDay?.toJson());
  writeNotNull('maxDosePerTreatmentPeriod',
      instance.maxDosePerTreatmentPeriod?.toJson());
  writeNotNull('maxTreatmentPeriod', instance.maxTreatmentPeriod?.toJson());
  writeNotNull('targetSpecies',
      instance.targetSpecies?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductPharmaceutical_TargetSpecies
    _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_TargetSpecies(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    withdrawalPeriod: (json['withdrawalPeriod'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_TargetSpeciesToJson(
    MedicinalProductPharmaceutical_TargetSpecies instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('withdrawalPeriod',
      instance.withdrawalPeriod?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductPharmaceutical_WithdrawalPeriod
    _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_WithdrawalPeriod(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tissue: json['tissue'] == null
        ? null
        : CodeableConcept.fromJson(json['tissue'] as Map<String, dynamic>),
    value: json['value'] == null
        ? null
        : Quantity.fromJson(json['value'] as Map<String, dynamic>),
    supportingInformation: json['supportingInformation'] as String,
    elementSupportingInformation: json['elementSupportingInformation'] == null
        ? null
        : Element.fromJson(
            json['elementSupportingInformation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(
    MedicinalProductPharmaceutical_WithdrawalPeriod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('tissue', instance.tissue?.toJson());
  writeNotNull('value', instance.value?.toJson());
  writeNotNull('supportingInformation', instance.supportingInformation);
  writeNotNull('elementSupportingInformation',
      instance.elementSupportingInformation?.toJson());
  return val;
}
