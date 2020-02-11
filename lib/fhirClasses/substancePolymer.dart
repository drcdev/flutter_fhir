import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/substanceAmount.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 565)
class SubstancePolymer {

  //  This is a SubstancePolymer resource
  @HiveField(0)
  final String resourceType= 'SubstancePolymer';

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
  CodeableConcept classs;

  //  Todo.
  @HiveField(12)
  CodeableConcept geometry;

  //  Todo.
  @HiveField(13)
  List<CodeableConcept> copolymerConnectivity;

  //  Todo.
  @HiveField(14)
  List<String> modification;

  //  Extensions for modification
  @HiveField(15)
  List<Element> elementModification;

  //  Todo.
  @HiveField(16)
  List<SubstancePolymer_MonomerSet> monomerSet;

  //  Todo.
  @HiveField(17)
  List<SubstancePolymer_Repeat> repeat;

SubstancePolymer(
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
    this.classs,
    this.geometry,
    this.copolymerConnectivity,
    this.modification,
    this.elementModification,
    this.monomerSet,
    this.repeat
    });

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) => _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_MonomerSet {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Todo.
  CodeableConcept ratioType;

  //  Todo.
  List<SubstancePolymer_StartingMaterial> startingMaterial;

SubstancePolymer_MonomerSet(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.ratioType,
    this.startingMaterial
    });

  factory SubstancePolymer_MonomerSet.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_MonomerSetFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_MonomerSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StartingMaterial {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Todo.
  CodeableConcept material;

  //  Todo.
  CodeableConcept type;

  //  Todo.
  bool isDefining;

  //  Extensions for isDefining
  Element elementIsDefining;

  //  Todo.
  SubstanceAmount amount;

SubstancePolymer_StartingMaterial(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.isDefining,
    this.elementIsDefining,
    this.amount
    });

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StartingMaterialFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StartingMaterialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_Repeat {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Todo.
  int numberOfUnits;

  //  Extensions for numberOfUnits
  Element elementNumberOfUnits;

  //  Todo.
  String averageMolecularFormula;

  //  Extensions for averageMolecularFormula
  Element elementAverageMolecularFormula;

  //  Todo.
  CodeableConcept repeatUnitAmountType;

  //  Todo.
  List<SubstancePolymer_RepeatUnit> repeatUnit;

SubstancePolymer_Repeat(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.numberOfUnits,
    this.elementNumberOfUnits,
    this.averageMolecularFormula,
    this.elementAverageMolecularFormula,
    this.repeatUnitAmountType,
    this.repeatUnit
    });

  factory SubstancePolymer_Repeat.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_RepeatUnit {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Todo.
  CodeableConcept orientationOfPolymerisation;

  //  Todo.
  String repeatUnit;

  //  Extensions for repeatUnit
  Element elementRepeatUnit;

  //  Todo.
  SubstanceAmount amount;

  //  Todo.
  List<SubstancePolymer_DegreeOfPolymerisation> degreeOfPolymerisation;

  //  Todo.
  List<SubstancePolymer_StructuralRepresentation> structuralRepresentation;

SubstancePolymer_RepeatUnit(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.orientationOfPolymerisation,
    this.repeatUnit,
    this.elementRepeatUnit,
    this.amount,
    this.degreeOfPolymerisation,
    this.structuralRepresentation
    });

  factory SubstancePolymer_RepeatUnit.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_RepeatUnitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_RepeatUnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_DegreeOfPolymerisation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Todo.
  CodeableConcept degree;

  //  Todo.
  SubstanceAmount amount;

SubstancePolymer_DegreeOfPolymerisation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.degree,
    this.amount
    });

  factory SubstancePolymer_DegreeOfPolymerisation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_DegreeOfPolymerisationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_DegreeOfPolymerisationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstancePolymer_StructuralRepresentation {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Todo.
  CodeableConcept type;

  //  Todo.
  String representation;

  //  Extensions for representation
  Element elementRepresentation;

  //  Todo.
  Attachment attachment;

SubstancePolymer_StructuralRepresentation(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.elementRepresentation,
    this.attachment
    });

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) => _$SubstancePolymer_StructuralRepresentationFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymer_StructuralRepresentationToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstancePolymerAdapter extends TypeAdapter<SubstancePolymer> {
  @override
  final typeId = 565;

  @override
  SubstancePolymer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstancePolymer(
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstancePolymer _$SubstancePolymerFromJson(Map<String, dynamic> json) {
  return SubstancePolymer(
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

Map<String, dynamic> _$SubstancePolymerToJson(SubstancePolymer instance) =>
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
      'classs': instance.classs?.toJson(),
      'geometry': instance.geometry?.toJson(),
      'copolymerConnectivity':
          instance.copolymerConnectivity?.map((e) => e?.toJson())?.toList(),
      'modification': instance.modification,
      'elementModification':
          instance.elementModification?.map((e) => e?.toJson())?.toList(),
      'monomerSet': instance.monomerSet?.map((e) => e?.toJson())?.toList(),
      'repeat': instance.repeat?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstancePolymer_MonomerSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'ratioType': instance.ratioType?.toJson(),
      'startingMaterial':
          instance.startingMaterial?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstancePolymer_StartingMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'material': instance.material?.toJson(),
      'type': instance.type?.toJson(),
      'isDefining': instance.isDefining,
      'elementIsDefining': instance.elementIsDefining?.toJson(),
      'amount': instance.amount?.toJson(),
    };

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
        SubstancePolymer_Repeat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'numberOfUnits': instance.numberOfUnits,
      'elementNumberOfUnits': instance.elementNumberOfUnits?.toJson(),
      'averageMolecularFormula': instance.averageMolecularFormula,
      'elementAverageMolecularFormula':
          instance.elementAverageMolecularFormula?.toJson(),
      'repeatUnitAmountType': instance.repeatUnitAmountType?.toJson(),
      'repeatUnit': instance.repeatUnit?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstancePolymer_RepeatUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'orientationOfPolymerisation':
          instance.orientationOfPolymerisation?.toJson(),
      'repeatUnit': instance.repeatUnit,
      'elementRepeatUnit': instance.elementRepeatUnit?.toJson(),
      'amount': instance.amount?.toJson(),
      'degreeOfPolymerisation':
          instance.degreeOfPolymerisation?.map((e) => e?.toJson())?.toList(),
      'structuralRepresentation':
          instance.structuralRepresentation?.map((e) => e?.toJson())?.toList(),
    };

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
        SubstancePolymer_DegreeOfPolymerisation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'degree': instance.degree?.toJson(),
      'amount': instance.amount?.toJson(),
    };

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
        SubstancePolymer_StructuralRepresentation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'representation': instance.representation,
      'elementRepresentation': instance.elementRepresentation?.toJson(),
      'attachment': instance.attachment?.toJson(),
    };
