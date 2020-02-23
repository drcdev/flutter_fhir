import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'MedicinalProductPharmaceutical';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  CodeableConcept administrableDoseForm;
  @HiveField(13)
  CodeableConcept unitOfPresentation;
  @HiveField(14)
  List<Reference> ingredient;
  @HiveField(15)
  List<Reference> device;
  @HiveField(16)
  List<MedicinalProductPharmaceutical_Characteristics> characteristics;
  @HiveField(17)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      status: status,
    );
    return newMedicinalProductPharmaceutical_Characteristics;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  Quantity firstDose;
  @HiveField(5)
  Quantity maxSingleDose;
  @HiveField(6)
  Quantity maxDosePerDay;
  @HiveField(7)
  Ratio maxDosePerTreatmentPeriod;
  @HiveField(8)
  Duration maxTreatmentPeriod;
  @HiveField(9)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      withdrawalPeriod: withdrawalPeriod,
    );
    return newMedicinalProductPharmaceutical_TargetSpecies;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      tissue: tissue,
      value: value,
      supportingInformation: supportingInformation,
      elementSupportingInformation: elementSupportingInformation,
    );
    return newMedicinalProductPharmaceutical_WithdrawalPeriod;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept tissue;
  @HiveField(4)
  Quantity value;
  @HiveField(5)
  String supportingInformation;
  @HiveField(6)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductPharmaceuticalAdapter
    extends TypeAdapter<MedicinalProductPharmaceutical> {
  @override
  MedicinalProductPharmaceutical read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPharmaceutical(
      resourceType: fields[0] as String,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      administrableDoseForm: fields[12] as CodeableConcept,
      unitOfPresentation: fields[13] as CodeableConcept,
      ingredient: (fields[14] as List)?.cast<Reference>(),
      device: (fields[15] as List)?.cast<Reference>(),
      characteristics: (fields[16] as List)
          ?.cast<MedicinalProductPharmaceutical_Characteristics>(),
      routeOfAdministration: (fields[17] as List)
          ?.cast<MedicinalProductPharmaceutical_RouteOfAdministration>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductPharmaceutical obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.administrableDoseForm)
      ..writeByte(13)
      ..write(obj.unitOfPresentation)
      ..writeByte(14)
      ..write(obj.ingredient)
      ..writeByte(15)
      ..write(obj.device)
      ..writeByte(16)
      ..write(obj.characteristics)
      ..writeByte(17)
      ..write(obj.routeOfAdministration);
  }
}

class MedicinalProductPharmaceutical_CharacteristicsAdapter
    extends TypeAdapter<MedicinalProductPharmaceutical_Characteristics> {
  @override
  MedicinalProductPharmaceutical_Characteristics read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPharmaceutical_Characteristics(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      status: fields[4] as CodeableConcept,
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicinalProductPharmaceutical_Characteristics obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.status);
  }
}

class MedicinalProductPharmaceutical_RouteOfAdministrationAdapter
    extends TypeAdapter<MedicinalProductPharmaceutical_RouteOfAdministration> {
  @override
  MedicinalProductPharmaceutical_RouteOfAdministration read(
      BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPharmaceutical_RouteOfAdministration(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      firstDose: fields[4] as Quantity,
      maxSingleDose: fields[5] as Quantity,
      maxDosePerDay: fields[6] as Quantity,
      maxDosePerTreatmentPeriod: fields[7] as Ratio,
      maxTreatmentPeriod: fields[8] as Duration,
      targetSpecies: (fields[9] as List)
          ?.cast<MedicinalProductPharmaceutical_TargetSpecies>(),
    );
  }

  @override
  void write(BinaryWriter writer,
      MedicinalProductPharmaceutical_RouteOfAdministration obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.firstDose)
      ..writeByte(5)
      ..write(obj.maxSingleDose)
      ..writeByte(6)
      ..write(obj.maxDosePerDay)
      ..writeByte(7)
      ..write(obj.maxDosePerTreatmentPeriod)
      ..writeByte(8)
      ..write(obj.maxTreatmentPeriod)
      ..writeByte(9)
      ..write(obj.targetSpecies);
  }
}

class MedicinalProductPharmaceutical_TargetSpeciesAdapter
    extends TypeAdapter<MedicinalProductPharmaceutical_TargetSpecies> {
  @override
  MedicinalProductPharmaceutical_TargetSpecies read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPharmaceutical_TargetSpecies(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      withdrawalPeriod: (fields[4] as List)
          ?.cast<MedicinalProductPharmaceutical_WithdrawalPeriod>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicinalProductPharmaceutical_TargetSpecies obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.withdrawalPeriod);
  }
}

class MedicinalProductPharmaceutical_WithdrawalPeriodAdapter
    extends TypeAdapter<MedicinalProductPharmaceutical_WithdrawalPeriod> {
  @override
  MedicinalProductPharmaceutical_WithdrawalPeriod read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPharmaceutical_WithdrawalPeriod(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      tissue: fields[3] as CodeableConcept,
      value: fields[4] as Quantity,
      supportingInformation: fields[5] as String,
      elementSupportingInformation: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer,
      MedicinalProductPharmaceutical_WithdrawalPeriod obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.tissue)
      ..writeByte(4)
      ..write(obj.value)
      ..writeByte(5)
      ..write(obj.supportingInformation)
      ..writeByte(6)
      ..write(obj.elementSupportingInformation);
  }
}
