import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicinalProductIngredient {
  static Future<MedicinalProductIngredient> newInstance({
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
    Identifier identifier,
    CodeableConcept role,
    bool allergenicIndicator,
    Element elementAllergenicIndicator,
    List<Reference> manufacturer,
    List<MedicinalProductIngredient_SpecifiedSubstance> specifiedSubstance,
    MedicinalProductIngredient_Substance substance,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIngredient newMedicinalProductIngredient =
        new MedicinalProductIngredient(
      resourceType: 'MedicinalProductIngredient',
      id: id ?? await fhirDb.newResourceId('MedicinalProductIngredient'),
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
      role: role,
      allergenicIndicator: allergenicIndicator,
      elementAllergenicIndicator: elementAllergenicIndicator,
      manufacturer: manufacturer,
      specifiedSubstance: specifiedSubstance,
      substance: substance,
    );
    newMedicinalProductIngredient.meta.createdAt = DateTime.now();
    newMedicinalProductIngredient.meta.lastUpdated =
        newMedicinalProductIngredient.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicinalProductIngredient);
    return newMedicinalProductIngredient;
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
  String resourceType = 'MedicinalProductIngredient';
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
  Identifier identifier;
  @HiveField(12)
  CodeableConcept role;
  @HiveField(13)
  bool allergenicIndicator;
  @HiveField(14)
  Element elementAllergenicIndicator;
  @HiveField(15)
  List<Reference> manufacturer;
  @HiveField(16)
  List<MedicinalProductIngredient_SpecifiedSubstance> specifiedSubstance;
  @HiveField(17)
  MedicinalProductIngredient_Substance substance;

  MedicinalProductIngredient({
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
    @required this.role,
    this.allergenicIndicator,
    this.elementAllergenicIndicator,
    this.manufacturer,
    this.specifiedSubstance,
    this.substance,
  });

  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredientToJson(this);
}

class MedicinalProductIngredient_SpecifiedSubstance {
  static Future<MedicinalProductIngredient_SpecifiedSubstance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    CodeableConcept group,
    CodeableConcept confidentiality,
    List<MedicinalProductIngredient_Strength> strength,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIngredient_SpecifiedSubstance
        newMedicinalProductIngredient_SpecifiedSubstance =
        new MedicinalProductIngredient_SpecifiedSubstance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      group: group,
      confidentiality: confidentiality,
      strength: strength,
    );
    return newMedicinalProductIngredient_SpecifiedSubstance;
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
  CodeableConcept group;
  @HiveField(5)
  CodeableConcept confidentiality;
  @HiveField(6)
  List<MedicinalProductIngredient_Strength> strength;

  MedicinalProductIngredient_SpecifiedSubstance({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    @required this.group,
    this.confidentiality,
    this.strength,
  });

  factory MedicinalProductIngredient_SpecifiedSubstance.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductIngredient_SpecifiedSubstanceToJson(this);
}

class MedicinalProductIngredient_Strength {
  static Future<MedicinalProductIngredient_Strength> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Ratio presentation,
    Ratio presentationLowLimit,
    Ratio concentration,
    Ratio concentrationLowLimit,
    String measurementPoint,
    Element elementMeasurementPoint,
    List<CodeableConcept> country,
    List<MedicinalProductIngredient_ReferenceStrength> referenceStrength,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIngredient_Strength newMedicinalProductIngredient_Strength =
        new MedicinalProductIngredient_Strength(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      presentation: presentation,
      presentationLowLimit: presentationLowLimit,
      concentration: concentration,
      concentrationLowLimit: concentrationLowLimit,
      measurementPoint: measurementPoint,
      elementMeasurementPoint: elementMeasurementPoint,
      country: country,
      referenceStrength: referenceStrength,
    );
    return newMedicinalProductIngredient_Strength;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Ratio presentation;
  @HiveField(4)
  Ratio presentationLowLimit;
  @HiveField(5)
  Ratio concentration;
  @HiveField(6)
  Ratio concentrationLowLimit;
  @HiveField(7)
  String measurementPoint;
  @HiveField(8)
  Element elementMeasurementPoint;
  @HiveField(9)
  List<CodeableConcept> country;
  @HiveField(10)
  List<MedicinalProductIngredient_ReferenceStrength> referenceStrength;

  MedicinalProductIngredient_Strength({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.presentation,
    this.presentationLowLimit,
    this.concentration,
    this.concentrationLowLimit,
    this.measurementPoint,
    this.elementMeasurementPoint,
    this.country,
    this.referenceStrength,
  });

  factory MedicinalProductIngredient_Strength.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductIngredient_StrengthFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductIngredient_StrengthToJson(this);
}

class MedicinalProductIngredient_ReferenceStrength {
  static Future<MedicinalProductIngredient_ReferenceStrength> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept substance,
    Ratio strength,
    Ratio strengthLowLimit,
    String measurementPoint,
    Element elementMeasurementPoint,
    List<CodeableConcept> country,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIngredient_ReferenceStrength
        newMedicinalProductIngredient_ReferenceStrength =
        new MedicinalProductIngredient_ReferenceStrength(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      substance: substance,
      strength: strength,
      strengthLowLimit: strengthLowLimit,
      measurementPoint: measurementPoint,
      elementMeasurementPoint: elementMeasurementPoint,
      country: country,
    );
    return newMedicinalProductIngredient_ReferenceStrength;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept substance;
  @HiveField(4)
  Ratio strength;
  @HiveField(5)
  Ratio strengthLowLimit;
  @HiveField(6)
  String measurementPoint;
  @HiveField(7)
  Element elementMeasurementPoint;
  @HiveField(8)
  List<CodeableConcept> country;

  MedicinalProductIngredient_ReferenceStrength({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    @required this.strength,
    this.strengthLowLimit,
    this.measurementPoint,
    this.elementMeasurementPoint,
    this.country,
  });

  factory MedicinalProductIngredient_ReferenceStrength.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductIngredient_ReferenceStrengthFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductIngredient_ReferenceStrengthToJson(this);
}

class MedicinalProductIngredient_Substance {
  static Future<MedicinalProductIngredient_Substance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    List<MedicinalProductIngredient_Strength> strength,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIngredient_Substance
        newMedicinalProductIngredient_Substance =
        new MedicinalProductIngredient_Substance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      strength: strength,
    );
    return newMedicinalProductIngredient_Substance;
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
  List<MedicinalProductIngredient_Strength> strength;

  MedicinalProductIngredient_Substance({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.strength,
  });

  factory MedicinalProductIngredient_Substance.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductIngredient_SubstanceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductIngredient_SubstanceToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIngredient _$MedicinalProductIngredientFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIngredient(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    allergenicIndicator: json['allergenicIndicator'] as bool,
    elementAllergenicIndicator: json['elementAllergenicIndicator'] == null
        ? null
        : Element.fromJson(
            json['elementAllergenicIndicator'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specifiedSubstance: (json['specifiedSubstance'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_SpecifiedSubstance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : MedicinalProductIngredient_Substance.fromJson(
            json['substance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductIngredientToJson(
    MedicinalProductIngredient instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('allergenicIndicator', instance.allergenicIndicator);
  writeNotNull('elementAllergenicIndicator',
      instance.elementAllergenicIndicator?.toJson());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e?.toJson())?.toList());
  writeNotNull('specifiedSubstance',
      instance.specifiedSubstance?.map((e) => e?.toJson())?.toList());
  writeNotNull('substance', instance.substance?.toJson());
  return val;
}

MedicinalProductIngredient_SpecifiedSubstance
    _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIngredient_SpecifiedSubstance(
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
    group: json['group'] == null
        ? null
        : CodeableConcept.fromJson(json['group'] as Map<String, dynamic>),
    confidentiality: json['confidentiality'] == null
        ? null
        : CodeableConcept.fromJson(
            json['confidentiality'] as Map<String, dynamic>),
    strength: (json['strength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_Strength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_SpecifiedSubstanceToJson(
    MedicinalProductIngredient_SpecifiedSubstance instance) {
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
  writeNotNull('group', instance.group?.toJson());
  writeNotNull('confidentiality', instance.confidentiality?.toJson());
  writeNotNull(
      'strength', instance.strength?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductIngredient_Strength
    _$MedicinalProductIngredient_StrengthFromJson(Map<String, dynamic> json) {
  return MedicinalProductIngredient_Strength(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    presentation: json['presentation'] == null
        ? null
        : Ratio.fromJson(json['presentation'] as Map<String, dynamic>),
    presentationLowLimit: json['presentationLowLimit'] == null
        ? null
        : Ratio.fromJson(json['presentationLowLimit'] as Map<String, dynamic>),
    concentration: json['concentration'] == null
        ? null
        : Ratio.fromJson(json['concentration'] as Map<String, dynamic>),
    concentrationLowLimit: json['concentrationLowLimit'] == null
        ? null
        : Ratio.fromJson(json['concentrationLowLimit'] as Map<String, dynamic>),
    measurementPoint: json['measurementPoint'] as String,
    elementMeasurementPoint: json['elementMeasurementPoint'] == null
        ? null
        : Element.fromJson(
            json['elementMeasurementPoint'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceStrength: (json['referenceStrength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_ReferenceStrength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_StrengthToJson(
    MedicinalProductIngredient_Strength instance) {
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
  writeNotNull('presentation', instance.presentation?.toJson());
  writeNotNull('presentationLowLimit', instance.presentationLowLimit?.toJson());
  writeNotNull('concentration', instance.concentration?.toJson());
  writeNotNull(
      'concentrationLowLimit', instance.concentrationLowLimit?.toJson());
  writeNotNull('measurementPoint', instance.measurementPoint);
  writeNotNull(
      'elementMeasurementPoint', instance.elementMeasurementPoint?.toJson());
  writeNotNull('country', instance.country?.map((e) => e?.toJson())?.toList());
  writeNotNull('referenceStrength',
      instance.referenceStrength?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductIngredient_ReferenceStrength
    _$MedicinalProductIngredient_ReferenceStrengthFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIngredient_ReferenceStrength(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    strength: json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
    strengthLowLimit: json['strengthLowLimit'] == null
        ? null
        : Ratio.fromJson(json['strengthLowLimit'] as Map<String, dynamic>),
    measurementPoint: json['measurementPoint'] as String,
    elementMeasurementPoint: json['elementMeasurementPoint'] == null
        ? null
        : Element.fromJson(
            json['elementMeasurementPoint'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_ReferenceStrengthToJson(
    MedicinalProductIngredient_ReferenceStrength instance) {
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
  writeNotNull('substance', instance.substance?.toJson());
  writeNotNull('strength', instance.strength?.toJson());
  writeNotNull('strengthLowLimit', instance.strengthLowLimit?.toJson());
  writeNotNull('measurementPoint', instance.measurementPoint);
  writeNotNull(
      'elementMeasurementPoint', instance.elementMeasurementPoint?.toJson());
  writeNotNull('country', instance.country?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductIngredient_Substance
    _$MedicinalProductIngredient_SubstanceFromJson(Map<String, dynamic> json) {
  return MedicinalProductIngredient_Substance(
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
    strength: (json['strength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_Strength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_SubstanceToJson(
    MedicinalProductIngredient_Substance instance) {
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
  writeNotNull(
      'strength', instance.strength?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductIngredientAdapter
    extends TypeAdapter<MedicinalProductIngredient> {
  @override
  MedicinalProductIngredient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient(
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
      identifier: fields[11] as Identifier,
      role: fields[12] as CodeableConcept,
      allergenicIndicator: fields[13] as bool,
      elementAllergenicIndicator: fields[14] as Element,
      manufacturer: (fields[15] as List)?.cast<Reference>(),
      specifiedSubstance: (fields[16] as List)
          ?.cast<MedicinalProductIngredient_SpecifiedSubstance>(),
      substance: fields[17] as MedicinalProductIngredient_Substance,
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIngredient obj) {
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
      ..write(obj.role)
      ..writeByte(13)
      ..write(obj.allergenicIndicator)
      ..writeByte(14)
      ..write(obj.elementAllergenicIndicator)
      ..writeByte(15)
      ..write(obj.manufacturer)
      ..writeByte(16)
      ..write(obj.specifiedSubstance)
      ..writeByte(17)
      ..write(obj.substance);
  }
}

class MedicinalProductIngredient_SpecifiedSubstanceAdapter
    extends TypeAdapter<MedicinalProductIngredient_SpecifiedSubstance> {
  @override
  MedicinalProductIngredient_SpecifiedSubstance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_SpecifiedSubstance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      group: fields[4] as CodeableConcept,
      confidentiality: fields[5] as CodeableConcept,
      strength:
          (fields[6] as List)?.cast<MedicinalProductIngredient_Strength>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicinalProductIngredient_SpecifiedSubstance obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.group)
      ..writeByte(5)
      ..write(obj.confidentiality)
      ..writeByte(6)
      ..write(obj.strength);
  }
}

class MedicinalProductIngredient_StrengthAdapter
    extends TypeAdapter<MedicinalProductIngredient_Strength> {
  @override
  MedicinalProductIngredient_Strength read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_Strength(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      presentation: fields[3] as Ratio,
      presentationLowLimit: fields[4] as Ratio,
      concentration: fields[5] as Ratio,
      concentrationLowLimit: fields[6] as Ratio,
      measurementPoint: fields[7] as String,
      elementMeasurementPoint: fields[8] as Element,
      country: (fields[9] as List)?.cast<CodeableConcept>(),
      referenceStrength: (fields[10] as List)
          ?.cast<MedicinalProductIngredient_ReferenceStrength>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIngredient_Strength obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.presentation)
      ..writeByte(4)
      ..write(obj.presentationLowLimit)
      ..writeByte(5)
      ..write(obj.concentration)
      ..writeByte(6)
      ..write(obj.concentrationLowLimit)
      ..writeByte(7)
      ..write(obj.measurementPoint)
      ..writeByte(8)
      ..write(obj.elementMeasurementPoint)
      ..writeByte(9)
      ..write(obj.country)
      ..writeByte(10)
      ..write(obj.referenceStrength);
  }
}

class MedicinalProductIngredient_ReferenceStrengthAdapter
    extends TypeAdapter<MedicinalProductIngredient_ReferenceStrength> {
  @override
  MedicinalProductIngredient_ReferenceStrength read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_ReferenceStrength(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      substance: fields[3] as CodeableConcept,
      strength: fields[4] as Ratio,
      strengthLowLimit: fields[5] as Ratio,
      measurementPoint: fields[6] as String,
      elementMeasurementPoint: fields[7] as Element,
      country: (fields[8] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicinalProductIngredient_ReferenceStrength obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.substance)
      ..writeByte(4)
      ..write(obj.strength)
      ..writeByte(5)
      ..write(obj.strengthLowLimit)
      ..writeByte(6)
      ..write(obj.measurementPoint)
      ..writeByte(7)
      ..write(obj.elementMeasurementPoint)
      ..writeByte(8)
      ..write(obj.country);
  }
}

class MedicinalProductIngredient_SubstanceAdapter
    extends TypeAdapter<MedicinalProductIngredient_Substance> {
  @override
  MedicinalProductIngredient_Substance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_Substance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      strength:
          (fields[4] as List)?.cast<MedicinalProductIngredient_Strength>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIngredient_Substance obj) {
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
      ..write(obj.strength);
  }
}
