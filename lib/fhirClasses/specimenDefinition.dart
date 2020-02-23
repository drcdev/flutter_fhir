import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SpecimenDefinition {
  static Future<SpecimenDefinition> newInstance({
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
    CodeableConcept typeCollected,
    List<CodeableConcept> patientPreparation,
    String timeAspect,
    Element elementTimeAspect,
    List<CodeableConcept> collection,
    List<SpecimenDefinition_TypeTested> typeTested,
  }) async {
    var fhirDb = new DatabaseHelper();
    SpecimenDefinition newSpecimenDefinition = new SpecimenDefinition(
      resourceType: 'SpecimenDefinition',
      id: id ?? await fhirDb.newResourceId('SpecimenDefinition'),
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
      typeCollected: typeCollected,
      patientPreparation: patientPreparation,
      timeAspect: timeAspect,
      elementTimeAspect: elementTimeAspect,
      collection: collection,
      typeTested: typeTested,
    );
    newSpecimenDefinition.meta.createdAt = DateTime.now();
    newSpecimenDefinition.meta.lastUpdated =
        newSpecimenDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newSpecimenDefinition);
    return newSpecimenDefinition;
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
  String resourceType = 'SpecimenDefinition';
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
  CodeableConcept typeCollected;
  @HiveField(13)
  List<CodeableConcept> patientPreparation;
  @HiveField(14)
  String timeAspect;
  @HiveField(15)
  Element elementTimeAspect;
  @HiveField(16)
  List<CodeableConcept> collection;
  @HiveField(17)
  List<SpecimenDefinition_TypeTested> typeTested;

  SpecimenDefinition({
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
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.elementTimeAspect,
    this.collection,
    this.typeTested,
  });

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinitionToJson(this);
}

class SpecimenDefinition_TypeTested {
  static Future<SpecimenDefinition_TypeTested> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool isDerived,
    Element elementIsDerived,
    CodeableConcept type,
    String preference,
    Element elementPreference,
    SpecimenDefinition_Container container,
    String requirement,
    Element elementRequirement,
    Duration retentionTime,
    List<CodeableConcept> rejectionCriterion,
    List<SpecimenDefinition_Handling> handling,
  }) async {
    var fhirDb = new DatabaseHelper();
    SpecimenDefinition_TypeTested newSpecimenDefinition_TypeTested =
        new SpecimenDefinition_TypeTested(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      isDerived: isDerived,
      elementIsDerived: elementIsDerived,
      type: type,
      preference: preference,
      elementPreference: elementPreference,
      container: container,
      requirement: requirement,
      elementRequirement: elementRequirement,
      retentionTime: retentionTime,
      rejectionCriterion: rejectionCriterion,
      handling: handling,
    );
    return newSpecimenDefinition_TypeTested;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool isDerived;
  @HiveField(4)
  Element elementIsDerived;
  @HiveField(5)
  CodeableConcept type;
  @HiveField(6)
  String preference;
  @HiveField(7)
  Element elementPreference;
  @HiveField(8)
  SpecimenDefinition_Container container;
  @HiveField(9)
  String requirement;
  @HiveField(10)
  Element elementRequirement;
  @HiveField(11)
  Duration retentionTime;
  @HiveField(12)
  List<CodeableConcept> rejectionCriterion;
  @HiveField(13)
  List<SpecimenDefinition_Handling> handling;

  SpecimenDefinition_TypeTested({
    this.id,
    this.extension,
    this.modifierExtension,
    this.isDerived,
    this.elementIsDerived,
    this.type,
    this.preference,
    this.elementPreference,
    this.container,
    this.requirement,
    this.elementRequirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
  });

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_TypeTestedToJson(this);
}

class SpecimenDefinition_Container {
  static Future<SpecimenDefinition_Container> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept material,
    CodeableConcept type,
    CodeableConcept cap,
    String description,
    Element elementDescription,
    Quantity capacity,
    Quantity minimumVolumeQuantity,
    String minimumVolumeString,
    Element elementMinimumVolumeString,
    List<SpecimenDefinition_Additive> additive,
    String preparation,
    Element elementPreparation,
  }) async {
    var fhirDb = new DatabaseHelper();
    SpecimenDefinition_Container newSpecimenDefinition_Container =
        new SpecimenDefinition_Container(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      material: material,
      type: type,
      cap: cap,
      description: description,
      elementDescription: elementDescription,
      capacity: capacity,
      minimumVolumeQuantity: minimumVolumeQuantity,
      minimumVolumeString: minimumVolumeString,
      elementMinimumVolumeString: elementMinimumVolumeString,
      additive: additive,
      preparation: preparation,
      elementPreparation: elementPreparation,
    );
    return newSpecimenDefinition_Container;
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
  CodeableConcept cap;
  @HiveField(6)
  String description;
  @HiveField(7)
  Element elementDescription;
  @HiveField(8)
  Quantity capacity;
  @HiveField(9)
  Quantity minimumVolumeQuantity;
  @HiveField(10)
  String minimumVolumeString;
  @HiveField(11)
  Element elementMinimumVolumeString;
  @HiveField(12)
  List<SpecimenDefinition_Additive> additive;
  @HiveField(13)
  String preparation;
  @HiveField(14)
  Element elementPreparation;

  SpecimenDefinition_Container({
    this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.elementDescription,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.elementMinimumVolumeString,
    this.additive,
    this.preparation,
    this.elementPreparation,
  });

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_ContainerToJson(this);
}

class SpecimenDefinition_Additive {
  static Future<SpecimenDefinition_Additive> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept additiveCodeableConcept,
    Reference additiveReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    SpecimenDefinition_Additive newSpecimenDefinition_Additive =
        new SpecimenDefinition_Additive(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      additiveCodeableConcept: additiveCodeableConcept,
      additiveReference: additiveReference,
    );
    return newSpecimenDefinition_Additive;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept additiveCodeableConcept;
  @HiveField(4)
  Reference additiveReference;

  SpecimenDefinition_Additive({
    this.id,
    this.extension,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_AdditiveToJson(this);
}

class SpecimenDefinition_Handling {
  static Future<SpecimenDefinition_Handling> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept temperatureQualifier,
    Range temperatureRange,
    Duration maxDuration,
    String instruction,
    Element elementInstruction,
  }) async {
    var fhirDb = new DatabaseHelper();
    SpecimenDefinition_Handling newSpecimenDefinition_Handling =
        new SpecimenDefinition_Handling(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      temperatureQualifier: temperatureQualifier,
      temperatureRange: temperatureRange,
      maxDuration: maxDuration,
      instruction: instruction,
      elementInstruction: elementInstruction,
    );
    return newSpecimenDefinition_Handling;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept temperatureQualifier;
  @HiveField(4)
  Range temperatureRange;
  @HiveField(5)
  Duration maxDuration;
  @HiveField(6)
  String instruction;
  @HiveField(7)
  Element elementInstruction;

  SpecimenDefinition_Handling({
    this.id,
    this.extension,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.elementInstruction,
  });

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_HandlingToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecimenDefinition _$SpecimenDefinitionFromJson(Map<String, dynamic> json) {
  return SpecimenDefinition(
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
    typeCollected: json['typeCollected'] == null
        ? null
        : CodeableConcept.fromJson(
            json['typeCollected'] as Map<String, dynamic>),
    patientPreparation: (json['patientPreparation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeAspect: json['timeAspect'] as String,
    elementTimeAspect: json['elementTimeAspect'] == null
        ? null
        : Element.fromJson(json['elementTimeAspect'] as Map<String, dynamic>),
    collection: (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeTested: (json['typeTested'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_TypeTested.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinitionToJson(SpecimenDefinition instance) {
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
  writeNotNull('typeCollected', instance.typeCollected?.toJson());
  writeNotNull('patientPreparation',
      instance.patientPreparation?.map((e) => e?.toJson())?.toList());
  writeNotNull('timeAspect', instance.timeAspect);
  writeNotNull('elementTimeAspect', instance.elementTimeAspect?.toJson());
  writeNotNull(
      'collection', instance.collection?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'typeTested', instance.typeTested?.map((e) => e?.toJson())?.toList());
  return val;
}

SpecimenDefinition_TypeTested _$SpecimenDefinition_TypeTestedFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_TypeTested(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isDerived: json['isDerived'] as bool,
    elementIsDerived: json['elementIsDerived'] == null
        ? null
        : Element.fromJson(json['elementIsDerived'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    preference: json['preference'] as String,
    elementPreference: json['elementPreference'] == null
        ? null
        : Element.fromJson(json['elementPreference'] as Map<String, dynamic>),
    container: json['container'] == null
        ? null
        : SpecimenDefinition_Container.fromJson(
            json['container'] as Map<String, dynamic>),
    requirement: json['requirement'] as String,
    elementRequirement: json['elementRequirement'] == null
        ? null
        : Element.fromJson(json['elementRequirement'] as Map<String, dynamic>),
    retentionTime: json['retentionTime'] == null
        ? null
        : Duration.fromJson(json['retentionTime'] as Map<String, dynamic>),
    rejectionCriterion: (json['rejectionCriterion'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    handling: (json['handling'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Handling.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinition_TypeTestedToJson(
    SpecimenDefinition_TypeTested instance) {
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
  writeNotNull('isDerived', instance.isDerived);
  writeNotNull('elementIsDerived', instance.elementIsDerived?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('preference', instance.preference);
  writeNotNull('elementPreference', instance.elementPreference?.toJson());
  writeNotNull('container', instance.container?.toJson());
  writeNotNull('requirement', instance.requirement);
  writeNotNull('elementRequirement', instance.elementRequirement?.toJson());
  writeNotNull('retentionTime', instance.retentionTime?.toJson());
  writeNotNull('rejectionCriterion',
      instance.rejectionCriterion?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'handling', instance.handling?.map((e) => e?.toJson())?.toList());
  return val;
}

SpecimenDefinition_Container _$SpecimenDefinition_ContainerFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Container(
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
    cap: json['cap'] == null
        ? null
        : CodeableConcept.fromJson(json['cap'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    capacity: json['capacity'] == null
        ? null
        : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
    minimumVolumeQuantity: json['minimumVolumeQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['minimumVolumeQuantity'] as Map<String, dynamic>),
    minimumVolumeString: json['minimumVolumeString'] as String,
    elementMinimumVolumeString: json['elementMinimumVolumeString'] == null
        ? null
        : Element.fromJson(
            json['elementMinimumVolumeString'] as Map<String, dynamic>),
    additive: (json['additive'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Additive.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preparation: json['preparation'] as String,
    elementPreparation: json['elementPreparation'] == null
        ? null
        : Element.fromJson(json['elementPreparation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_ContainerToJson(
    SpecimenDefinition_Container instance) {
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
  writeNotNull('cap', instance.cap?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('capacity', instance.capacity?.toJson());
  writeNotNull(
      'minimumVolumeQuantity', instance.minimumVolumeQuantity?.toJson());
  writeNotNull('minimumVolumeString', instance.minimumVolumeString);
  writeNotNull('elementMinimumVolumeString',
      instance.elementMinimumVolumeString?.toJson());
  writeNotNull(
      'additive', instance.additive?.map((e) => e?.toJson())?.toList());
  writeNotNull('preparation', instance.preparation);
  writeNotNull('elementPreparation', instance.elementPreparation?.toJson());
  return val;
}

SpecimenDefinition_Additive _$SpecimenDefinition_AdditiveFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Additive(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additiveCodeableConcept: json['additiveCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveCodeableConcept'] as Map<String, dynamic>),
    additiveReference: json['additiveReference'] == null
        ? null
        : Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_AdditiveToJson(
    SpecimenDefinition_Additive instance) {
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
  writeNotNull(
      'additiveCodeableConcept', instance.additiveCodeableConcept?.toJson());
  writeNotNull('additiveReference', instance.additiveReference?.toJson());
  return val;
}

SpecimenDefinition_Handling _$SpecimenDefinition_HandlingFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Handling(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    temperatureQualifier: json['temperatureQualifier'] == null
        ? null
        : CodeableConcept.fromJson(
            json['temperatureQualifier'] as Map<String, dynamic>),
    temperatureRange: json['temperatureRange'] == null
        ? null
        : Range.fromJson(json['temperatureRange'] as Map<String, dynamic>),
    maxDuration: json['maxDuration'] == null
        ? null
        : Duration.fromJson(json['maxDuration'] as Map<String, dynamic>),
    instruction: json['instruction'] as String,
    elementInstruction: json['elementInstruction'] == null
        ? null
        : Element.fromJson(json['elementInstruction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_HandlingToJson(
    SpecimenDefinition_Handling instance) {
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
  writeNotNull('temperatureQualifier', instance.temperatureQualifier?.toJson());
  writeNotNull('temperatureRange', instance.temperatureRange?.toJson());
  writeNotNull('maxDuration', instance.maxDuration?.toJson());
  writeNotNull('instruction', instance.instruction);
  writeNotNull('elementInstruction', instance.elementInstruction?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpecimenDefinitionAdapter extends TypeAdapter<SpecimenDefinition> {
  @override
  SpecimenDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition(
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
      typeCollected: fields[12] as CodeableConcept,
      patientPreparation: (fields[13] as List)?.cast<CodeableConcept>(),
      timeAspect: fields[14] as String,
      elementTimeAspect: fields[15] as Element,
      collection: (fields[16] as List)?.cast<CodeableConcept>(),
      typeTested: (fields[17] as List)?.cast<SpecimenDefinition_TypeTested>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition obj) {
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
      ..write(obj.typeCollected)
      ..writeByte(13)
      ..write(obj.patientPreparation)
      ..writeByte(14)
      ..write(obj.timeAspect)
      ..writeByte(15)
      ..write(obj.elementTimeAspect)
      ..writeByte(16)
      ..write(obj.collection)
      ..writeByte(17)
      ..write(obj.typeTested);
  }
}

class SpecimenDefinition_TypeTestedAdapter
    extends TypeAdapter<SpecimenDefinition_TypeTested> {
  @override
  SpecimenDefinition_TypeTested read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_TypeTested(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      isDerived: fields[3] as bool,
      elementIsDerived: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      preference: fields[6] as String,
      elementPreference: fields[7] as Element,
      container: fields[8] as SpecimenDefinition_Container,
      requirement: fields[9] as String,
      elementRequirement: fields[10] as Element,
      retentionTime: fields[11] as Duration,
      rejectionCriterion: (fields[12] as List)?.cast<CodeableConcept>(),
      handling: (fields[13] as List)?.cast<SpecimenDefinition_Handling>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_TypeTested obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.isDerived)
      ..writeByte(4)
      ..write(obj.elementIsDerived)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.preference)
      ..writeByte(7)
      ..write(obj.elementPreference)
      ..writeByte(8)
      ..write(obj.container)
      ..writeByte(9)
      ..write(obj.requirement)
      ..writeByte(10)
      ..write(obj.elementRequirement)
      ..writeByte(11)
      ..write(obj.retentionTime)
      ..writeByte(12)
      ..write(obj.rejectionCriterion)
      ..writeByte(13)
      ..write(obj.handling);
  }
}

class SpecimenDefinition_ContainerAdapter
    extends TypeAdapter<SpecimenDefinition_Container> {
  @override
  SpecimenDefinition_Container read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_Container(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      material: fields[3] as CodeableConcept,
      type: fields[4] as CodeableConcept,
      cap: fields[5] as CodeableConcept,
      description: fields[6] as String,
      elementDescription: fields[7] as Element,
      capacity: fields[8] as Quantity,
      minimumVolumeQuantity: fields[9] as Quantity,
      minimumVolumeString: fields[10] as String,
      elementMinimumVolumeString: fields[11] as Element,
      additive: (fields[12] as List)?.cast<SpecimenDefinition_Additive>(),
      preparation: fields[13] as String,
      elementPreparation: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_Container obj) {
    writer
      ..writeByte(15)
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
      ..write(obj.cap)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.elementDescription)
      ..writeByte(8)
      ..write(obj.capacity)
      ..writeByte(9)
      ..write(obj.minimumVolumeQuantity)
      ..writeByte(10)
      ..write(obj.minimumVolumeString)
      ..writeByte(11)
      ..write(obj.elementMinimumVolumeString)
      ..writeByte(12)
      ..write(obj.additive)
      ..writeByte(13)
      ..write(obj.preparation)
      ..writeByte(14)
      ..write(obj.elementPreparation);
  }
}

class SpecimenDefinition_AdditiveAdapter
    extends TypeAdapter<SpecimenDefinition_Additive> {
  @override
  SpecimenDefinition_Additive read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_Additive(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      additiveCodeableConcept: fields[3] as CodeableConcept,
      additiveReference: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_Additive obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.additiveCodeableConcept)
      ..writeByte(4)
      ..write(obj.additiveReference);
  }
}

class SpecimenDefinition_HandlingAdapter
    extends TypeAdapter<SpecimenDefinition_Handling> {
  @override
  SpecimenDefinition_Handling read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_Handling(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      temperatureQualifier: fields[3] as CodeableConcept,
      temperatureRange: fields[4] as Range,
      maxDuration: fields[5] as Duration,
      instruction: fields[6] as String,
      elementInstruction: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_Handling obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.temperatureQualifier)
      ..writeByte(4)
      ..write(obj.temperatureRange)
      ..writeByte(5)
      ..write(obj.maxDuration)
      ..writeByte(6)
      ..write(obj.instruction)
      ..writeByte(7)
      ..write(obj.elementInstruction);
  }
}
