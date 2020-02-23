import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String resourceType = 'SubstanceSourceMaterial';
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
  CodeableConcept sourceMaterialClass;
  CodeableConcept sourceMaterialType;
  CodeableConcept sourceMaterialState;
  Identifier organismId;
  String organismName;
  Element elementOrganismName;
  List<Identifier> parentSubstanceId;
  List<String> parentSubstanceName;
  List<Element> elementParentSubstanceName;
  List<CodeableConcept> countryOfOrigin;
  List<String> geographicalLocation;
  List<Element> elementGeographicalLocation;
  CodeableConcept developmentStage;
  List<SubstanceSourceMaterial_FractionDescription> fractionDescription;
  SubstanceSourceMaterial_Organism organism;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String fraction;
  Element elementFraction;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept family;
  CodeableConcept genus;
  CodeableConcept species;
  CodeableConcept intraspecificType;
  String intraspecificDescription;
  Element elementIntraspecificDescription;
  List<SubstanceSourceMaterial_Author> author;
  SubstanceSourceMaterial_Hybrid hybrid;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept authorType;
  String authorDescription;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String maternalOrganismId;
  Element elementMaternalOrganismId;
  String maternalOrganismName;
  Element elementMaternalOrganismName;
  String paternalOrganismId;
  Element elementPaternalOrganismId;
  String paternalOrganismName;
  Element elementPaternalOrganismName;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept kingdom;
  CodeableConcept phylum;
  CodeableConcept classs;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept part;
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
