import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class SubstanceReferenceInformation {
  static Future<SubstanceReferenceInformation> newInstance({
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
    String comment,
    Element elementComment,
    List<SubstanceReferenceInformation_Gene> gene,
    List<SubstanceReferenceInformation_GeneElement> geneElement,
    List<SubstanceReferenceInformation_Classification> classification,
    List<SubstanceReferenceInformation_Target> target,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceReferenceInformation newSubstanceReferenceInformation =
        new SubstanceReferenceInformation(
      resourceType: 'SubstanceReferenceInformation',
      id: id ?? await fhirDb.newResourceId('SubstanceReferenceInformation'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      comment: comment,
      elementComment: elementComment,
      gene: gene,
      geneElement: geneElement,
      classification: classification,
      target: target,
    );
    newSubstanceReferenceInformation.meta.createdAt = DateTime.now();
    newSubstanceReferenceInformation.meta.lastUpdated =
        newSubstanceReferenceInformation.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstanceReferenceInformation);
    return newSubstanceReferenceInformation;
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
  String resourceType = 'SubstanceReferenceInformation';
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
  String comment;
  @HiveField(12)
  Element elementComment;
  @HiveField(13)
  List<SubstanceReferenceInformation_Gene> gene;
  @HiveField(14)
  List<SubstanceReferenceInformation_GeneElement> geneElement;
  @HiveField(15)
  List<SubstanceReferenceInformation_Classification> classification;
  @HiveField(16)
  List<SubstanceReferenceInformation_Target> target;

  SubstanceReferenceInformation({
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
    this.comment,
    this.elementComment,
    this.gene,
    this.geneElement,
    this.classification,
    this.target,
  });

  factory SubstanceReferenceInformation.fromJson(Map<String, dynamic> json) =>
      _$SubstanceReferenceInformationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformationToJson(this);
}

class SubstanceReferenceInformation_Gene {
  static Future<SubstanceReferenceInformation_Gene> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept geneSequenceOrigin,
    CodeableConcept gene,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceReferenceInformation_Gene newSubstanceReferenceInformation_Gene =
        new SubstanceReferenceInformation_Gene(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      geneSequenceOrigin: geneSequenceOrigin,
      gene: gene,
      source: source,
    );
    return newSubstanceReferenceInformation_Gene;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept geneSequenceOrigin;
  @HiveField(4)
  CodeableConcept gene;
  @HiveField(5)
  List<Reference> source;

  SubstanceReferenceInformation_Gene({
    this.id,
    this.extension,
    this.modifierExtension,
    this.geneSequenceOrigin,
    this.gene,
    this.source,
  });

  factory SubstanceReferenceInformation_Gene.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceReferenceInformation_GeneFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceReferenceInformation_GeneToJson(this);
}

class SubstanceReferenceInformation_GeneElement {
  static Future<SubstanceReferenceInformation_GeneElement> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Identifier element,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceReferenceInformation_GeneElement
        newSubstanceReferenceInformation_GeneElement =
        new SubstanceReferenceInformation_GeneElement(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      element: element,
      source: source,
    );
    return newSubstanceReferenceInformation_GeneElement;
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
  Identifier element;
  @HiveField(5)
  List<Reference> source;

  SubstanceReferenceInformation_GeneElement({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element,
    this.source,
  });

  factory SubstanceReferenceInformation_GeneElement.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceReferenceInformation_GeneElementFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceReferenceInformation_GeneElementToJson(this);
}

class SubstanceReferenceInformation_Classification {
  static Future<SubstanceReferenceInformation_Classification> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept domain,
    CodeableConcept classification,
    List<CodeableConcept> subtype,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceReferenceInformation_Classification
        newSubstanceReferenceInformation_Classification =
        new SubstanceReferenceInformation_Classification(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      domain: domain,
      classification: classification,
      subtype: subtype,
      source: source,
    );
    return newSubstanceReferenceInformation_Classification;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept domain;
  @HiveField(4)
  CodeableConcept classification;
  @HiveField(5)
  List<CodeableConcept> subtype;
  @HiveField(6)
  List<Reference> source;

  SubstanceReferenceInformation_Classification({
    this.id,
    this.extension,
    this.modifierExtension,
    this.domain,
    this.classification,
    this.subtype,
    this.source,
  });

  factory SubstanceReferenceInformation_Classification.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceReferenceInformation_ClassificationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceReferenceInformation_ClassificationToJson(this);
}

class SubstanceReferenceInformation_Target {
  static Future<SubstanceReferenceInformation_Target> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier target,
    CodeableConcept type,
    CodeableConcept interaction,
    CodeableConcept organism,
    CodeableConcept organismType,
    Quantity amountQuantity,
    Range amountRange,
    String amountString,
    Element elementAmountString,
    CodeableConcept amountType,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceReferenceInformation_Target
        newSubstanceReferenceInformation_Target =
        new SubstanceReferenceInformation_Target(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      target: target,
      type: type,
      interaction: interaction,
      organism: organism,
      organismType: organismType,
      amountQuantity: amountQuantity,
      amountRange: amountRange,
      amountString: amountString,
      elementAmountString: elementAmountString,
      amountType: amountType,
      source: source,
    );
    return newSubstanceReferenceInformation_Target;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier target;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
  CodeableConcept interaction;
  @HiveField(6)
  CodeableConcept organism;
  @HiveField(7)
  CodeableConcept organismType;
  @HiveField(8)
  Quantity amountQuantity;
  @HiveField(9)
  Range amountRange;
  @HiveField(10)
  String amountString;
  @HiveField(11)
  Element elementAmountString;
  @HiveField(12)
  CodeableConcept amountType;
  @HiveField(13)
  List<Reference> source;

  SubstanceReferenceInformation_Target({
    this.id,
    this.extension,
    this.modifierExtension,
    this.target,
    this.type,
    this.interaction,
    this.organism,
    this.organismType,
    this.amountQuantity,
    this.amountRange,
    this.amountString,
    this.elementAmountString,
    this.amountType,
    this.source,
  });

  factory SubstanceReferenceInformation_Target.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceReferenceInformation_TargetFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceReferenceInformation_TargetToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceReferenceInformation _$SubstanceReferenceInformationFromJson(
    Map<String, dynamic> json) {
  return SubstanceReferenceInformation(
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
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    gene: (json['gene'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_Gene.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    geneElement: (json['geneElement'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_GeneElement.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    classification: (json['classification'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_Classification.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceReferenceInformation_Target.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformationToJson(
    SubstanceReferenceInformation instance) {
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
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  writeNotNull('gene', instance.gene?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'geneElement', instance.geneElement?.map((e) => e?.toJson())?.toList());
  writeNotNull('classification',
      instance.classification?.map((e) => e?.toJson())?.toList());
  writeNotNull('target', instance.target?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceReferenceInformation_Gene _$SubstanceReferenceInformation_GeneFromJson(
    Map<String, dynamic> json) {
  return SubstanceReferenceInformation_Gene(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    geneSequenceOrigin: json['geneSequenceOrigin'] == null
        ? null
        : CodeableConcept.fromJson(
            json['geneSequenceOrigin'] as Map<String, dynamic>),
    gene: json['gene'] == null
        ? null
        : CodeableConcept.fromJson(json['gene'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_GeneToJson(
    SubstanceReferenceInformation_Gene instance) {
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
  writeNotNull('geneSequenceOrigin', instance.geneSequenceOrigin?.toJson());
  writeNotNull('gene', instance.gene?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceReferenceInformation_GeneElement
    _$SubstanceReferenceInformation_GeneElementFromJson(
        Map<String, dynamic> json) {
  return SubstanceReferenceInformation_GeneElement(
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
    element: json['element'] == null
        ? null
        : Identifier.fromJson(json['element'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_GeneElementToJson(
    SubstanceReferenceInformation_GeneElement instance) {
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
  writeNotNull('element', instance.element?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceReferenceInformation_Classification
    _$SubstanceReferenceInformation_ClassificationFromJson(
        Map<String, dynamic> json) {
  return SubstanceReferenceInformation_Classification(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: json['domain'] == null
        ? null
        : CodeableConcept.fromJson(json['domain'] as Map<String, dynamic>),
    classification: json['classification'] == null
        ? null
        : CodeableConcept.fromJson(
            json['classification'] as Map<String, dynamic>),
    subtype: (json['subtype'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_ClassificationToJson(
    SubstanceReferenceInformation_Classification instance) {
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
  writeNotNull('domain', instance.domain?.toJson());
  writeNotNull('classification', instance.classification?.toJson());
  writeNotNull('subtype', instance.subtype?.map((e) => e?.toJson())?.toList());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceReferenceInformation_Target
    _$SubstanceReferenceInformation_TargetFromJson(Map<String, dynamic> json) {
  return SubstanceReferenceInformation_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    target: json['target'] == null
        ? null
        : Identifier.fromJson(json['target'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    interaction: json['interaction'] == null
        ? null
        : CodeableConcept.fromJson(json['interaction'] as Map<String, dynamic>),
    organism: json['organism'] == null
        ? null
        : CodeableConcept.fromJson(json['organism'] as Map<String, dynamic>),
    organismType: json['organismType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['organismType'] as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountRange: json['amountRange'] == null
        ? null
        : Range.fromJson(json['amountRange'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
    amountType: json['amountType'] == null
        ? null
        : CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceReferenceInformation_TargetToJson(
    SubstanceReferenceInformation_Target instance) {
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
  writeNotNull('target', instance.target?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('interaction', instance.interaction?.toJson());
  writeNotNull('organism', instance.organism?.toJson());
  writeNotNull('organismType', instance.organismType?.toJson());
  writeNotNull('amountQuantity', instance.amountQuantity?.toJson());
  writeNotNull('amountRange', instance.amountRange?.toJson());
  writeNotNull('amountString', instance.amountString);
  writeNotNull('elementAmountString', instance.elementAmountString?.toJson());
  writeNotNull('amountType', instance.amountType?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceReferenceInformationAdapter
    extends TypeAdapter<SubstanceReferenceInformation> {
  @override
  SubstanceReferenceInformation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceReferenceInformation(
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
      comment: fields[11] as String,
      elementComment: fields[12] as Element,
      gene: (fields[13] as List)?.cast<SubstanceReferenceInformation_Gene>(),
      geneElement: (fields[14] as List)
          ?.cast<SubstanceReferenceInformation_GeneElement>(),
      classification: (fields[15] as List)
          ?.cast<SubstanceReferenceInformation_Classification>(),
      target:
          (fields[16] as List)?.cast<SubstanceReferenceInformation_Target>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceReferenceInformation obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.comment)
      ..writeByte(12)
      ..write(obj.elementComment)
      ..writeByte(13)
      ..write(obj.gene)
      ..writeByte(14)
      ..write(obj.geneElement)
      ..writeByte(15)
      ..write(obj.classification)
      ..writeByte(16)
      ..write(obj.target);
  }
}

class SubstanceReferenceInformation_GeneAdapter
    extends TypeAdapter<SubstanceReferenceInformation_Gene> {
  @override
  SubstanceReferenceInformation_Gene read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceReferenceInformation_Gene(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      geneSequenceOrigin: fields[3] as CodeableConcept,
      gene: fields[4] as CodeableConcept,
      source: (fields[5] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceReferenceInformation_Gene obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.geneSequenceOrigin)
      ..writeByte(4)
      ..write(obj.gene)
      ..writeByte(5)
      ..write(obj.source);
  }
}

class SubstanceReferenceInformation_GeneElementAdapter
    extends TypeAdapter<SubstanceReferenceInformation_GeneElement> {
  @override
  SubstanceReferenceInformation_GeneElement read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceReferenceInformation_GeneElement(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      element: fields[4] as Identifier,
      source: (fields[5] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, SubstanceReferenceInformation_GeneElement obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.element)
      ..writeByte(5)
      ..write(obj.source);
  }
}

class SubstanceReferenceInformation_ClassificationAdapter
    extends TypeAdapter<SubstanceReferenceInformation_Classification> {
  @override
  SubstanceReferenceInformation_Classification read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceReferenceInformation_Classification(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      domain: fields[3] as CodeableConcept,
      classification: fields[4] as CodeableConcept,
      subtype: (fields[5] as List)?.cast<CodeableConcept>(),
      source: (fields[6] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, SubstanceReferenceInformation_Classification obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.domain)
      ..writeByte(4)
      ..write(obj.classification)
      ..writeByte(5)
      ..write(obj.subtype)
      ..writeByte(6)
      ..write(obj.source);
  }
}

class SubstanceReferenceInformation_TargetAdapter
    extends TypeAdapter<SubstanceReferenceInformation_Target> {
  @override
  SubstanceReferenceInformation_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceReferenceInformation_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      target: fields[3] as Identifier,
      type: fields[4] as CodeableConcept,
      interaction: fields[5] as CodeableConcept,
      organism: fields[6] as CodeableConcept,
      organismType: fields[7] as CodeableConcept,
      amountQuantity: fields[8] as Quantity,
      amountRange: fields[9] as Range,
      amountString: fields[10] as String,
      elementAmountString: fields[11] as Element,
      amountType: fields[12] as CodeableConcept,
      source: (fields[13] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceReferenceInformation_Target obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.target)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.interaction)
      ..writeByte(6)
      ..write(obj.organism)
      ..writeByte(7)
      ..write(obj.organismType)
      ..writeByte(8)
      ..write(obj.amountQuantity)
      ..writeByte(9)
      ..write(obj.amountRange)
      ..writeByte(10)
      ..write(obj.amountString)
      ..writeByte(11)
      ..write(obj.elementAmountString)
      ..writeByte(12)
      ..write(obj.amountType)
      ..writeByte(13)
      ..write(obj.source);
  }
}
