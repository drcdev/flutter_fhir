import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SubstanceSourceMaterial {
  static Future<SubstanceSourceMaterial> newInstance({
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
    CodeableConcept sourceMaterialClass,
    CodeableConcept sourceMaterialType,
    CodeableConcept sourceMaterialState,
    Identifier organismId,
    String organismName,
    Element elementOrganismName,
    List<Identifier> parentSubstanceId,
    List<String> parentSubstanceName,
    List<Element> elementParentSubstanceName,
    List<CodeableConcept> countryOfOrigin,
    List<String> geographicalLocation,
    List<Element> elementGeographicalLocation,
    CodeableConcept developmentStage,
    List<SubstanceSourceMaterial_FractionDescription> fractionDescription,
    SubstanceSourceMaterial_Organism organism,
    List<SubstanceSourceMaterial_PartDescription> partDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial newSubstanceSourceMaterial =
        new SubstanceSourceMaterial(
      resourceType: 'SubstanceSourceMaterial',
      id: id ?? await fhirDb.newResourceId('SubstanceSourceMaterial'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      sourceMaterialClass: sourceMaterialClass,
      sourceMaterialType: sourceMaterialType,
      sourceMaterialState: sourceMaterialState,
      organismId: organismId,
      organismName: organismName,
      elementOrganismName: elementOrganismName,
      parentSubstanceId: parentSubstanceId,
      parentSubstanceName: parentSubstanceName,
      elementParentSubstanceName: elementParentSubstanceName,
      countryOfOrigin: countryOfOrigin,
      geographicalLocation: geographicalLocation,
      elementGeographicalLocation: elementGeographicalLocation,
      developmentStage: developmentStage,
      fractionDescription: fractionDescription,
      organism: organism,
      partDescription: partDescription,
    );
    newSubstanceSourceMaterial.meta.createdAt = DateTime.now();
    newSubstanceSourceMaterial.meta.lastUpdated =
        newSubstanceSourceMaterial.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstanceSourceMaterial);
    return newSubstanceSourceMaterial;
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
  String resourceType = 'SubstanceSourceMaterial';
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
  CodeableConcept sourceMaterialClass;
  @HiveField(12)
  CodeableConcept sourceMaterialType;
  @HiveField(13)
  CodeableConcept sourceMaterialState;
  @HiveField(14)
  Identifier organismId;
  @HiveField(15)
  String organismName;
  @HiveField(16)
  Element elementOrganismName;
  @HiveField(17)
  List<Identifier> parentSubstanceId;
  @HiveField(18)
  List<String> parentSubstanceName;
  @HiveField(19)
  List<Element> elementParentSubstanceName;
  @HiveField(20)
  List<CodeableConcept> countryOfOrigin;
  @HiveField(21)
  List<String> geographicalLocation;
  @HiveField(22)
  List<Element> elementGeographicalLocation;
  @HiveField(23)
  CodeableConcept developmentStage;
  @HiveField(24)
  List<SubstanceSourceMaterial_FractionDescription> fractionDescription;
  @HiveField(25)
  SubstanceSourceMaterial_Organism organism;
  @HiveField(26)
  List<SubstanceSourceMaterial_PartDescription> partDescription;

  SubstanceSourceMaterial({
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
    this.sourceMaterialClass,
    this.sourceMaterialType,
    this.sourceMaterialState,
    this.organismId,
    this.organismName,
    this.elementOrganismName,
    this.parentSubstanceId,
    this.parentSubstanceName,
    this.elementParentSubstanceName,
    this.countryOfOrigin,
    this.geographicalLocation,
    this.elementGeographicalLocation,
    this.developmentStage,
    this.fractionDescription,
    this.organism,
    this.partDescription,
  });

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterialToJson(this);
}

class SubstanceSourceMaterial_FractionDescription {
  static Future<SubstanceSourceMaterial_FractionDescription> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String fraction,
    Element elementFraction,
    CodeableConcept materialType,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial_FractionDescription
        newSubstanceSourceMaterial_FractionDescription =
        new SubstanceSourceMaterial_FractionDescription(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      fraction: fraction,
      elementFraction: elementFraction,
      materialType: materialType,
    );
    return newSubstanceSourceMaterial_FractionDescription;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String fraction;
  @HiveField(4)
  Element elementFraction;
  @HiveField(5)
  CodeableConcept materialType;

  SubstanceSourceMaterial_FractionDescription({
    this.id,
    this.extension,
    this.modifierExtension,
    this.fraction,
    this.elementFraction,
    this.materialType,
  });

  factory SubstanceSourceMaterial_FractionDescription.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_FractionDescriptionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSourceMaterial_FractionDescriptionToJson(this);
}

class SubstanceSourceMaterial_Organism {
  static Future<SubstanceSourceMaterial_Organism> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept family,
    CodeableConcept genus,
    CodeableConcept species,
    CodeableConcept intraspecificType,
    String intraspecificDescription,
    Element elementIntraspecificDescription,
    List<SubstanceSourceMaterial_Author> author,
    SubstanceSourceMaterial_Hybrid hybrid,
    SubstanceSourceMaterial_OrganismGeneral organismGeneral,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial_Organism newSubstanceSourceMaterial_Organism =
        new SubstanceSourceMaterial_Organism(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      family: family,
      genus: genus,
      species: species,
      intraspecificType: intraspecificType,
      intraspecificDescription: intraspecificDescription,
      elementIntraspecificDescription: elementIntraspecificDescription,
      author: author,
      hybrid: hybrid,
      organismGeneral: organismGeneral,
    );
    return newSubstanceSourceMaterial_Organism;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept family;
  @HiveField(4)
  CodeableConcept genus;
  @HiveField(5)
  CodeableConcept species;
  @HiveField(6)
  CodeableConcept intraspecificType;
  @HiveField(7)
  String intraspecificDescription;
  @HiveField(8)
  Element elementIntraspecificDescription;
  @HiveField(9)
  List<SubstanceSourceMaterial_Author> author;
  @HiveField(10)
  SubstanceSourceMaterial_Hybrid hybrid;
  @HiveField(11)
  SubstanceSourceMaterial_OrganismGeneral organismGeneral;

  SubstanceSourceMaterial_Organism({
    this.id,
    this.extension,
    this.modifierExtension,
    this.family,
    this.genus,
    this.species,
    this.intraspecificType,
    this.intraspecificDescription,
    this.elementIntraspecificDescription,
    this.author,
    this.hybrid,
    this.organismGeneral,
  });

  factory SubstanceSourceMaterial_Organism.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_OrganismFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSourceMaterial_OrganismToJson(this);
}

class SubstanceSourceMaterial_Author {
  static Future<SubstanceSourceMaterial_Author> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept authorType,
    String authorDescription,
    Element elementAuthorDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial_Author newSubstanceSourceMaterial_Author =
        new SubstanceSourceMaterial_Author(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      authorType: authorType,
      authorDescription: authorDescription,
      elementAuthorDescription: elementAuthorDescription,
    );
    return newSubstanceSourceMaterial_Author;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept authorType;
  @HiveField(4)
  String authorDescription;
  @HiveField(5)
  Element elementAuthorDescription;

  SubstanceSourceMaterial_Author({
    this.id,
    this.extension,
    this.modifierExtension,
    this.authorType,
    this.authorDescription,
    this.elementAuthorDescription,
  });

  factory SubstanceSourceMaterial_Author.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_AuthorToJson(this);
}

class SubstanceSourceMaterial_Hybrid {
  static Future<SubstanceSourceMaterial_Hybrid> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String maternalOrganismId,
    Element elementMaternalOrganismId,
    String maternalOrganismName,
    Element elementMaternalOrganismName,
    String paternalOrganismId,
    Element elementPaternalOrganismId,
    String paternalOrganismName,
    Element elementPaternalOrganismName,
    CodeableConcept hybridType,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial_Hybrid newSubstanceSourceMaterial_Hybrid =
        new SubstanceSourceMaterial_Hybrid(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      maternalOrganismId: maternalOrganismId,
      elementMaternalOrganismId: elementMaternalOrganismId,
      maternalOrganismName: maternalOrganismName,
      elementMaternalOrganismName: elementMaternalOrganismName,
      paternalOrganismId: paternalOrganismId,
      elementPaternalOrganismId: elementPaternalOrganismId,
      paternalOrganismName: paternalOrganismName,
      elementPaternalOrganismName: elementPaternalOrganismName,
      hybridType: hybridType,
    );
    return newSubstanceSourceMaterial_Hybrid;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String maternalOrganismId;
  @HiveField(4)
  Element elementMaternalOrganismId;
  @HiveField(5)
  String maternalOrganismName;
  @HiveField(6)
  Element elementMaternalOrganismName;
  @HiveField(7)
  String paternalOrganismId;
  @HiveField(8)
  Element elementPaternalOrganismId;
  @HiveField(9)
  String paternalOrganismName;
  @HiveField(10)
  Element elementPaternalOrganismName;
  @HiveField(11)
  CodeableConcept hybridType;

  SubstanceSourceMaterial_Hybrid({
    this.id,
    this.extension,
    this.modifierExtension,
    this.maternalOrganismId,
    this.elementMaternalOrganismId,
    this.maternalOrganismName,
    this.elementMaternalOrganismName,
    this.paternalOrganismId,
    this.elementPaternalOrganismId,
    this.paternalOrganismName,
    this.elementPaternalOrganismName,
    this.hybridType,
  });

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_HybridFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSourceMaterial_HybridToJson(this);
}

class SubstanceSourceMaterial_OrganismGeneral {
  static Future<SubstanceSourceMaterial_OrganismGeneral> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept kingdom,
    CodeableConcept phylum,
    CodeableConcept classs,
    CodeableConcept order,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial_OrganismGeneral
        newSubstanceSourceMaterial_OrganismGeneral =
        new SubstanceSourceMaterial_OrganismGeneral(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      kingdom: kingdom,
      phylum: phylum,
      classs: classs,
      order: order,
    );
    return newSubstanceSourceMaterial_OrganismGeneral;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept kingdom;
  @HiveField(4)
  CodeableConcept phylum;
  @HiveField(5)
  CodeableConcept classs;
  @HiveField(6)
  CodeableConcept order;

  SubstanceSourceMaterial_OrganismGeneral({
    this.id,
    this.extension,
    this.modifierExtension,
    this.kingdom,
    this.phylum,
    this.classs,
    this.order,
  });

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSourceMaterial_OrganismGeneralToJson(this);
}

class SubstanceSourceMaterial_PartDescription {
  static Future<SubstanceSourceMaterial_PartDescription> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept part,
    CodeableConcept partLocation,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSourceMaterial_PartDescription
        newSubstanceSourceMaterial_PartDescription =
        new SubstanceSourceMaterial_PartDescription(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      part: part,
      partLocation: partLocation,
    );
    return newSubstanceSourceMaterial_PartDescription;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept part;
  @HiveField(4)
  CodeableConcept partLocation;

  SubstanceSourceMaterial_PartDescription({
    this.id,
    this.extension,
    this.modifierExtension,
    this.part,
    this.partLocation,
  });

  factory SubstanceSourceMaterial_PartDescription.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_PartDescriptionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSourceMaterial_PartDescriptionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceSourceMaterial _$SubstanceSourceMaterialFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial(
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
    sourceMaterialClass: json['sourceMaterialClass'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialClass'] as Map<String, dynamic>),
    sourceMaterialType: json['sourceMaterialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialType'] as Map<String, dynamic>),
    sourceMaterialState: json['sourceMaterialState'] == null
        ? null
        : CodeableConcept.fromJson(
            json['sourceMaterialState'] as Map<String, dynamic>),
    organismId: json['organismId'] == null
        ? null
        : Identifier.fromJson(json['organismId'] as Map<String, dynamic>),
    organismName: json['organismName'] as String,
    elementOrganismName: json['elementOrganismName'] == null
        ? null
        : Element.fromJson(json['elementOrganismName'] as Map<String, dynamic>),
    parentSubstanceId: (json['parentSubstanceId'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parentSubstanceName: (json['parentSubstanceName'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementParentSubstanceName: (json['elementParentSubstanceName'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countryOfOrigin: (json['countryOfOrigin'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    geographicalLocation: (json['geographicalLocation'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementGeographicalLocation: (json['elementGeographicalLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    developmentStage: json['developmentStage'] == null
        ? null
        : CodeableConcept.fromJson(
            json['developmentStage'] as Map<String, dynamic>),
    fractionDescription: (json['fractionDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_FractionDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    organism: json['organism'] == null
        ? null
        : SubstanceSourceMaterial_Organism.fromJson(
            json['organism'] as Map<String, dynamic>),
    partDescription: (json['partDescription'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_PartDescription.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterialToJson(
    SubstanceSourceMaterial instance) {
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
  writeNotNull('sourceMaterialClass', instance.sourceMaterialClass?.toJson());
  writeNotNull('sourceMaterialType', instance.sourceMaterialType?.toJson());
  writeNotNull('sourceMaterialState', instance.sourceMaterialState?.toJson());
  writeNotNull('organismId', instance.organismId?.toJson());
  writeNotNull('organismName', instance.organismName);
  writeNotNull('elementOrganismName', instance.elementOrganismName?.toJson());
  writeNotNull('parentSubstanceId',
      instance.parentSubstanceId?.map((e) => e?.toJson())?.toList());
  writeNotNull('parentSubstanceName', instance.parentSubstanceName);
  writeNotNull('elementParentSubstanceName',
      instance.elementParentSubstanceName?.map((e) => e?.toJson())?.toList());
  writeNotNull('countryOfOrigin',
      instance.countryOfOrigin?.map((e) => e?.toJson())?.toList());
  writeNotNull('geographicalLocation', instance.geographicalLocation);
  writeNotNull('elementGeographicalLocation',
      instance.elementGeographicalLocation?.map((e) => e?.toJson())?.toList());
  writeNotNull('developmentStage', instance.developmentStage?.toJson());
  writeNotNull('fractionDescription',
      instance.fractionDescription?.map((e) => e?.toJson())?.toList());
  writeNotNull('organism', instance.organism?.toJson());
  writeNotNull('partDescription',
      instance.partDescription?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceSourceMaterial_FractionDescription
    _$SubstanceSourceMaterial_FractionDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_FractionDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fraction: json['fraction'] as String,
    elementFraction: json['elementFraction'] == null
        ? null
        : Element.fromJson(json['elementFraction'] as Map<String, dynamic>),
    materialType: json['materialType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['materialType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_FractionDescriptionToJson(
    SubstanceSourceMaterial_FractionDescription instance) {
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
  writeNotNull('fraction', instance.fraction);
  writeNotNull('elementFraction', instance.elementFraction?.toJson());
  writeNotNull('materialType', instance.materialType?.toJson());
  return val;
}

SubstanceSourceMaterial_Organism _$SubstanceSourceMaterial_OrganismFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Organism(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    family: json['family'] == null
        ? null
        : CodeableConcept.fromJson(json['family'] as Map<String, dynamic>),
    genus: json['genus'] == null
        ? null
        : CodeableConcept.fromJson(json['genus'] as Map<String, dynamic>),
    species: json['species'] == null
        ? null
        : CodeableConcept.fromJson(json['species'] as Map<String, dynamic>),
    intraspecificType: json['intraspecificType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intraspecificType'] as Map<String, dynamic>),
    intraspecificDescription: json['intraspecificDescription'] as String,
    elementIntraspecificDescription: json['elementIntraspecificDescription'] ==
            null
        ? null
        : Element.fromJson(
            json['elementIntraspecificDescription'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSourceMaterial_Author.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    hybrid: json['hybrid'] == null
        ? null
        : SubstanceSourceMaterial_Hybrid.fromJson(
            json['hybrid'] as Map<String, dynamic>),
    organismGeneral: json['organismGeneral'] == null
        ? null
        : SubstanceSourceMaterial_OrganismGeneral.fromJson(
            json['organismGeneral'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismToJson(
    SubstanceSourceMaterial_Organism instance) {
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
  writeNotNull('family', instance.family?.toJson());
  writeNotNull('genus', instance.genus?.toJson());
  writeNotNull('species', instance.species?.toJson());
  writeNotNull('intraspecificType', instance.intraspecificType?.toJson());
  writeNotNull('intraspecificDescription', instance.intraspecificDescription);
  writeNotNull('elementIntraspecificDescription',
      instance.elementIntraspecificDescription?.toJson());
  writeNotNull('author', instance.author?.map((e) => e?.toJson())?.toList());
  writeNotNull('hybrid', instance.hybrid?.toJson());
  writeNotNull('organismGeneral', instance.organismGeneral?.toJson());
  return val;
}

SubstanceSourceMaterial_Author _$SubstanceSourceMaterial_AuthorFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Author(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorType: json['authorType'] == null
        ? null
        : CodeableConcept.fromJson(json['authorType'] as Map<String, dynamic>),
    authorDescription: json['authorDescription'] as String,
    elementAuthorDescription: json['elementAuthorDescription'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_AuthorToJson(
    SubstanceSourceMaterial_Author instance) {
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
  writeNotNull('authorType', instance.authorType?.toJson());
  writeNotNull('authorDescription', instance.authorDescription);
  writeNotNull(
      'elementAuthorDescription', instance.elementAuthorDescription?.toJson());
  return val;
}

SubstanceSourceMaterial_Hybrid _$SubstanceSourceMaterial_HybridFromJson(
    Map<String, dynamic> json) {
  return SubstanceSourceMaterial_Hybrid(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maternalOrganismId: json['maternalOrganismId'] as String,
    elementMaternalOrganismId: json['elementMaternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['elementMaternalOrganismId'] as Map<String, dynamic>),
    maternalOrganismName: json['maternalOrganismName'] as String,
    elementMaternalOrganismName: json['elementMaternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['elementMaternalOrganismName'] as Map<String, dynamic>),
    paternalOrganismId: json['paternalOrganismId'] as String,
    elementPaternalOrganismId: json['elementPaternalOrganismId'] == null
        ? null
        : Element.fromJson(
            json['elementPaternalOrganismId'] as Map<String, dynamic>),
    paternalOrganismName: json['paternalOrganismName'] as String,
    elementPaternalOrganismName: json['elementPaternalOrganismName'] == null
        ? null
        : Element.fromJson(
            json['elementPaternalOrganismName'] as Map<String, dynamic>),
    hybridType: json['hybridType'] == null
        ? null
        : CodeableConcept.fromJson(json['hybridType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_HybridToJson(
    SubstanceSourceMaterial_Hybrid instance) {
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
  writeNotNull('maternalOrganismId', instance.maternalOrganismId);
  writeNotNull('elementMaternalOrganismId',
      instance.elementMaternalOrganismId?.toJson());
  writeNotNull('maternalOrganismName', instance.maternalOrganismName);
  writeNotNull('elementMaternalOrganismName',
      instance.elementMaternalOrganismName?.toJson());
  writeNotNull('paternalOrganismId', instance.paternalOrganismId);
  writeNotNull('elementPaternalOrganismId',
      instance.elementPaternalOrganismId?.toJson());
  writeNotNull('paternalOrganismName', instance.paternalOrganismName);
  writeNotNull('elementPaternalOrganismName',
      instance.elementPaternalOrganismName?.toJson());
  writeNotNull('hybridType', instance.hybridType?.toJson());
  return val;
}

SubstanceSourceMaterial_OrganismGeneral
    _$SubstanceSourceMaterial_OrganismGeneralFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_OrganismGeneral(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kingdom: json['kingdom'] == null
        ? null
        : CodeableConcept.fromJson(json['kingdom'] as Map<String, dynamic>),
    phylum: json['phylum'] == null
        ? null
        : CodeableConcept.fromJson(json['phylum'] as Map<String, dynamic>),
    classs: json['classs'] == null
        ? null
        : CodeableConcept.fromJson(json['classs'] as Map<String, dynamic>),
    order: json['order'] == null
        ? null
        : CodeableConcept.fromJson(json['order'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_OrganismGeneralToJson(
    SubstanceSourceMaterial_OrganismGeneral instance) {
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
  writeNotNull('kingdom', instance.kingdom?.toJson());
  writeNotNull('phylum', instance.phylum?.toJson());
  writeNotNull('classs', instance.classs?.toJson());
  writeNotNull('order', instance.order?.toJson());
  return val;
}

SubstanceSourceMaterial_PartDescription
    _$SubstanceSourceMaterial_PartDescriptionFromJson(
        Map<String, dynamic> json) {
  return SubstanceSourceMaterial_PartDescription(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    part: json['part'] == null
        ? null
        : CodeableConcept.fromJson(json['part'] as Map<String, dynamic>),
    partLocation: json['partLocation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['partLocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSourceMaterial_PartDescriptionToJson(
    SubstanceSourceMaterial_PartDescription instance) {
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
  writeNotNull('part', instance.part?.toJson());
  writeNotNull('partLocation', instance.partLocation?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceSourceMaterialAdapter
    extends TypeAdapter<SubstanceSourceMaterial> {
  @override
  SubstanceSourceMaterial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial(
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
      sourceMaterialClass: fields[11] as CodeableConcept,
      sourceMaterialType: fields[12] as CodeableConcept,
      sourceMaterialState: fields[13] as CodeableConcept,
      organismId: fields[14] as Identifier,
      organismName: fields[15] as String,
      elementOrganismName: fields[16] as Element,
      parentSubstanceId: (fields[17] as List)?.cast<Identifier>(),
      parentSubstanceName: (fields[18] as List)?.cast<String>(),
      elementParentSubstanceName: (fields[19] as List)?.cast<Element>(),
      countryOfOrigin: (fields[20] as List)?.cast<CodeableConcept>(),
      geographicalLocation: (fields[21] as List)?.cast<String>(),
      elementGeographicalLocation: (fields[22] as List)?.cast<Element>(),
      developmentStage: fields[23] as CodeableConcept,
      fractionDescription: (fields[24] as List)
          ?.cast<SubstanceSourceMaterial_FractionDescription>(),
      organism: fields[25] as SubstanceSourceMaterial_Organism,
      partDescription:
          (fields[26] as List)?.cast<SubstanceSourceMaterial_PartDescription>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.sourceMaterialClass)
      ..writeByte(12)
      ..write(obj.sourceMaterialType)
      ..writeByte(13)
      ..write(obj.sourceMaterialState)
      ..writeByte(14)
      ..write(obj.organismId)
      ..writeByte(15)
      ..write(obj.organismName)
      ..writeByte(16)
      ..write(obj.elementOrganismName)
      ..writeByte(17)
      ..write(obj.parentSubstanceId)
      ..writeByte(18)
      ..write(obj.parentSubstanceName)
      ..writeByte(19)
      ..write(obj.elementParentSubstanceName)
      ..writeByte(20)
      ..write(obj.countryOfOrigin)
      ..writeByte(21)
      ..write(obj.geographicalLocation)
      ..writeByte(22)
      ..write(obj.elementGeographicalLocation)
      ..writeByte(23)
      ..write(obj.developmentStage)
      ..writeByte(24)
      ..write(obj.fractionDescription)
      ..writeByte(25)
      ..write(obj.organism)
      ..writeByte(26)
      ..write(obj.partDescription);
  }
}

class SubstanceSourceMaterial_FractionDescriptionAdapter
    extends TypeAdapter<SubstanceSourceMaterial_FractionDescription> {
  @override
  SubstanceSourceMaterial_FractionDescription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_FractionDescription(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      fraction: fields[3] as String,
      elementFraction: fields[4] as Element,
      materialType: fields[5] as CodeableConcept,
    );
  }

  @override
  void write(
      BinaryWriter writer, SubstanceSourceMaterial_FractionDescription obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.fraction)
      ..writeByte(4)
      ..write(obj.elementFraction)
      ..writeByte(5)
      ..write(obj.materialType);
  }
}

class SubstanceSourceMaterial_OrganismAdapter
    extends TypeAdapter<SubstanceSourceMaterial_Organism> {
  @override
  SubstanceSourceMaterial_Organism read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_Organism(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      family: fields[3] as CodeableConcept,
      genus: fields[4] as CodeableConcept,
      species: fields[5] as CodeableConcept,
      intraspecificType: fields[6] as CodeableConcept,
      intraspecificDescription: fields[7] as String,
      elementIntraspecificDescription: fields[8] as Element,
      author: (fields[9] as List)?.cast<SubstanceSourceMaterial_Author>(),
      hybrid: fields[10] as SubstanceSourceMaterial_Hybrid,
      organismGeneral: fields[11] as SubstanceSourceMaterial_OrganismGeneral,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_Organism obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.family)
      ..writeByte(4)
      ..write(obj.genus)
      ..writeByte(5)
      ..write(obj.species)
      ..writeByte(6)
      ..write(obj.intraspecificType)
      ..writeByte(7)
      ..write(obj.intraspecificDescription)
      ..writeByte(8)
      ..write(obj.elementIntraspecificDescription)
      ..writeByte(9)
      ..write(obj.author)
      ..writeByte(10)
      ..write(obj.hybrid)
      ..writeByte(11)
      ..write(obj.organismGeneral);
  }
}

class SubstanceSourceMaterial_AuthorAdapter
    extends TypeAdapter<SubstanceSourceMaterial_Author> {
  @override
  SubstanceSourceMaterial_Author read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_Author(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      authorType: fields[3] as CodeableConcept,
      authorDescription: fields[4] as String,
      elementAuthorDescription: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_Author obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.authorType)
      ..writeByte(4)
      ..write(obj.authorDescription)
      ..writeByte(5)
      ..write(obj.elementAuthorDescription);
  }
}

class SubstanceSourceMaterial_HybridAdapter
    extends TypeAdapter<SubstanceSourceMaterial_Hybrid> {
  @override
  SubstanceSourceMaterial_Hybrid read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_Hybrid(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      maternalOrganismId: fields[3] as String,
      elementMaternalOrganismId: fields[4] as Element,
      maternalOrganismName: fields[5] as String,
      elementMaternalOrganismName: fields[6] as Element,
      paternalOrganismId: fields[7] as String,
      elementPaternalOrganismId: fields[8] as Element,
      paternalOrganismName: fields[9] as String,
      elementPaternalOrganismName: fields[10] as Element,
      hybridType: fields[11] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_Hybrid obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.maternalOrganismId)
      ..writeByte(4)
      ..write(obj.elementMaternalOrganismId)
      ..writeByte(5)
      ..write(obj.maternalOrganismName)
      ..writeByte(6)
      ..write(obj.elementMaternalOrganismName)
      ..writeByte(7)
      ..write(obj.paternalOrganismId)
      ..writeByte(8)
      ..write(obj.elementPaternalOrganismId)
      ..writeByte(9)
      ..write(obj.paternalOrganismName)
      ..writeByte(10)
      ..write(obj.elementPaternalOrganismName)
      ..writeByte(11)
      ..write(obj.hybridType);
  }
}

class SubstanceSourceMaterial_OrganismGeneralAdapter
    extends TypeAdapter<SubstanceSourceMaterial_OrganismGeneral> {
  @override
  SubstanceSourceMaterial_OrganismGeneral read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_OrganismGeneral(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      kingdom: fields[3] as CodeableConcept,
      phylum: fields[4] as CodeableConcept,
      classs: fields[5] as CodeableConcept,
      order: fields[6] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_OrganismGeneral obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.kingdom)
      ..writeByte(4)
      ..write(obj.phylum)
      ..writeByte(5)
      ..write(obj.classs)
      ..writeByte(6)
      ..write(obj.order);
  }
}

class SubstanceSourceMaterial_PartDescriptionAdapter
    extends TypeAdapter<SubstanceSourceMaterial_PartDescription> {
  @override
  SubstanceSourceMaterial_PartDescription read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSourceMaterial_PartDescription(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      part: fields[3] as CodeableConcept,
      partLocation: fields[4] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSourceMaterial_PartDescription obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.part)
      ..writeByte(4)
      ..write(obj.partLocation);
  }
}
