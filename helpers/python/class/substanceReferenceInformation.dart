part 'substanceReferenceInformation.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation {

SubstanceReferenceInformation resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
String comment;
Element _comment;
List<SubstanceReferenceInformation_Gene> gene;
List<SubstanceReferenceInformation_GeneElement> geneElement;
List<SubstanceReferenceInformation_Classification> classification;
List<SubstanceReferenceInformation_Target> target;

SubstanceReferenceInformation(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.comment,
      this._comment,
      this.gene,
      this.geneElement,
      this.classification,
      this.target,
      });

  factory SubstanceReferenceInformation.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Gene {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept geneSequenceOrigin;
CodeableConcept gene;
List<Reference> source;

SubstanceReferenceInformation_Gene(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.geneSequenceOrigin,
      this.gene,
      this.source,
      });

  factory SubstanceReferenceInformation_Gene.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_GeneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_GeneElement {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Identifier element;
List<Reference> source;

SubstanceReferenceInformation_GeneElement(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.element,
      this.source,
      });

  factory SubstanceReferenceInformation_GeneElement.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneElementFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_GeneElementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Classification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept domain;
CodeableConcept classification;
List<CodeableConcept> subtype;
List<Reference> source;

SubstanceReferenceInformation_Classification(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.domain,
      this.classification,
      this.subtype,
      this.source,
      });

  factory SubstanceReferenceInformation_Classification.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_ClassificationFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_ClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier target;
CodeableConcept type;
CodeableConcept interaction;
CodeableConcept organism;
CodeableConcept organismType;
Quantity amountQuantity;
Range amountRange;
String amountString; //  pattern: ^[ \r\n\t\S]+$
Element _amountString;
CodeableConcept amountType;
List<Reference> source;

SubstanceReferenceInformation_Target(
  {this.id,
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
      this._amountString,
      this.amountType,
      this.source,
      });

  factory SubstanceReferenceInformation_Target.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_TargetFromJson(json);
  Map<String, dynamic> toJson() _$SubstanceReferenceInformation_TargetToJson(this);
}

