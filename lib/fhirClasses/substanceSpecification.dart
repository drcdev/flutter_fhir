import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'SubstanceSpecification';
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
  CodeableConcept type;
  @HiveField(13)
  CodeableConcept status;
  @HiveField(14)
  CodeableConcept domain;
  @HiveField(15)
  String description;
  @HiveField(16)
  Element elementDescription;
  @HiveField(17)
  List<Reference> source;
  @HiveField(18)
  String comment;
  @HiveField(19)
  Element elementComment;
  @HiveField(20)
  List<SubstanceSpecification_Moiety> moiety;
  @HiveField(21)
  List<SubstanceSpecification_Property> property;
  @HiveField(22)
  Reference referenceInformation;
  @HiveField(23)
  SubstanceSpecification_Structure structure;
  @HiveField(24)
  List<SubstanceSpecification_Code> code;
  @HiveField(25)
  List<SubstanceSpecification_Name> name;
  @HiveField(26)
  List<SubstanceSpecification_MolecularWeight> molecularWeight;
  @HiveField(27)
  List<SubstanceSpecification_Relationship> relationship;
  @HiveField(28)
  Reference nucleicAcid;
  @HiveField(29)
  Reference polymer;
  @HiveField(30)
  Reference protein;
  @HiveField(31)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept role;
  @HiveField(4)
  Identifier identifier;
  @HiveField(5)
  String name;
  @HiveField(6)
  Element elementName;
  @HiveField(7)
  CodeableConcept stereochemistry;
  @HiveField(8)
  CodeableConcept opticalActivity;
  @HiveField(9)
  String molecularFormula;
  @HiveField(10)
  Element elementMolecularFormula;
  @HiveField(11)
  Quantity amountQuantity;
  @HiveField(12)
  String amountString;
  @HiveField(13)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept category;
  @HiveField(4)
  CodeableConcept code;
  @HiveField(5)
  String parameters;
  @HiveField(6)
  Element elementParameters;
  @HiveField(7)
  Reference definingSubstanceReference;
  @HiveField(8)
  CodeableConcept definingSubstanceCodeableConcept;
  @HiveField(9)
  Quantity amountQuantity;
  @HiveField(10)
  String amountString;
  @HiveField(11)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept stereochemistry;
  @HiveField(4)
  CodeableConcept opticalActivity;
  @HiveField(5)
  String molecularFormula;
  @HiveField(6)
  Element elementMolecularFormula;
  @HiveField(7)
  String molecularFormulaByMoiety;
  @HiveField(8)
  Element elementMolecularFormulaByMoiety;
  @HiveField(9)
  List<SubstanceSpecification_Isotope> isotope;
  @HiveField(10)
  SubstanceSpecification_MolecularWeight molecularWeight;
  @HiveField(11)
  List<Reference> source;
  @HiveField(12)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier identifier;
  @HiveField(4)
  CodeableConcept name;
  @HiveField(5)
  CodeableConcept substitution;
  @HiveField(6)
  Quantity halfLife;
  @HiveField(7)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      method: method,
      type: type,
      amount: amount,
    );
    return newSubstanceSpecification_MolecularWeight;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept method;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      representation: representation,
      elementRepresentation: elementRepresentation,
      attachment: attachment,
    );
    return newSubstanceSpecification_Representation;
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
      id: id,
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
  @HiveField(5)
  DateTime statusDate;
  @HiveField(6)
  Element elementStatusDate;
  @HiveField(7)
  String comment;
  @HiveField(8)
  Element elementComment;
  @HiveField(9)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  CodeableConcept type;
  @HiveField(6)
  CodeableConcept status;
  @HiveField(7)
  bool preferred;
  @HiveField(8)
  Element elementPreferred;
  @HiveField(9)
  List<CodeableConcept> language;
  @HiveField(10)
  List<CodeableConcept> domain;
  @HiveField(11)
  List<CodeableConcept> jurisdiction;
  @HiveField(12)
  List<SubstanceSpecification_Name> synonym;
  @HiveField(13)
  List<SubstanceSpecification_Name> translation;
  @HiveField(14)
  List<SubstanceSpecification_Official> official;
  @HiveField(15)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      authority: authority,
      status: status,
      date: date,
      elementDate: elementDate,
    );
    return newSubstanceSpecification_Official;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept authority;
  @HiveField(4)
  CodeableConcept status;
  @HiveField(5)
  DateTime date;
  @HiveField(6)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference substanceReference;
  @HiveField(4)
  CodeableConcept substanceCodeableConcept;
  @HiveField(5)
  CodeableConcept relationship;
  @HiveField(6)
  bool isDefining;
  @HiveField(7)
  Element elementIsDefining;
  @HiveField(8)
  Quantity amountQuantity;
  @HiveField(9)
  Range amountRange;
  @HiveField(10)
  Ratio amountRatio;
  @HiveField(11)
  String amountString;
  @HiveField(12)
  Element elementAmountString;
  @HiveField(13)
  Ratio amountRatioLowLimit;
  @HiveField(14)
  CodeableConcept amountType;
  @HiveField(15)
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceSpecificationAdapter
    extends TypeAdapter<SubstanceSpecification> {
  @override
  SubstanceSpecification read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification(
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
      type: fields[12] as CodeableConcept,
      status: fields[13] as CodeableConcept,
      domain: fields[14] as CodeableConcept,
      description: fields[15] as String,
      elementDescription: fields[16] as Element,
      source: (fields[17] as List)?.cast<Reference>(),
      comment: fields[18] as String,
      elementComment: fields[19] as Element,
      moiety: (fields[20] as List)?.cast<SubstanceSpecification_Moiety>(),
      property: (fields[21] as List)?.cast<SubstanceSpecification_Property>(),
      referenceInformation: fields[22] as Reference,
      structure: fields[23] as SubstanceSpecification_Structure,
      code: (fields[24] as List)?.cast<SubstanceSpecification_Code>(),
      name: (fields[25] as List)?.cast<SubstanceSpecification_Name>(),
      molecularWeight:
          (fields[26] as List)?.cast<SubstanceSpecification_MolecularWeight>(),
      relationship:
          (fields[27] as List)?.cast<SubstanceSpecification_Relationship>(),
      nucleicAcid: fields[28] as Reference,
      polymer: fields[29] as Reference,
      protein: fields[30] as Reference,
      sourceMaterial: fields[31] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification obj) {
    writer
      ..writeByte(32)
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
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.domain)
      ..writeByte(15)
      ..write(obj.description)
      ..writeByte(16)
      ..write(obj.elementDescription)
      ..writeByte(17)
      ..write(obj.source)
      ..writeByte(18)
      ..write(obj.comment)
      ..writeByte(19)
      ..write(obj.elementComment)
      ..writeByte(20)
      ..write(obj.moiety)
      ..writeByte(21)
      ..write(obj.property)
      ..writeByte(22)
      ..write(obj.referenceInformation)
      ..writeByte(23)
      ..write(obj.structure)
      ..writeByte(24)
      ..write(obj.code)
      ..writeByte(25)
      ..write(obj.name)
      ..writeByte(26)
      ..write(obj.molecularWeight)
      ..writeByte(27)
      ..write(obj.relationship)
      ..writeByte(28)
      ..write(obj.nucleicAcid)
      ..writeByte(29)
      ..write(obj.polymer)
      ..writeByte(30)
      ..write(obj.protein)
      ..writeByte(31)
      ..write(obj.sourceMaterial);
  }
}

class SubstanceSpecification_MoietyAdapter
    extends TypeAdapter<SubstanceSpecification_Moiety> {
  @override
  SubstanceSpecification_Moiety read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Moiety(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      role: fields[3] as CodeableConcept,
      identifier: fields[4] as Identifier,
      name: fields[5] as String,
      elementName: fields[6] as Element,
      stereochemistry: fields[7] as CodeableConcept,
      opticalActivity: fields[8] as CodeableConcept,
      molecularFormula: fields[9] as String,
      elementMolecularFormula: fields[10] as Element,
      amountQuantity: fields[11] as Quantity,
      amountString: fields[12] as String,
      elementAmountString: fields[13] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Moiety obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.identifier)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.elementName)
      ..writeByte(7)
      ..write(obj.stereochemistry)
      ..writeByte(8)
      ..write(obj.opticalActivity)
      ..writeByte(9)
      ..write(obj.molecularFormula)
      ..writeByte(10)
      ..write(obj.elementMolecularFormula)
      ..writeByte(11)
      ..write(obj.amountQuantity)
      ..writeByte(12)
      ..write(obj.amountString)
      ..writeByte(13)
      ..write(obj.elementAmountString);
  }
}

class SubstanceSpecification_PropertyAdapter
    extends TypeAdapter<SubstanceSpecification_Property> {
  @override
  SubstanceSpecification_Property read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Property(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      code: fields[4] as CodeableConcept,
      parameters: fields[5] as String,
      elementParameters: fields[6] as Element,
      definingSubstanceReference: fields[7] as Reference,
      definingSubstanceCodeableConcept: fields[8] as CodeableConcept,
      amountQuantity: fields[9] as Quantity,
      amountString: fields[10] as String,
      elementAmountString: fields[11] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Property obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.code)
      ..writeByte(5)
      ..write(obj.parameters)
      ..writeByte(6)
      ..write(obj.elementParameters)
      ..writeByte(7)
      ..write(obj.definingSubstanceReference)
      ..writeByte(8)
      ..write(obj.definingSubstanceCodeableConcept)
      ..writeByte(9)
      ..write(obj.amountQuantity)
      ..writeByte(10)
      ..write(obj.amountString)
      ..writeByte(11)
      ..write(obj.elementAmountString);
  }
}

class SubstanceSpecification_StructureAdapter
    extends TypeAdapter<SubstanceSpecification_Structure> {
  @override
  SubstanceSpecification_Structure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Structure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      stereochemistry: fields[3] as CodeableConcept,
      opticalActivity: fields[4] as CodeableConcept,
      molecularFormula: fields[5] as String,
      elementMolecularFormula: fields[6] as Element,
      molecularFormulaByMoiety: fields[7] as String,
      elementMolecularFormulaByMoiety: fields[8] as Element,
      isotope: (fields[9] as List)?.cast<SubstanceSpecification_Isotope>(),
      molecularWeight: fields[10] as SubstanceSpecification_MolecularWeight,
      source: (fields[11] as List)?.cast<Reference>(),
      representation:
          (fields[12] as List)?.cast<SubstanceSpecification_Representation>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Structure obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.stereochemistry)
      ..writeByte(4)
      ..write(obj.opticalActivity)
      ..writeByte(5)
      ..write(obj.molecularFormula)
      ..writeByte(6)
      ..write(obj.elementMolecularFormula)
      ..writeByte(7)
      ..write(obj.molecularFormulaByMoiety)
      ..writeByte(8)
      ..write(obj.elementMolecularFormulaByMoiety)
      ..writeByte(9)
      ..write(obj.isotope)
      ..writeByte(10)
      ..write(obj.molecularWeight)
      ..writeByte(11)
      ..write(obj.source)
      ..writeByte(12)
      ..write(obj.representation);
  }
}

class SubstanceSpecification_IsotopeAdapter
    extends TypeAdapter<SubstanceSpecification_Isotope> {
  @override
  SubstanceSpecification_Isotope read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Isotope(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      name: fields[4] as CodeableConcept,
      substitution: fields[5] as CodeableConcept,
      halfLife: fields[6] as Quantity,
      molecularWeight: fields[7] as SubstanceSpecification_MolecularWeight,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Isotope obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.substitution)
      ..writeByte(6)
      ..write(obj.halfLife)
      ..writeByte(7)
      ..write(obj.molecularWeight);
  }
}

class SubstanceSpecification_MolecularWeightAdapter
    extends TypeAdapter<SubstanceSpecification_MolecularWeight> {
  @override
  SubstanceSpecification_MolecularWeight read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_MolecularWeight(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      method: fields[3] as CodeableConcept,
      type: fields[4] as CodeableConcept,
      amount: fields[5] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_MolecularWeight obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.method)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.amount);
  }
}

class SubstanceSpecification_RepresentationAdapter
    extends TypeAdapter<SubstanceSpecification_Representation> {
  @override
  SubstanceSpecification_Representation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Representation(
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
  void write(BinaryWriter writer, SubstanceSpecification_Representation obj) {
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

class SubstanceSpecification_CodeAdapter
    extends TypeAdapter<SubstanceSpecification_Code> {
  @override
  SubstanceSpecification_Code read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Code(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      status: fields[4] as CodeableConcept,
      statusDate: fields[5] as DateTime,
      elementStatusDate: fields[6] as Element,
      comment: fields[7] as String,
      elementComment: fields[8] as Element,
      source: (fields[9] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Code obj) {
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
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.statusDate)
      ..writeByte(6)
      ..write(obj.elementStatusDate)
      ..writeByte(7)
      ..write(obj.comment)
      ..writeByte(8)
      ..write(obj.elementComment)
      ..writeByte(9)
      ..write(obj.source);
  }
}

class SubstanceSpecification_NameAdapter
    extends TypeAdapter<SubstanceSpecification_Name> {
  @override
  SubstanceSpecification_Name read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Name(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      status: fields[6] as CodeableConcept,
      preferred: fields[7] as bool,
      elementPreferred: fields[8] as Element,
      language: (fields[9] as List)?.cast<CodeableConcept>(),
      domain: (fields[10] as List)?.cast<CodeableConcept>(),
      jurisdiction: (fields[11] as List)?.cast<CodeableConcept>(),
      synonym: (fields[12] as List)?.cast<SubstanceSpecification_Name>(),
      translation: (fields[13] as List)?.cast<SubstanceSpecification_Name>(),
      official: (fields[14] as List)?.cast<SubstanceSpecification_Official>(),
      source: (fields[15] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Name obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.preferred)
      ..writeByte(8)
      ..write(obj.elementPreferred)
      ..writeByte(9)
      ..write(obj.language)
      ..writeByte(10)
      ..write(obj.domain)
      ..writeByte(11)
      ..write(obj.jurisdiction)
      ..writeByte(12)
      ..write(obj.synonym)
      ..writeByte(13)
      ..write(obj.translation)
      ..writeByte(14)
      ..write(obj.official)
      ..writeByte(15)
      ..write(obj.source);
  }
}

class SubstanceSpecification_OfficialAdapter
    extends TypeAdapter<SubstanceSpecification_Official> {
  @override
  SubstanceSpecification_Official read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Official(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      authority: fields[3] as CodeableConcept,
      status: fields[4] as CodeableConcept,
      date: fields[5] as DateTime,
      elementDate: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Official obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.authority)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.elementDate);
  }
}

class SubstanceSpecification_RelationshipAdapter
    extends TypeAdapter<SubstanceSpecification_Relationship> {
  @override
  SubstanceSpecification_Relationship read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceSpecification_Relationship(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      substanceReference: fields[3] as Reference,
      substanceCodeableConcept: fields[4] as CodeableConcept,
      relationship: fields[5] as CodeableConcept,
      isDefining: fields[6] as bool,
      elementIsDefining: fields[7] as Element,
      amountQuantity: fields[8] as Quantity,
      amountRange: fields[9] as Range,
      amountRatio: fields[10] as Ratio,
      amountString: fields[11] as String,
      elementAmountString: fields[12] as Element,
      amountRatioLowLimit: fields[13] as Ratio,
      amountType: fields[14] as CodeableConcept,
      source: (fields[15] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceSpecification_Relationship obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.substanceReference)
      ..writeByte(4)
      ..write(obj.substanceCodeableConcept)
      ..writeByte(5)
      ..write(obj.relationship)
      ..writeByte(6)
      ..write(obj.isDefining)
      ..writeByte(7)
      ..write(obj.elementIsDefining)
      ..writeByte(8)
      ..write(obj.amountQuantity)
      ..writeByte(9)
      ..write(obj.amountRange)
      ..writeByte(10)
      ..write(obj.amountRatio)
      ..writeByte(11)
      ..write(obj.amountString)
      ..writeByte(12)
      ..write(obj.elementAmountString)
      ..writeByte(13)
      ..write(obj.amountRatioLowLimit)
      ..writeByte(14)
      ..write(obj.amountType)
      ..writeByte(15)
      ..write(obj.source);
  }
}
