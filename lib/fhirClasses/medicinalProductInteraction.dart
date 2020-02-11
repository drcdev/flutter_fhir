import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 415)
class MedicinalProductInteraction {

  //  This is a MedicinalProductInteraction resource
  @HiveField(0)
  final String resourceType= 'MedicinalProductInteraction';

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

  //  The medication for which this is a described interaction.
  @HiveField(11)
  List<Reference> subject;

  //  The interaction described.
  @HiveField(12)
  String description;

  //  Extensions for description
  @HiveField(13)
  Element elementDescription;

  //  The specific medication, food or laboratory test that interacts.
  @HiveField(14)
  List<MedicinalProductInteraction_Interactant> interactant;

  //  The type of the interaction e.g. drug-drug interaction, drug-food
  // interaction, drug-lab test interaction.
  @HiveField(15)
  CodeableConcept type;

  //  The effect of the interaction, for example "reduced gastric absorption
  // of primary medication".
  @HiveField(16)
  CodeableConcept effect;

  //  The incidence of the interaction, e.g. theoretical, observed.
  @HiveField(17)
  CodeableConcept incidence;

  //  Actions for managing the interaction.
  @HiveField(18)
  CodeableConcept management;

MedicinalProductInteraction(
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
    this.subject,
    this.description,
    this.elementDescription,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management
    });

  factory MedicinalProductInteraction.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteractionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductInteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 416)
class MedicinalProductInteraction_Interactant {

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

  //  The specific medication, food or laboratory test that interacts.
  @HiveField(3)
  Reference itemReference;

  //  The specific medication, food or laboratory test that interacts.
  @HiveField(4)
  CodeableConcept itemCodeableConcept;

MedicinalProductInteraction_Interactant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemReference,
    this.itemCodeableConcept
    });

  factory MedicinalProductInteraction_Interactant.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteraction_InteractantFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductInteraction_InteractantToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductInteractionAdapter
    extends TypeAdapter<MedicinalProductInteraction> {
  @override
  final typeId = 415;

  @override
  MedicinalProductInteraction read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductInteraction(
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
      subject: (fields[11] as List)?.cast<Reference>(),
      description: fields[12] as String,
      elementDescription: fields[13] as Element,
      interactant:
          (fields[14] as List)?.cast<MedicinalProductInteraction_Interactant>(),
      type: fields[15] as CodeableConcept,
      effect: fields[16] as CodeableConcept,
      incidence: fields[17] as CodeableConcept,
      management: fields[18] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductInteraction obj) {
    writer
      ..writeByte(19)
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
      ..write(obj.subject)
      ..writeByte(12)
      ..write(obj.description)
      ..writeByte(13)
      ..write(obj.elementDescription)
      ..writeByte(14)
      ..write(obj.interactant)
      ..writeByte(15)
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.effect)
      ..writeByte(17)
      ..write(obj.incidence)
      ..writeByte(18)
      ..write(obj.management);
  }
}

class MedicinalProductInteraction_InteractantAdapter
    extends TypeAdapter<MedicinalProductInteraction_Interactant> {
  @override
  final typeId = 416;

  @override
  MedicinalProductInteraction_Interactant read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductInteraction_Interactant(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemReference: fields[3] as Reference,
      itemCodeableConcept: fields[4] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductInteraction_Interactant obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemReference)
      ..writeByte(4)
      ..write(obj.itemCodeableConcept);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductInteraction _$MedicinalProductInteractionFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductInteraction(
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
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    interactant: (json['interactant'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductInteraction_Interactant.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    effect: json['effect'] == null
        ? null
        : CodeableConcept.fromJson(json['effect'] as Map<String, dynamic>),
    incidence: json['incidence'] == null
        ? null
        : CodeableConcept.fromJson(json['incidence'] as Map<String, dynamic>),
    management: json['management'] == null
        ? null
        : CodeableConcept.fromJson(json['management'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductInteractionToJson(
        MedicinalProductInteraction instance) =>
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
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'interactant': instance.interactant?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'effect': instance.effect?.toJson(),
      'incidence': instance.incidence?.toJson(),
      'management': instance.management?.toJson(),
    };

MedicinalProductInteraction_Interactant
    _$MedicinalProductInteraction_InteractantFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductInteraction_Interactant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductInteraction_InteractantToJson(
        MedicinalProductInteraction_Interactant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemReference': instance.itemReference?.toJson(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
    };
