import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation {

	static Future<SubstanceReferenceInformation> newInstance({
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
		List<SubstanceReferenceInformation_Target> target}) async {
	SubstanceReferenceInformation newSubstanceReferenceInformation = new SubstanceReferenceInformation(
			id: await newId('SubstanceReferenceInformation'),
			meta: meta,
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
			target: target);
	var substanceReferenceInformationBox = await Hive.openBox<SubstanceReferenceInformation>('SubstanceReferenceInformationBox');
	substanceReferenceInformationBox.put(newSubstanceReferenceInformation.id, newSubstanceReferenceInformation);
	return newSubstanceReferenceInformation;
}
  final String resourceType= 'SubstanceReferenceInformation';
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
  String comment;
  Element elementComment;
  List<SubstanceReferenceInformation_Gene> gene;
  List<SubstanceReferenceInformation_GeneElement> geneElement;
  List<SubstanceReferenceInformation_Classification> classification;
  List<SubstanceReferenceInformation_Target> target;

SubstanceReferenceInformation(
  {this.id,
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
    this.target
    });

  factory SubstanceReferenceInformation.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Gene {

	static Future<SubstanceReferenceInformation_Gene> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept geneSequenceOrigin,
		CodeableConcept gene,
		List<Reference> source}) async {
	SubstanceReferenceInformation_Gene newSubstanceReferenceInformation_Gene = new SubstanceReferenceInformation_Gene(
			id: await newId('SubstanceReferenceInformation_Gene'),
			extension: extension,
			modifierExtension: modifierExtension,
			geneSequenceOrigin: geneSequenceOrigin,
			gene: gene,
			source: source);
	var substanceReferenceInformation_GeneBox = await Hive.openBox<SubstanceReferenceInformation_Gene>('SubstanceReferenceInformation_GeneBox');
	substanceReferenceInformation_GeneBox.put(newSubstanceReferenceInformation_Gene.id, newSubstanceReferenceInformation_Gene);
	return newSubstanceReferenceInformation_Gene;
}
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
    this.source
    });

  factory SubstanceReferenceInformation_Gene.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_GeneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_GeneElement {

	static Future<SubstanceReferenceInformation_GeneElement> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		Identifier element,
		List<Reference> source}) async {
	SubstanceReferenceInformation_GeneElement newSubstanceReferenceInformation_GeneElement = new SubstanceReferenceInformation_GeneElement(
			id: await newId('SubstanceReferenceInformation_GeneElement'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			element: element,
			source: source);
	var substanceReferenceInformation_GeneElementBox = await Hive.openBox<SubstanceReferenceInformation_GeneElement>('SubstanceReferenceInformation_GeneElementBox');
	substanceReferenceInformation_GeneElementBox.put(newSubstanceReferenceInformation_GeneElement.id, newSubstanceReferenceInformation_GeneElement);
	return newSubstanceReferenceInformation_GeneElement;
}
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
    this.source
    });

  factory SubstanceReferenceInformation_GeneElement.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_GeneElementFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_GeneElementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceReferenceInformation_Classification {

	static Future<SubstanceReferenceInformation_Classification> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept domain,
		CodeableConcept classification,
		List<CodeableConcept> subtype,
		List<Reference> source}) async {
	SubstanceReferenceInformation_Classification newSubstanceReferenceInformation_Classification = new SubstanceReferenceInformation_Classification(
			id: await newId('SubstanceReferenceInformation_Classification'),
			extension: extension,
			modifierExtension: modifierExtension,
			domain: domain,
			classification: classification,
			subtype: subtype,
			source: source);
	var substanceReferenceInformation_ClassificationBox = await Hive.openBox<SubstanceReferenceInformation_Classification>('SubstanceReferenceInformation_ClassificationBox');
	substanceReferenceInformation_ClassificationBox.put(newSubstanceReferenceInformation_Classification.id, newSubstanceReferenceInformation_Classification);
	return newSubstanceReferenceInformation_Classification;
}
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
    this.source
    });

  factory SubstanceReferenceInformation_Classification.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_ClassificationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_ClassificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<Reference> source}) async {
	SubstanceReferenceInformation_Target newSubstanceReferenceInformation_Target = new SubstanceReferenceInformation_Target(
			id: await newId('SubstanceReferenceInformation_Target'),
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
			source: source);
	var substanceReferenceInformation_TargetBox = await Hive.openBox<SubstanceReferenceInformation_Target>('SubstanceReferenceInformation_TargetBox');
	substanceReferenceInformation_TargetBox.put(newSubstanceReferenceInformation_Target.id, newSubstanceReferenceInformation_Target);
	return newSubstanceReferenceInformation_Target;
}
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
  Element elementAmountString;
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
    this.elementAmountString,
    this.amountType,
    this.source
    });

  factory SubstanceReferenceInformation_Target.fromJson(Map<String, dynamic> json) => _$SubstanceReferenceInformation_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceReferenceInformation_TargetToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceReferenceInformation _$SubstanceReferenceInformationFromJson(
    Map<String, dynamic> json) {
  return SubstanceReferenceInformation(
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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
        SubstanceReferenceInformation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'gene': instance.gene?.map((e) => e?.toJson())?.toList(),
      'geneElement': instance.geneElement?.map((e) => e?.toJson())?.toList(),
      'classification':
          instance.classification?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstanceReferenceInformation_Gene instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'geneSequenceOrigin': instance.geneSequenceOrigin?.toJson(),
      'gene': instance.gene?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstanceReferenceInformation_GeneElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'element': instance.element?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstanceReferenceInformation_Classification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'domain': instance.domain?.toJson(),
      'classification': instance.classification?.toJson(),
      'subtype': instance.subtype?.map((e) => e?.toJson())?.toList(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstanceReferenceInformation_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.toJson(),
      'type': instance.type?.toJson(),
      'interaction': instance.interaction?.toJson(),
      'organism': instance.organism?.toJson(),
      'organismType': instance.organismType?.toJson(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountRange': instance.amountRange?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
      'amountType': instance.amountType?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
    };
