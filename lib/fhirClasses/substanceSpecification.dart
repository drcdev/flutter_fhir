import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
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
class SubstanceSpecification {
  static Future<SubstanceSpecification> newInstance({
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
    CodeableConcept type,
    CodeableConcept status,
    CodeableConcept domain,
    String description,
    Element elementDescription,
    List<Reference> source,
    String comment,
    Element elementComment,
    List<SubstanceSpecification_Moiety> moiety,
    List<SubstanceSpecification_Property> property,
    Reference referenceInformation,
    SubstanceSpecification_Structure structure,
    List<SubstanceSpecification_Code> code,
    List<SubstanceSpecification_Name> name,
    List<SubstanceSpecification_MolecularWeight> molecularWeight,
    List<SubstanceSpecification_Relationship> relationship,
    Reference nucleicAcid,
    Reference polymer,
    Reference protein,
    Reference sourceMaterial,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification newSubstanceSpecification =
        new SubstanceSpecification(
      resourceType: 'SubstanceSpecification',
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification'),
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
      type: type,
      status: status,
      domain: domain,
      description: description,
      elementDescription: elementDescription,
      source: source,
      comment: comment,
      elementComment: elementComment,
      moiety: moiety,
      property: property,
      referenceInformation: referenceInformation,
      structure: structure,
      code: code,
      name: name,
      molecularWeight: molecularWeight,
      relationship: relationship,
      nucleicAcid: nucleicAcid,
      polymer: polymer,
      protein: protein,
      sourceMaterial: sourceMaterial,
    );
    newSubstanceSpecification.meta.createdAt = DateTime.now();
    newSubstanceSpecification.meta.lastUpdated =
        newSubstanceSpecification.meta.createdAt;
    int saved = await fhirDb.saveResource(newSubstanceSpecification);
    return newSubstanceSpecification;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'SubstanceSpecification';
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
  Identifier identifier;
  CodeableConcept type;
  CodeableConcept status;
  CodeableConcept domain;
  String description;
  Element elementDescription;
  List<Reference> source;
  String comment;
  Element elementComment;
  List<SubstanceSpecification_Moiety> moiety;
  List<SubstanceSpecification_Property> property;
  Reference referenceInformation;
  SubstanceSpecification_Structure structure;
  List<SubstanceSpecification_Code> code;
  List<SubstanceSpecification_Name> name;
  List<SubstanceSpecification_MolecularWeight> molecularWeight;
  List<SubstanceSpecification_Relationship> relationship;
  Reference nucleicAcid;
  Reference polymer;
  Reference protein;
  Reference sourceMaterial;

  SubstanceSpecification({
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
    this.type,
    this.status,
    this.domain,
    this.description,
    this.elementDescription,
    this.source,
    this.comment,
    this.elementComment,
    this.moiety,
    this.property,
    this.referenceInformation,
    this.structure,
    this.code,
    this.name,
    this.molecularWeight,
    this.relationship,
    this.nucleicAcid,
    this.polymer,
    this.protein,
    this.sourceMaterial,
  });

  factory SubstanceSpecification.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecificationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecificationToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Moiety {
  static Future<SubstanceSpecification_Moiety> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept role,
    Identifier identifier,
    String name,
    Element elementName,
    CodeableConcept stereochemistry,
    CodeableConcept opticalActivity,
    String molecularFormula,
    Element elementMolecularFormula,
    Quantity amountQuantity,
    String amountString,
    Element elementAmountString,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Moiety newSubstanceSpecification_Moiety =
        new SubstanceSpecification_Moiety(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Moiety'),
      extension: extension,
      modifierExtension: modifierExtension,
      role: role,
      identifier: identifier,
      name: name,
      elementName: elementName,
      stereochemistry: stereochemistry,
      opticalActivity: opticalActivity,
      molecularFormula: molecularFormula,
      elementMolecularFormula: elementMolecularFormula,
      amountQuantity: amountQuantity,
      amountString: amountString,
      elementAmountString: elementAmountString,
    );
    return newSubstanceSpecification_Moiety;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept role;
  Identifier identifier;
  String name;
  Element elementName;
  CodeableConcept stereochemistry;
  CodeableConcept opticalActivity;
  String molecularFormula;
  Element elementMolecularFormula;
  Quantity amountQuantity;
  String amountString;
  Element elementAmountString;

  SubstanceSpecification_Moiety({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.elementName,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.elementMolecularFormula,
    this.amountQuantity,
    this.amountString,
    this.elementAmountString,
  });

  factory SubstanceSpecification_Moiety.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecification_MoietyFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_MoietyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Property {
  static Future<SubstanceSpecification_Property> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept category,
    CodeableConcept code,
    String parameters,
    Element elementParameters,
    Reference definingSubstanceReference,
    CodeableConcept definingSubstanceCodeableConcept,
    Quantity amountQuantity,
    String amountString,
    Element elementAmountString,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Property newSubstanceSpecification_Property =
        new SubstanceSpecification_Property(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Property'),
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      code: code,
      parameters: parameters,
      elementParameters: elementParameters,
      definingSubstanceReference: definingSubstanceReference,
      definingSubstanceCodeableConcept: definingSubstanceCodeableConcept,
      amountQuantity: amountQuantity,
      amountString: amountString,
      elementAmountString: elementAmountString,
    );
    return newSubstanceSpecification_Property;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept code;
  String parameters;
  Element elementParameters;
  Reference definingSubstanceReference;
  CodeableConcept definingSubstanceCodeableConcept;
  Quantity amountQuantity;
  String amountString;
  Element elementAmountString;

  SubstanceSpecification_Property({
    this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.code,
    this.parameters,
    this.elementParameters,
    this.definingSubstanceReference,
    this.definingSubstanceCodeableConcept,
    this.amountQuantity,
    this.amountString,
    this.elementAmountString,
  });

  factory SubstanceSpecification_Property.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecification_PropertyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSpecification_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Structure {
  static Future<SubstanceSpecification_Structure> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept stereochemistry,
    CodeableConcept opticalActivity,
    String molecularFormula,
    Element elementMolecularFormula,
    String molecularFormulaByMoiety,
    Element elementMolecularFormulaByMoiety,
    List<SubstanceSpecification_Isotope> isotope,
    SubstanceSpecification_MolecularWeight molecularWeight,
    List<Reference> source,
    List<SubstanceSpecification_Representation> representation,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Structure newSubstanceSpecification_Structure =
        new SubstanceSpecification_Structure(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Structure'),
      extension: extension,
      modifierExtension: modifierExtension,
      stereochemistry: stereochemistry,
      opticalActivity: opticalActivity,
      molecularFormula: molecularFormula,
      elementMolecularFormula: elementMolecularFormula,
      molecularFormulaByMoiety: molecularFormulaByMoiety,
      elementMolecularFormulaByMoiety: elementMolecularFormulaByMoiety,
      isotope: isotope,
      molecularWeight: molecularWeight,
      source: source,
      representation: representation,
    );
    return newSubstanceSpecification_Structure;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept stereochemistry;
  CodeableConcept opticalActivity;
  String molecularFormula;
  Element elementMolecularFormula;
  String molecularFormulaByMoiety;
  Element elementMolecularFormulaByMoiety;
  List<SubstanceSpecification_Isotope> isotope;
  SubstanceSpecification_MolecularWeight molecularWeight;
  List<Reference> source;
  List<SubstanceSpecification_Representation> representation;

  SubstanceSpecification_Structure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.elementMolecularFormula,
    this.molecularFormulaByMoiety,
    this.elementMolecularFormulaByMoiety,
    this.isotope,
    this.molecularWeight,
    this.source,
    this.representation,
  });

  factory SubstanceSpecification_Structure.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSpecification_StructureFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSpecification_StructureToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Isotope {
  static Future<SubstanceSpecification_Isotope> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    CodeableConcept name,
    CodeableConcept substitution,
    Quantity halfLife,
    SubstanceSpecification_MolecularWeight molecularWeight,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Isotope newSubstanceSpecification_Isotope =
        new SubstanceSpecification_Isotope(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Isotope'),
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      name: name,
      substitution: substitution,
      halfLife: halfLife,
      molecularWeight: molecularWeight,
    );
    return newSubstanceSpecification_Isotope;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  CodeableConcept name;
  CodeableConcept substitution;
  Quantity halfLife;
  SubstanceSpecification_MolecularWeight molecularWeight;

  SubstanceSpecification_Isotope({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.substitution,
    this.halfLife,
    this.molecularWeight,
  });

  factory SubstanceSpecification_Isotope.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecification_IsotopeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_IsotopeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_MolecularWeight {
  static Future<SubstanceSpecification_MolecularWeight> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept method,
    CodeableConcept type,
    Quantity amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_MolecularWeight
        newSubstanceSpecification_MolecularWeight =
        new SubstanceSpecification_MolecularWeight(
      id: id ??
          await fhirDb.newResourceId('SubstanceSpecification_MolecularWeight'),
      extension: extension,
      modifierExtension: modifierExtension,
      method: method,
      type: type,
      amount: amount,
    );
    return newSubstanceSpecification_MolecularWeight;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept method;
  CodeableConcept type;
  Quantity amount;

  SubstanceSpecification_MolecularWeight({
    this.id,
    this.extension,
    this.modifierExtension,
    this.method,
    this.type,
    this.amount,
  });

  factory SubstanceSpecification_MolecularWeight.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSpecification_MolecularWeightFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSpecification_MolecularWeightToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Representation {
  static Future<SubstanceSpecification_Representation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    String representation,
    Element elementRepresentation,
    Attachment attachment,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Representation
        newSubstanceSpecification_Representation =
        new SubstanceSpecification_Representation(
      id: id ??
          await fhirDb.newResourceId('SubstanceSpecification_Representation'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      representation: representation,
      elementRepresentation: elementRepresentation,
      attachment: attachment,
    );
    return newSubstanceSpecification_Representation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  String representation;
  Element elementRepresentation;
  Attachment attachment;

  SubstanceSpecification_Representation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.elementRepresentation,
    this.attachment,
  });

  factory SubstanceSpecification_Representation.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSpecification_RepresentationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSpecification_RepresentationToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Code {
  static Future<SubstanceSpecification_Code> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    CodeableConcept status,
    DateTime statusDate,
    Element elementStatusDate,
    String comment,
    Element elementComment,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Code newSubstanceSpecification_Code =
        new SubstanceSpecification_Code(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Code'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      status: status,
      statusDate: statusDate,
      elementStatusDate: elementStatusDate,
      comment: comment,
      elementComment: elementComment,
      source: source,
    );
    return newSubstanceSpecification_Code;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept status;
  DateTime statusDate;
  Element elementStatusDate;
  String comment;
  Element elementComment;
  List<Reference> source;

  SubstanceSpecification_Code({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.elementStatusDate,
    this.comment,
    this.elementComment,
    this.source,
  });

  factory SubstanceSpecification_Code.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecification_CodeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_CodeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Name {
  static Future<SubstanceSpecification_Name> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    CodeableConcept type,
    CodeableConcept status,
    bool preferred,
    Element elementPreferred,
    List<CodeableConcept> language,
    List<CodeableConcept> domain,
    List<CodeableConcept> jurisdiction,
    List<SubstanceSpecification_Name> synonym,
    List<SubstanceSpecification_Name> translation,
    List<SubstanceSpecification_Official> official,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Name newSubstanceSpecification_Name =
        new SubstanceSpecification_Name(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Name'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      type: type,
      status: status,
      preferred: preferred,
      elementPreferred: elementPreferred,
      language: language,
      domain: domain,
      jurisdiction: jurisdiction,
      synonym: synonym,
      translation: translation,
      official: official,
      source: source,
    );
    return newSubstanceSpecification_Name;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  CodeableConcept type;
  CodeableConcept status;
  bool preferred;
  Element elementPreferred;
  List<CodeableConcept> language;
  List<CodeableConcept> domain;
  List<CodeableConcept> jurisdiction;
  List<SubstanceSpecification_Name> synonym;
  List<SubstanceSpecification_Name> translation;
  List<SubstanceSpecification_Official> official;
  List<Reference> source;

  SubstanceSpecification_Name({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.status,
    this.preferred,
    this.elementPreferred,
    this.language,
    this.domain,
    this.jurisdiction,
    this.synonym,
    this.translation,
    this.official,
    this.source,
  });

  factory SubstanceSpecification_Name.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecification_NameFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceSpecification_NameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Official {
  static Future<SubstanceSpecification_Official> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept authority,
    CodeableConcept status,
    DateTime date,
    Element elementDate,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Official newSubstanceSpecification_Official =
        new SubstanceSpecification_Official(
      id: id ?? await fhirDb.newResourceId('SubstanceSpecification_Official'),
      extension: extension,
      modifierExtension: modifierExtension,
      authority: authority,
      status: status,
      date: date,
      elementDate: elementDate,
    );
    return newSubstanceSpecification_Official;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept authority;
  CodeableConcept status;
  DateTime date;
  Element elementDate;

  SubstanceSpecification_Official({
    this.id,
    this.extension,
    this.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.elementDate,
  });

  factory SubstanceSpecification_Official.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSpecification_OfficialFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSpecification_OfficialToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubstanceSpecification_Relationship {
  static Future<SubstanceSpecification_Relationship> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference substanceReference,
    CodeableConcept substanceCodeableConcept,
    CodeableConcept relationship,
    bool isDefining,
    Element elementIsDefining,
    Quantity amountQuantity,
    Range amountRange,
    Ratio amountRatio,
    String amountString,
    Element elementAmountString,
    Ratio amountRatioLowLimit,
    CodeableConcept amountType,
    List<Reference> source,
  }) async {
    var fhirDb = new DatabaseHelper();
    SubstanceSpecification_Relationship newSubstanceSpecification_Relationship =
        new SubstanceSpecification_Relationship(
      id: id ??
          await fhirDb.newResourceId('SubstanceSpecification_Relationship'),
      extension: extension,
      modifierExtension: modifierExtension,
      substanceReference: substanceReference,
      substanceCodeableConcept: substanceCodeableConcept,
      relationship: relationship,
      isDefining: isDefining,
      elementIsDefining: elementIsDefining,
      amountQuantity: amountQuantity,
      amountRange: amountRange,
      amountRatio: amountRatio,
      amountString: amountString,
      elementAmountString: elementAmountString,
      amountRatioLowLimit: amountRatioLowLimit,
      amountType: amountType,
      source: source,
    );
    return newSubstanceSpecification_Relationship;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference substanceReference;
  CodeableConcept substanceCodeableConcept;
  CodeableConcept relationship;
  bool isDefining;
  Element elementIsDefining;
  Quantity amountQuantity;
  Range amountRange;
  Ratio amountRatio;
  String amountString;
  Element elementAmountString;
  Ratio amountRatioLowLimit;
  CodeableConcept amountType;
  List<Reference> source;

  SubstanceSpecification_Relationship({
    this.id,
    this.extension,
    this.modifierExtension,
    this.substanceReference,
    this.substanceCodeableConcept,
    this.relationship,
    this.isDefining,
    this.elementIsDefining,
    this.amountQuantity,
    this.amountRange,
    this.amountRatio,
    this.amountString,
    this.elementAmountString,
    this.amountRatioLowLimit,
    this.amountType,
    this.source,
  });

  factory SubstanceSpecification_Relationship.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceSpecification_RelationshipFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubstanceSpecification_RelationshipToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceSpecification _$SubstanceSpecificationFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification(
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    domain: json['domain'] == null
        ? null
        : CodeableConcept.fromJson(json['domain'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    moiety: (json['moiety'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Moiety.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Property.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    referenceInformation: json['referenceInformation'] == null
        ? null
        : Reference.fromJson(
            json['referenceInformation'] as Map<String, dynamic>),
    structure: json['structure'] == null
        ? null
        : SubstanceSpecification_Structure.fromJson(
            json['structure'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Code.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: (json['name'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    molecularWeight: (json['molecularWeight'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_MolecularWeight.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    relationship: (json['relationship'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Relationship.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    nucleicAcid: json['nucleicAcid'] == null
        ? null
        : Reference.fromJson(json['nucleicAcid'] as Map<String, dynamic>),
    polymer: json['polymer'] == null
        ? null
        : Reference.fromJson(json['polymer'] as Map<String, dynamic>),
    protein: json['protein'] == null
        ? null
        : Reference.fromJson(json['protein'] as Map<String, dynamic>),
    sourceMaterial: json['sourceMaterial'] == null
        ? null
        : Reference.fromJson(json['sourceMaterial'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecificationToJson(
    SubstanceSpecification instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('domain', instance.domain?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  writeNotNull('moiety', instance.moiety?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'property', instance.property?.map((e) => e?.toJson())?.toList());
  writeNotNull('referenceInformation', instance.referenceInformation?.toJson());
  writeNotNull('structure', instance.structure?.toJson());
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name?.map((e) => e?.toJson())?.toList());
  writeNotNull('molecularWeight',
      instance.molecularWeight?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'relationship', instance.relationship?.map((e) => e?.toJson())?.toList());
  writeNotNull('nucleicAcid', instance.nucleicAcid?.toJson());
  writeNotNull('polymer', instance.polymer?.toJson());
  writeNotNull('protein', instance.protein?.toJson());
  writeNotNull('sourceMaterial', instance.sourceMaterial?.toJson());
  return val;
}

SubstanceSpecification_Moiety _$SubstanceSpecification_MoietyFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Moiety(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    stereochemistry: json['stereochemistry'] == null
        ? null
        : CodeableConcept.fromJson(
            json['stereochemistry'] as Map<String, dynamic>),
    opticalActivity: json['opticalActivity'] == null
        ? null
        : CodeableConcept.fromJson(
            json['opticalActivity'] as Map<String, dynamic>),
    molecularFormula: json['molecularFormula'] as String,
    elementMolecularFormula: json['elementMolecularFormula'] == null
        ? null
        : Element.fromJson(
            json['elementMolecularFormula'] as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_MoietyToJson(
    SubstanceSpecification_Moiety instance) {
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
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('stereochemistry', instance.stereochemistry?.toJson());
  writeNotNull('opticalActivity', instance.opticalActivity?.toJson());
  writeNotNull('molecularFormula', instance.molecularFormula);
  writeNotNull(
      'elementMolecularFormula', instance.elementMolecularFormula?.toJson());
  writeNotNull('amountQuantity', instance.amountQuantity?.toJson());
  writeNotNull('amountString', instance.amountString);
  writeNotNull('elementAmountString', instance.elementAmountString?.toJson());
  return val;
}

SubstanceSpecification_Property _$SubstanceSpecification_PropertyFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Property(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    parameters: json['parameters'] as String,
    elementParameters: json['elementParameters'] == null
        ? null
        : Element.fromJson(json['elementParameters'] as Map<String, dynamic>),
    definingSubstanceReference: json['definingSubstanceReference'] == null
        ? null
        : Reference.fromJson(
            json['definingSubstanceReference'] as Map<String, dynamic>),
    definingSubstanceCodeableConcept:
        json['definingSubstanceCodeableConcept'] == null
            ? null
            : CodeableConcept.fromJson(json['definingSubstanceCodeableConcept']
                as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_PropertyToJson(
    SubstanceSpecification_Property instance) {
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
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('parameters', instance.parameters);
  writeNotNull('elementParameters', instance.elementParameters?.toJson());
  writeNotNull('definingSubstanceReference',
      instance.definingSubstanceReference?.toJson());
  writeNotNull('definingSubstanceCodeableConcept',
      instance.definingSubstanceCodeableConcept?.toJson());
  writeNotNull('amountQuantity', instance.amountQuantity?.toJson());
  writeNotNull('amountString', instance.amountString);
  writeNotNull('elementAmountString', instance.elementAmountString?.toJson());
  return val;
}

SubstanceSpecification_Structure _$SubstanceSpecification_StructureFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Structure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stereochemistry: json['stereochemistry'] == null
        ? null
        : CodeableConcept.fromJson(
            json['stereochemistry'] as Map<String, dynamic>),
    opticalActivity: json['opticalActivity'] == null
        ? null
        : CodeableConcept.fromJson(
            json['opticalActivity'] as Map<String, dynamic>),
    molecularFormula: json['molecularFormula'] as String,
    elementMolecularFormula: json['elementMolecularFormula'] == null
        ? null
        : Element.fromJson(
            json['elementMolecularFormula'] as Map<String, dynamic>),
    molecularFormulaByMoiety: json['molecularFormulaByMoiety'] as String,
    elementMolecularFormulaByMoiety: json['elementMolecularFormulaByMoiety'] ==
            null
        ? null
        : Element.fromJson(
            json['elementMolecularFormulaByMoiety'] as Map<String, dynamic>),
    isotope: (json['isotope'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Isotope.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    molecularWeight: json['molecularWeight'] == null
        ? null
        : SubstanceSpecification_MolecularWeight.fromJson(
            json['molecularWeight'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    representation: (json['representation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Representation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_StructureToJson(
    SubstanceSpecification_Structure instance) {
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
  writeNotNull('stereochemistry', instance.stereochemistry?.toJson());
  writeNotNull('opticalActivity', instance.opticalActivity?.toJson());
  writeNotNull('molecularFormula', instance.molecularFormula);
  writeNotNull(
      'elementMolecularFormula', instance.elementMolecularFormula?.toJson());
  writeNotNull('molecularFormulaByMoiety', instance.molecularFormulaByMoiety);
  writeNotNull('elementMolecularFormulaByMoiety',
      instance.elementMolecularFormulaByMoiety?.toJson());
  writeNotNull('isotope', instance.isotope?.map((e) => e?.toJson())?.toList());
  writeNotNull('molecularWeight', instance.molecularWeight?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  writeNotNull('representation',
      instance.representation?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceSpecification_Isotope _$SubstanceSpecification_IsotopeFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Isotope(
    id: json['id'] as String,
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
    name: json['name'] == null
        ? null
        : CodeableConcept.fromJson(json['name'] as Map<String, dynamic>),
    substitution: json['substitution'] == null
        ? null
        : CodeableConcept.fromJson(
            json['substitution'] as Map<String, dynamic>),
    halfLife: json['halfLife'] == null
        ? null
        : Quantity.fromJson(json['halfLife'] as Map<String, dynamic>),
    molecularWeight: json['molecularWeight'] == null
        ? null
        : SubstanceSpecification_MolecularWeight.fromJson(
            json['molecularWeight'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_IsotopeToJson(
    SubstanceSpecification_Isotope instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('substitution', instance.substitution?.toJson());
  writeNotNull('halfLife', instance.halfLife?.toJson());
  writeNotNull('molecularWeight', instance.molecularWeight?.toJson());
  return val;
}

SubstanceSpecification_MolecularWeight
    _$SubstanceSpecification_MolecularWeightFromJson(
        Map<String, dynamic> json) {
  return SubstanceSpecification_MolecularWeight(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_MolecularWeightToJson(
    SubstanceSpecification_MolecularWeight instance) {
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
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

SubstanceSpecification_Representation
    _$SubstanceSpecification_RepresentationFromJson(Map<String, dynamic> json) {
  return SubstanceSpecification_Representation(
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

Map<String, dynamic> _$SubstanceSpecification_RepresentationToJson(
    SubstanceSpecification_Representation instance) {
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

SubstanceSpecification_Code _$SubstanceSpecification_CodeFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Code(
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
    statusDate: json['statusDate'] == null
        ? null
        : DateTime.parse(json['statusDate'] as String),
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_CodeToJson(
    SubstanceSpecification_Code instance) {
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
  writeNotNull('statusDate', instance.statusDate?.toIso8601String());
  writeNotNull('elementStatusDate', instance.elementStatusDate?.toJson());
  writeNotNull('comment', instance.comment);
  writeNotNull('elementComment', instance.elementComment?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceSpecification_Name _$SubstanceSpecification_NameFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Name(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    preferred: json['preferred'] as bool,
    elementPreferred: json['elementPreferred'] == null
        ? null
        : Element.fromJson(json['elementPreferred'] as Map<String, dynamic>),
    language: (json['language'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    domain: (json['domain'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    synonym: (json['synonym'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    translation: (json['translation'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Name.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    official: (json['official'] as List)
        ?.map((e) => e == null
            ? null
            : SubstanceSpecification_Official.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_NameToJson(
    SubstanceSpecification_Name instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('preferred', instance.preferred);
  writeNotNull('elementPreferred', instance.elementPreferred?.toJson());
  writeNotNull(
      'language', instance.language?.map((e) => e?.toJson())?.toList());
  writeNotNull('domain', instance.domain?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('synonym', instance.synonym?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'translation', instance.translation?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'official', instance.official?.map((e) => e?.toJson())?.toList());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}

SubstanceSpecification_Official _$SubstanceSpecification_OfficialFromJson(
    Map<String, dynamic> json) {
  return SubstanceSpecification_Official(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authority: json['authority'] == null
        ? null
        : CodeableConcept.fromJson(json['authority'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceSpecification_OfficialToJson(
    SubstanceSpecification_Official instance) {
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
  writeNotNull('authority', instance.authority?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  return val;
}

SubstanceSpecification_Relationship
    _$SubstanceSpecification_RelationshipFromJson(Map<String, dynamic> json) {
  return SubstanceSpecification_Relationship(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substanceReference: json['substanceReference'] == null
        ? null
        : Reference.fromJson(
            json['substanceReference'] as Map<String, dynamic>),
    substanceCodeableConcept: json['substanceCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['substanceCodeableConcept'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    isDefining: json['isDefining'] as bool,
    elementIsDefining: json['elementIsDefining'] == null
        ? null
        : Element.fromJson(json['elementIsDefining'] as Map<String, dynamic>),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountRange: json['amountRange'] == null
        ? null
        : Range.fromJson(json['amountRange'] as Map<String, dynamic>),
    amountRatio: json['amountRatio'] == null
        ? null
        : Ratio.fromJson(json['amountRatio'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
    amountRatioLowLimit: json['amountRatioLowLimit'] == null
        ? null
        : Ratio.fromJson(json['amountRatioLowLimit'] as Map<String, dynamic>),
    amountType: json['amountType'] == null
        ? null
        : CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubstanceSpecification_RelationshipToJson(
    SubstanceSpecification_Relationship instance) {
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
  writeNotNull('substanceReference', instance.substanceReference?.toJson());
  writeNotNull(
      'substanceCodeableConcept', instance.substanceCodeableConcept?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('isDefining', instance.isDefining);
  writeNotNull('elementIsDefining', instance.elementIsDefining?.toJson());
  writeNotNull('amountQuantity', instance.amountQuantity?.toJson());
  writeNotNull('amountRange', instance.amountRange?.toJson());
  writeNotNull('amountRatio', instance.amountRatio?.toJson());
  writeNotNull('amountString', instance.amountString);
  writeNotNull('elementAmountString', instance.elementAmountString?.toJson());
  writeNotNull('amountRatioLowLimit', instance.amountRatioLowLimit?.toJson());
  writeNotNull('amountType', instance.amountType?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  return val;
}
