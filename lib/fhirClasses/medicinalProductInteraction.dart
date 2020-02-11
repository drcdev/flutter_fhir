import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 141)
class MedicinalProductInteraction {

	static Future<MedicinalProductInteraction> newInstance({
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
		List<Reference> subject,
		String description,
		Element elementDescription,
		List<MedicinalProductInteraction_Interactant> interactant,
		CodeableConcept type,
		CodeableConcept effect,
		CodeableConcept incidence,
		CodeableConcept management}) async {
	 return MedicinalProductInteraction(
			id: await newEntry('MedicinalProductInteraction'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			subject: subject,
			description: description,
			elementDescription: elementDescription,
			interactant: interactant,
			type: type,
			effect: effect,
			incidence: incidence,
			management: management);
	}

  @HiveField(0)
  final String resourceType= 'MedicinalProductInteraction';
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
  List<Reference> subject;
  @HiveField(12)
  String description;
  @HiveField(13)
  Element elementDescription;
  @HiveField(14)
  List<MedicinalProductInteraction_Interactant> interactant;
  @HiveField(15)
  CodeableConcept type;
  @HiveField(16)
  CodeableConcept effect;
  @HiveField(17)
  CodeableConcept incidence;
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
class MedicinalProductInteraction_Interactant {

	static Future<MedicinalProductInteraction_Interactant> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference itemReference,
		CodeableConcept itemCodeableConcept}) async {
	 return MedicinalProductInteraction_Interactant(
			id: await newEntry('MedicinalProductInteraction_Interactant'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemReference: itemReference,
			itemCodeableConcept: itemCodeableConcept);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference itemReference;
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
  final typeId = 141;

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
