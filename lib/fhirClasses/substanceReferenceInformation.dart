import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 574)
class SubstanceReferenceInformation {

  //  This is a SubstanceReferenceInformation resource
  @HiveField(0)
  final String resourceType= 'SubstanceReferenceInformation';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Todo.
  @HiveField(11)
  String comment;

  //  Extensions for comment
  @HiveField(12)
  Element elementComment;

  //  Todo.
  @HiveField(13)
  List<SubstanceReferenceInformation_Gene> gene;

  //  Todo.
  @HiveField(14)
  List<SubstanceReferenceInformation_GeneElement> geneElement;

  //  Todo.
  @HiveField(15)
  List<SubstanceReferenceInformation_Classification> classification;

  //  Todo.
  @HiveField(16)
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
@HiveType(typeId: 575)
class SubstanceReferenceInformation_Gene {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Todo.
  @HiveField(3)
  CodeableConcept geneSequenceOrigin;

  //  Todo.
  @HiveField(4)
  CodeableConcept gene;

  //  Todo.
  @HiveField(5)
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
@HiveType(typeId: 576)
class SubstanceReferenceInformation_GeneElement {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Todo.
  @HiveField(3)
  CodeableConcept type;

  //  Todo.
  @HiveField(4)
  Identifier element;

  //  Todo.
  @HiveField(5)
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
@HiveType(typeId: 577)
class SubstanceReferenceInformation_Classification {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Todo.
  @HiveField(3)
  CodeableConcept domain;

  //  Todo.
  @HiveField(4)
  CodeableConcept classification;

  //  Todo.
  @HiveField(5)
  List<CodeableConcept> subtype;

  //  Todo.
  @HiveField(6)
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
@HiveType(typeId: 578)
class SubstanceReferenceInformation_Target {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Todo.
  @HiveField(3)
  Identifier target;

  //  Todo.
  @HiveField(4)
  CodeableConcept type;

  //  Todo.
  @HiveField(5)
  CodeableConcept interaction;

  //  Todo.
  @HiveField(6)
  CodeableConcept organism;

  //  Todo.
  @HiveField(7)
  CodeableConcept organismType;

  //  Todo.
  @HiveField(8)
  Quantity amountQuantity;

  //  Todo.
  @HiveField(9)
  Range amountRange;

  //  Todo.
  @HiveField(10)
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  @HiveField(11)
  Element elementAmountString;

  //  Todo.
  @HiveField(12)
  CodeableConcept amountType;

  //  Todo.
  @HiveField(13)
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
// TypeAdapterGenerator
// **************************************************************************

class SubstanceReferenceInformationAdapter
    extends TypeAdapter<SubstanceReferenceInformation> {
  @override
  final typeId = 574;

  @override
  SubstanceReferenceInformation read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceReferenceInformation(
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
  final typeId = 575;

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
  final typeId = 576;

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
  final typeId = 577;

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
  final typeId = 578;

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
