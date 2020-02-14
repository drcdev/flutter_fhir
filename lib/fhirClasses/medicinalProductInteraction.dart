import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction {


	static Future<MedicinalProductInteraction> newInstance({
		String  resourceType,
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
	var fhirDb = new DatabaseHelper();
	MedicinalProductInteraction newMedicinalProductInteraction = new MedicinalProductInteraction(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('MedicinalProductInteraction'),
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
			management: management,
);
	int saved = await fhirDb.saveResource(newMedicinalProductInteraction);
	return newMedicinalProductInteraction;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String resourceType= 'MedicinalProductInteraction';
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
  List<Reference> subject;
  String description;
  Element elementDescription;
  List<MedicinalProductInteraction_Interactant> interactant;
  CodeableConcept type;
  CodeableConcept effect;
  CodeableConcept incidence;
  CodeableConcept management;

MedicinalProductInteraction(
  {@required this.resourceType,
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
	var fhirDb = new DatabaseHelper();
	MedicinalProductInteraction_Interactant newMedicinalProductInteraction_Interactant = new MedicinalProductInteraction_Interactant(
			id: await fhirDb.newResourceId('MedicinalProductInteraction_Interactant'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemReference: itemReference,
			itemCodeableConcept: itemCodeableConcept,
);
	return newMedicinalProductInteraction_Interactant;
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
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductInteraction _$MedicinalProductInteractionFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductInteraction(
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
      'resourceType': instance.resourceType,
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
