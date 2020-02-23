import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/substanceAmount.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SubstancePolymer {
  static Future<SubstancePolymer> newInstance({
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
    CodeableConcept classs,
    CodeableConcept geometry,
    List<CodeableConcept> copolymerConnectivity,
    List<String> modification,
    List<Element> elementModification,
    List<SubstancePolymer_MonomerSet> monomerSet,
    List<SubstancePolymer_Repeat> repeat,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer newSubstancePolymer = new SubstancePolymer(
      resourceType: 'SubstancePolymer',
      id: id ?? await fhirDb.newResourceId('SubstancePolymer'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      classs: classs,
      geometry: geometry,
      copolymerConnectivity: copolymerConnectivity,
      modification: modification,
      elementModification: elementModification,
      monomerSet: monomerSet,
      repeat: repeat,
    );
    newSubstancePolymer.meta.createdAt = DateTime.now();
    newSubstancePolymer.meta.lastUpdated = newSubstancePolymer.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstancePolymer);
    return newSubstancePolymer;
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
  String resourceType = 'SubstancePolymer';
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
  CodeableConcept classs;
  @HiveField(12)
  CodeableConcept geometry;
  @HiveField(13)
  List<CodeableConcept> copolymerConnectivity;
  @HiveField(14)
  List<String> modification;
  @HiveField(15)
  List<Element> elementModification;
  @HiveField(16)
  List<SubstancePolymer_MonomerSet> monomerSet;
  @HiveField(17)
  List<SubstancePolymer_Repeat> repeat;

  SubstancePolymer({
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
    this.classs,
    this.geometry,
    this.copolymerConnectivity,
    this.modification,
    this.elementModification,
    this.monomerSet,
    this.repeat,
  });

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymerToJson(this);
}

class SubstancePolymer_MonomerSet {
  static Future<SubstancePolymer_MonomerSet> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept ratioType,
    List<SubstancePolymer_StartingMaterial> startingMaterial,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer_MonomerSet newSubstancePolymer_MonomerSet =
        new SubstancePolymer_MonomerSet(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      ratioType: ratioType,
      startingMaterial: startingMaterial,
    );
    return newSubstancePolymer_MonomerSet;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept ratioType;
  @HiveField(4)
  List<SubstancePolymer_StartingMaterial> startingMaterial;

  SubstancePolymer_MonomerSet({
    this.id,
    this.extension,
    this.modifierExtension,
    this.ratioType,
    this.startingMaterial,
  });

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_MonomerSetToJson(this);
}

class SubstancePolymer_StartingMaterial {
  static Future<SubstancePolymer_StartingMaterial> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept material,
    CodeableConcept type,
    bool isDefining,
    Element elementIsDefining,
    SubstanceAmount amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer_StartingMaterial newSubstancePolymer_StartingMaterial =
        new SubstancePolymer_StartingMaterial(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      material: material,
      type: type,
      isDefining: isDefining,
      elementIsDefining: elementIsDefining,
      amount: amount,
    );
    return newSubstancePolymer_StartingMaterial;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept material;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
  bool isDefining;
  @HiveField(6)
  Element elementIsDefining;
  @HiveField(7)
  SubstanceAmount amount;

  SubstancePolymer_StartingMaterial({
    this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.isDefining,
    this.elementIsDefining,
    this.amount,
  });

  factory SubstancePolymer_StartingMaterial.fromJson(
          Map<String, dynamic> json) =>
      _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstancePolymer_StartingMaterialToJson(this);
}

class SubstancePolymer_Repeat {
  static Future<SubstancePolymer_Repeat> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int numberOfUnits,
    Element elementNumberOfUnits,
    String averageMolecularFormula,
    Element elementAverageMolecularFormula,
    CodeableConcept repeatUnitAmountType,
    List<SubstancePolymer_RepeatUnit> repeatUnit,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer_Repeat newSubstancePolymer_Repeat =
        new SubstancePolymer_Repeat(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      numberOfUnits: numberOfUnits,
      elementNumberOfUnits: elementNumberOfUnits,
      averageMolecularFormula: averageMolecularFormula,
      elementAverageMolecularFormula: elementAverageMolecularFormula,
      repeatUnitAmountType: repeatUnitAmountType,
      repeatUnit: repeatUnit,
    );
    return newSubstancePolymer_Repeat;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int numberOfUnits;
  @HiveField(4)
  Element elementNumberOfUnits;
  @HiveField(5)
  String averageMolecularFormula;
  @HiveField(6)
  Element elementAverageMolecularFormula;
  @HiveField(7)
  CodeableConcept repeatUnitAmountType;
  @HiveField(8)
  List<SubstancePolymer_RepeatUnit> repeatUnit;

  SubstancePolymer_Repeat({
    this.id,
    this.extension,
    this.modifierExtension,
    this.numberOfUnits,
    this.elementNumberOfUnits,
    this.averageMolecularFormula,
    this.elementAverageMolecularFormula,
    this.repeatUnitAmountType,
    this.repeatUnit,
  });

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatToJson(this);
}

class SubstancePolymer_RepeatUnit {
  static Future<SubstancePolymer_RepeatUnit> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept orientationOfPolymerisation,
    String repeatUnit,
    Element elementRepeatUnit,
    SubstanceAmount amount,
    List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation,
    List<SubstancePolymer_StructuralRepresentation> structuralRepresentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer_RepeatUnit newSubstancePolymer_RepeatUnit =
        new SubstancePolymer_RepeatUnit(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      orientationOfPolymerisation: orientationOfPolymerisation,
      repeatUnit: repeatUnit,
      elementRepeatUnit: elementRepeatUnit,
      amount: amount,
      degreeOfPolymerisation: degreeOfPolymerisation,
      structuralRepresentation: structuralRepresentation,
    );
    return newSubstancePolymer_RepeatUnit;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept orientationOfPolymerisation;
  @HiveField(4)
  String repeatUnit;
  @HiveField(5)
  Element elementRepeatUnit;
  @HiveField(6)
  SubstanceAmount amount;
  @HiveField(7)
  List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;
  @HiveField(8)
  List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;

  SubstancePolymer_RepeatUnit({
    this.id,
    this.extension,
    this.modifierExtension,
    this.orientationOfPolymerisation,
    this.repeatUnit,
    this.elementRepeatUnit,
    this.amount,
    this.degreeOfPolymerisation,
    this.structuralRepresentation,
  });

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatUnitToJson(this);
}

class SubstancePolymer_DegreeOfPolymerisation {
  static Future<SubstancePolymer_DegreeOfPolymerisation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept degree,
    SubstanceAmount amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer_DegreeOfPolymerisation
        newSubstancePolymer_DegreeOfPolymerisation =
        new SubstancePolymer_DegreeOfPolymerisation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      degree: degree,
      amount: amount,
    );
    return newSubstancePolymer_DegreeOfPolymerisation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept degree;
  @HiveField(4)
  SubstanceAmount amount;

  SubstancePolymer_DegreeOfPolymerisation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.degree,
    this.amount,
  });

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(
          Map<String, dynamic> json) =>
      _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
}

class SubstancePolymer_StructuralRepresentation {
  static Future<SubstancePolymer_StructuralRepresentation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String representation,
    Element elementRepresentation,
    Attachment attachment,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstancePolymer_StructuralRepresentation
        newSubstancePolymer_StructuralRepresentation =
        new SubstancePolymer_StructuralRepresentation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      representation: representation,
      elementRepresentation: elementRepresentation,
      attachment: attachment,
    );
    return newSubstancePolymer_StructuralRepresentation;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  String representation;
  @HiveField(5)
  Element elementRepresentation;
  @HiveField(6)
  Attachment attachment;

  SubstancePolymer_StructuralRepresentation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.elementRepresentation,
    this.attachment,
  });

  factory SubstancePolymer_StructuralRepresentation.fromJson(
          Map<String, dynamic> json) =>
      _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstancePolymer_StructuralRepresentationToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstancePolymer _$SubstancePolymerFromJson(Map<String, dynamic> json) {
  return SubstancePolymer(
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
    classs: json['classs'] == null
        ? null
        : CodeableConcept.fromJson(json['classs'] as Map<String, dynamic>),
    geometry: json['geometry'] == null
        ? null
        : CodeableConcept.fromJson(json['geometry'] as Map<String, dynamic>),
    copolymerConnectivity: (json['copolymerConnectivity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modification:
        (json['modification'] as List)?.map((e) => e as String)?.toList(),
    elementModification: (json['elementModification'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    monomerSet: (json['monomerSet'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_MonomerSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    repeat: (json['repeat'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_Repeat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymerToJson(SubstancePolymer instance) {
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
  writeNotNull('classs', instance.classs?.toJson());
  writeNotNull('geometry', instance.geometry?.toJson());
  writeNotNull('copolymerConnectivity',
      instance.copolymerConnectivity?.map((e) => e?.toJson())?.toList());
  writeNotNull('modification', instance.modification);
  writeNotNull('elementModification',
      instance.elementModification?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'monomerSet', instance.monomerSet?.map((e) => e?.toJson())?.toList());
  writeNotNull('repeat', instance.repeat?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstancePolymer_MonomerSet _$SubstancePolymer_MonomerSetFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_MonomerSet(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ratioType: json['ratioType'] == null
        ? null
        : CodeableConcept.fromJson(json['ratioType'] as Map<String, dynamic>),
    startingMaterial: (json['startingMaterial'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_StartingMaterial.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_MonomerSetToJson(
    SubstancePolymer_MonomerSet instance) {
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
  writeNotNull('ratioType', instance.ratioType?.toJson());
  writeNotNull('startingMaterial',
      instance.startingMaterial?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstancePolymer_StartingMaterial _$SubstancePolymer_StartingMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_StartingMaterial(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    material: json['material'] == null
        ? null
        : CodeableConcept.fromJson(json['material'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    isDefining: json['isDefining'] as bool,
    elementIsDefining: json['elementIsDefining'] == null
        ? null
        : Element.fromJson(json['elementIsDefining'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_StartingMaterialToJson(
    SubstancePolymer_StartingMaterial instance) {
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
  writeNotNull('material', instance.material?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('isDefining', instance.isDefining);
  writeNotNull('elementIsDefining', instance.elementIsDefining?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

SubstancePolymer_Repeat _$SubstancePolymer_RepeatFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_Repeat(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numberOfUnits: json['numberOfUnits'] as int,
    elementNumberOfUnits: json['elementNumberOfUnits'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfUnits'] as Map<String, dynamic>),
    averageMolecularFormula: json['averageMolecularFormula'] as String,
    elementAverageMolecularFormula:
        json['elementAverageMolecularFormula'] == null
            ? null
            : Element.fromJson(
                json['elementAverageMolecularFormula'] as Map<String, dynamic>),
    repeatUnitAmountType: json['repeatUnitAmountType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['repeatUnitAmountType'] as Map<String, dynamic>),
    repeatUnit: (json['repeatUnit'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_RepeatUnit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_RepeatToJson(
    SubstancePolymer_Repeat instance) {
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
  writeNotNull('numberOfUnits', instance.numberOfUnits);
  writeNotNull('elementNumberOfUnits', instance.elementNumberOfUnits?.toJson());
  writeNotNull('averageMolecularFormula', instance.averageMolecularFormula);
  writeNotNull('elementAverageMolecularFormula',
      instance.elementAverageMolecularFormula?.toJson());
  writeNotNull('repeatUnitAmountType', instance.repeatUnitAmountType?.toJson());
  writeNotNull(
      'repeatUnit', instance.repeatUnit?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstancePolymer_RepeatUnit _$SubstancePolymer_RepeatUnitFromJson(
    Map<String, dynamic> json) {
  return SubstancePolymer_RepeatUnit(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    orientationOfPolymerisation: json['orientationOfPolymerisation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['orientationOfPolymerisation'] as Map<String, dynamic>),
    repeatUnit: json['repeatUnit'] as String,
    elementRepeatUnit: json['elementRepeatUnit'] == null
        ? null
        : Element.fromJson(json['elementRepeatUnit'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
    degreeOfPolymerisation: (json['degreeOfPolymerisation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_DegreeOfPolymerisation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    structuralRepresentation: (json['structuralRepresentation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstancePolymer_StructuralRepresentation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstancePolymer_RepeatUnitToJson(
    SubstancePolymer_RepeatUnit instance) {
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
  writeNotNull('orientationOfPolymerisation',
      instance.orientationOfPolymerisation?.toJson());
  writeNotNull('repeatUnit', instance.repeatUnit);
  writeNotNull('elementRepeatUnit', instance.elementRepeatUnit?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('degreeOfPolymerisation',
      instance.degreeOfPolymerisation?.map((e) => e?.toJson())?.toList());
  writeNotNull('structuralRepresentation',
      instance.structuralRepresentation?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstancePolymer_DegreeOfPolymerisation
    _$SubstancePolymer_DegreeOfPolymerisationFromJson(
        Map<String, dynamic> json) {
  return SubstancePolymer_DegreeOfPolymerisation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    degree: json['degree'] == null
        ? null
        : CodeableConcept.fromJson(json['degree'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_DegreeOfPolymerisationToJson(
    SubstancePolymer_DegreeOfPolymerisation instance) {
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
  writeNotNull('degree', instance.degree?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

SubstancePolymer_StructuralRepresentation
    _$SubstancePolymer_StructuralRepresentationFromJson(
        Map<String, dynamic> json) {
  return SubstancePolymer_StructuralRepresentation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    representation: json['representation'] as String,
    elementRepresentation: json['elementRepresentation'] == null
        ? null
        : Element.fromJson(
            json['elementRepresentation'] as Map<String, dynamic>),
    attachment: json['attachment'] == null
        ? null
        : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstancePolymer_StructuralRepresentationToJson(
    SubstancePolymer_StructuralRepresentation instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('representation', instance.representation);
  writeNotNull(
      'elementRepresentation', instance.elementRepresentation?.toJson());
  writeNotNull('attachment', instance.attachment?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstancePolymerAdapter extends TypeAdapter<SubstancePolymer> {
  @override
  SubstancePolymer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer(
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
      classs: fields[11] as CodeableConcept,
      geometry: fields[12] as CodeableConcept,
      copolymerConnectivity: (fields[13] as List)?.cast<CodeableConcept>(),
      modification: (fields[14] as List)?.cast<String>(),
      elementModification: (fields[15] as List)?.cast<Element>(),
      monomerSet: (fields[16] as List)?.cast<SubstancePolymer_MonomerSet>(),
      repeat: (fields[17] as List)?.cast<SubstancePolymer_Repeat>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer obj) {
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
      ..write(obj.classs)
      ..writeByte(12)
      ..write(obj.geometry)
      ..writeByte(13)
      ..write(obj.copolymerConnectivity)
      ..writeByte(14)
      ..write(obj.modification)
      ..writeByte(15)
      ..write(obj.elementModification)
      ..writeByte(16)
      ..write(obj.monomerSet)
      ..writeByte(17)
      ..write(obj.repeat);
  }
}

class SubstancePolymer_MonomerSetAdapter
    extends TypeAdapter<SubstancePolymer_MonomerSet> {
  @override
  SubstancePolymer_MonomerSet read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer_MonomerSet(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      ratioType: fields[3] as CodeableConcept,
      startingMaterial:
          (fields[4] as List)?.cast<SubstancePolymer_StartingMaterial>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer_MonomerSet obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.ratioType)
      ..writeByte(4)
      ..write(obj.startingMaterial);
  }
}

class SubstancePolymer_StartingMaterialAdapter
    extends TypeAdapter<SubstancePolymer_StartingMaterial> {
  @override
  SubstancePolymer_StartingMaterial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer_StartingMaterial(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      material: fields[3] as CodeableConcept,
      type: fields[4] as CodeableConcept,
      isDefining: fields[5] as bool,
      elementIsDefining: fields[6] as Element,
      amount: fields[7] as SubstanceAmount,
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer_StartingMaterial obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.material)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.isDefining)
      ..writeByte(6)
      ..write(obj.elementIsDefining)
      ..writeByte(7)
      ..write(obj.amount);
  }
}

class SubstancePolymer_RepeatAdapter
    extends TypeAdapter<SubstancePolymer_Repeat> {
  @override
  SubstancePolymer_Repeat read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer_Repeat(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      numberOfUnits: fields[3] as int,
      elementNumberOfUnits: fields[4] as Element,
      averageMolecularFormula: fields[5] as String,
      elementAverageMolecularFormula: fields[6] as Element,
      repeatUnitAmountType: fields[7] as CodeableConcept,
      repeatUnit: (fields[8] as List)?.cast<SubstancePolymer_RepeatUnit>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer_Repeat obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.numberOfUnits)
      ..writeByte(4)
      ..write(obj.elementNumberOfUnits)
      ..writeByte(5)
      ..write(obj.averageMolecularFormula)
      ..writeByte(6)
      ..write(obj.elementAverageMolecularFormula)
      ..writeByte(7)
      ..write(obj.repeatUnitAmountType)
      ..writeByte(8)
      ..write(obj.repeatUnit);
  }
}

class SubstancePolymer_RepeatUnitAdapter
    extends TypeAdapter<SubstancePolymer_RepeatUnit> {
  @override
  SubstancePolymer_RepeatUnit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer_RepeatUnit(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      orientationOfPolymerisation: fields[3] as CodeableConcept,
      repeatUnit: fields[4] as String,
      elementRepeatUnit: fields[5] as Element,
      amount: fields[6] as SubstanceAmount,
      degreeOfPolymerisation:
          (fields[7] as List)?.cast<SubstancePolymer_DegreeOfPolymerisation>(),
      structuralRepresentation: (fields[8] as List)
          ?.cast<SubstancePolymer_StructuralRepresentation>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer_RepeatUnit obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.orientationOfPolymerisation)
      ..writeByte(4)
      ..write(obj.repeatUnit)
      ..writeByte(5)
      ..write(obj.elementRepeatUnit)
      ..writeByte(6)
      ..write(obj.amount)
      ..writeByte(7)
      ..write(obj.degreeOfPolymerisation)
      ..writeByte(8)
      ..write(obj.structuralRepresentation);
  }
}

class SubstancePolymer_DegreeOfPolymerisationAdapter
    extends TypeAdapter<SubstancePolymer_DegreeOfPolymerisation> {
  @override
  SubstancePolymer_DegreeOfPolymerisation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer_DegreeOfPolymerisation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      degree: fields[3] as CodeableConcept,
      amount: fields[4] as SubstanceAmount,
    );
  }

  @override
  void write(BinaryWriter writer, SubstancePolymer_DegreeOfPolymerisation obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.degree)
      ..writeByte(4)
      ..write(obj.amount);
  }
}

class SubstancePolymer_StructuralRepresentationAdapter
    extends TypeAdapter<SubstancePolymer_StructuralRepresentation> {
  @override
  SubstancePolymer_StructuralRepresentation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer_StructuralRepresentation(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      representation: fields[4] as String,
      elementRepresentation: fields[5] as Element,
      attachment: fields[6] as Attachment,
    );
  }

  @override
  void write(
      BinaryWriter writer, SubstancePolymer_StructuralRepresentation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.representation)
      ..writeByte(5)
      ..write(obj.elementRepresentation)
      ..writeByte(6)
      ..write(obj.attachment);
  }
}
