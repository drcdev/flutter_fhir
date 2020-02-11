import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 182)
class SpecimenDefinition {

	static Future<SpecimenDefinition> newInstance({
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
		CodeableConcept typeCollected,
		List<CodeableConcept> patientPreparation,
		String timeAspect,
		Element elementTimeAspect,
		List<CodeableConcept> collection,
		List<SpecimenDefinition_TypeTested> typeTested}) async {
	 return SpecimenDefinition(
			id: await newEntry('SpecimenDefinition'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			typeCollected: typeCollected,
			patientPreparation: patientPreparation,
			timeAspect: timeAspect,
			elementTimeAspect: elementTimeAspect,
			collection: collection,
			typeTested: typeTested);
	}

  @HiveField(0)
  final String resourceType= 'SpecimenDefinition';
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
  CodeableConcept typeCollected;
  @HiveField(13)
  List<CodeableConcept> patientPreparation;
  @HiveField(14)
  String timeAspect;
  @HiveField(15)
  Element elementTimeAspect;
  @HiveField(16)
  List<CodeableConcept> collection;
  @HiveField(17)
  List<SpecimenDefinition_TypeTested> typeTested;

SpecimenDefinition(
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
    this.identifier,
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.elementTimeAspect,
    this.collection,
    this.typeTested
    });

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) => _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_TypeTested {

	static Future<SpecimenDefinition_TypeTested> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		bool isDerived,
		Element elementIsDerived,
		CodeableConcept type,
		String preference,
		Element elementPreference,
		SpecimenDefinition_Container container,
		String requirement,
		Element elementRequirement,
		Duration retentionTime,
		List<CodeableConcept> rejectionCriterion,
		List<SpecimenDefinition_Handling> handling}) async {
	 return SpecimenDefinition_TypeTested(
			id: await newEntry('SpecimenDefinition_TypeTested'),
			extension: extension,
			modifierExtension: modifierExtension,
			isDerived: isDerived,
			elementIsDerived: elementIsDerived,
			type: type,
			preference: preference,
			elementPreference: elementPreference,
			container: container,
			requirement: requirement,
			elementRequirement: elementRequirement,
			retentionTime: retentionTime,
			rejectionCriterion: rejectionCriterion,
			handling: handling);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool isDerived;
  Element elementIsDerived;
  CodeableConcept type;
  String preference; // <code> enum: preferred/alternate;
  Element elementPreference;
  SpecimenDefinition_Container container;
  String requirement;
  Element elementRequirement;
  Duration retentionTime;
  List<CodeableConcept> rejectionCriterion;
  List<SpecimenDefinition_Handling> handling;

SpecimenDefinition_TypeTested(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.isDerived,
    this.elementIsDerived,
    this.type,
    this.preference,
    this.elementPreference,
    this.container,
    this.requirement,
    this.elementRequirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling
    });

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_TypeTestedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Container {

	static Future<SpecimenDefinition_Container> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept material,
		CodeableConcept type,
		CodeableConcept cap,
		String description,
		Element elementDescription,
		Quantity capacity,
		Quantity minimumVolumeQuantity,
		String minimumVolumeString,
		Element elementMinimumVolumeString,
		List<SpecimenDefinition_Additive> additive,
		String preparation,
		Element elementPreparation}) async {
	 return SpecimenDefinition_Container(
			id: await newEntry('SpecimenDefinition_Container'),
			extension: extension,
			modifierExtension: modifierExtension,
			material: material,
			type: type,
			cap: cap,
			description: description,
			elementDescription: elementDescription,
			capacity: capacity,
			minimumVolumeQuantity: minimumVolumeQuantity,
			minimumVolumeString: minimumVolumeString,
			elementMinimumVolumeString: elementMinimumVolumeString,
			additive: additive,
			preparation: preparation,
			elementPreparation: elementPreparation);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept material;
  CodeableConcept type;
  CodeableConcept cap;
  String description;
  Element elementDescription;
  Quantity capacity;
  Quantity minimumVolumeQuantity;
  String minimumVolumeString; //  pattern: ^[ \r\n\t\S]+$
  Element elementMinimumVolumeString;
  List<SpecimenDefinition_Additive> additive;
  String preparation;
  Element elementPreparation;

SpecimenDefinition_Container(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.elementDescription,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.elementMinimumVolumeString,
    this.additive,
    this.preparation,
    this.elementPreparation
    });

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_ContainerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Additive {

	static Future<SpecimenDefinition_Additive> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept additiveCodeableConcept,
		Reference additiveReference}) async {
	 return SpecimenDefinition_Additive(
			id: await newEntry('SpecimenDefinition_Additive'),
			extension: extension,
			modifierExtension: modifierExtension,
			additiveCodeableConcept: additiveCodeableConcept,
			additiveReference: additiveReference);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept additiveCodeableConcept;
  Reference additiveReference;

SpecimenDefinition_Additive(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference
    });

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_AdditiveToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Handling {

	static Future<SpecimenDefinition_Handling> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept temperatureQualifier,
		Range temperatureRange,
		Duration maxDuration,
		String instruction,
		Element elementInstruction}) async {
	 return SpecimenDefinition_Handling(
			id: await newEntry('SpecimenDefinition_Handling'),
			extension: extension,
			modifierExtension: modifierExtension,
			temperatureQualifier: temperatureQualifier,
			temperatureRange: temperatureRange,
			maxDuration: maxDuration,
			instruction: instruction,
			elementInstruction: elementInstruction);
	}

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept temperatureQualifier;
  Range temperatureRange;
  Duration maxDuration;
  String instruction;
  Element elementInstruction;

SpecimenDefinition_Handling(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.elementInstruction
    });

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_HandlingToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpecimenDefinitionAdapter extends TypeAdapter<SpecimenDefinition> {
  @override
  final typeId = 182;

  @override
  SpecimenDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition(
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
      typeCollected: fields[12] as CodeableConcept,
      patientPreparation: (fields[13] as List)?.cast<CodeableConcept>(),
      timeAspect: fields[14] as String,
      elementTimeAspect: fields[15] as Element,
      collection: (fields[16] as List)?.cast<CodeableConcept>(),
      typeTested: (fields[17] as List)?.cast<SpecimenDefinition_TypeTested>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition obj) {
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.typeCollected)
      ..writeByte(13)
      ..write(obj.patientPreparation)
      ..writeByte(14)
      ..write(obj.timeAspect)
      ..writeByte(15)
      ..write(obj.elementTimeAspect)
      ..writeByte(16)
      ..write(obj.collection)
      ..writeByte(17)
      ..write(obj.typeTested);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecimenDefinition _$SpecimenDefinitionFromJson(Map<String, dynamic> json) {
  return SpecimenDefinition(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    typeCollected: json['typeCollected'] == null
        ? null
        : CodeableConcept.fromJson(
            json['typeCollected'] as Map<String, dynamic>),
    patientPreparation: (json['patientPreparation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeAspect: json['timeAspect'] as String,
    elementTimeAspect: json['elementTimeAspect'] == null
        ? null
        : Element.fromJson(json['elementTimeAspect'] as Map<String, dynamic>),
    collection: (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeTested: (json['typeTested'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_TypeTested.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinitionToJson(SpecimenDefinition instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'typeCollected': instance.typeCollected?.toJson(),
      'patientPreparation':
          instance.patientPreparation?.map((e) => e?.toJson())?.toList(),
      'timeAspect': instance.timeAspect,
      'elementTimeAspect': instance.elementTimeAspect?.toJson(),
      'collection': instance.collection?.map((e) => e?.toJson())?.toList(),
      'typeTested': instance.typeTested?.map((e) => e?.toJson())?.toList(),
    };

SpecimenDefinition_TypeTested _$SpecimenDefinition_TypeTestedFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_TypeTested(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isDerived: json['isDerived'] as bool,
    elementIsDerived: json['elementIsDerived'] == null
        ? null
        : Element.fromJson(json['elementIsDerived'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    preference: json['preference'] as String,
    elementPreference: json['elementPreference'] == null
        ? null
        : Element.fromJson(json['elementPreference'] as Map<String, dynamic>),
    container: json['container'] == null
        ? null
        : SpecimenDefinition_Container.fromJson(
            json['container'] as Map<String, dynamic>),
    requirement: json['requirement'] as String,
    elementRequirement: json['elementRequirement'] == null
        ? null
        : Element.fromJson(json['elementRequirement'] as Map<String, dynamic>),
    retentionTime: json['retentionTime'] == null
        ? null
        : Duration.fromJson(json['retentionTime'] as Map<String, dynamic>),
    rejectionCriterion: (json['rejectionCriterion'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    handling: (json['handling'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Handling.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinition_TypeTestedToJson(
        SpecimenDefinition_TypeTested instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'isDerived': instance.isDerived,
      'elementIsDerived': instance.elementIsDerived?.toJson(),
      'type': instance.type?.toJson(),
      'preference': instance.preference,
      'elementPreference': instance.elementPreference?.toJson(),
      'container': instance.container?.toJson(),
      'requirement': instance.requirement,
      'elementRequirement': instance.elementRequirement?.toJson(),
      'retentionTime': instance.retentionTime?.toJson(),
      'rejectionCriterion':
          instance.rejectionCriterion?.map((e) => e?.toJson())?.toList(),
      'handling': instance.handling?.map((e) => e?.toJson())?.toList(),
    };

SpecimenDefinition_Container _$SpecimenDefinition_ContainerFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Container(
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
    cap: json['cap'] == null
        ? null
        : CodeableConcept.fromJson(json['cap'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    capacity: json['capacity'] == null
        ? null
        : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
    minimumVolumeQuantity: json['minimumVolumeQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['minimumVolumeQuantity'] as Map<String, dynamic>),
    minimumVolumeString: json['minimumVolumeString'] as String,
    elementMinimumVolumeString: json['elementMinimumVolumeString'] == null
        ? null
        : Element.fromJson(
            json['elementMinimumVolumeString'] as Map<String, dynamic>),
    additive: (json['additive'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Additive.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preparation: json['preparation'] as String,
    elementPreparation: json['elementPreparation'] == null
        ? null
        : Element.fromJson(json['elementPreparation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_ContainerToJson(
        SpecimenDefinition_Container instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'material': instance.material?.toJson(),
      'type': instance.type?.toJson(),
      'cap': instance.cap?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'capacity': instance.capacity?.toJson(),
      'minimumVolumeQuantity': instance.minimumVolumeQuantity?.toJson(),
      'minimumVolumeString': instance.minimumVolumeString,
      'elementMinimumVolumeString':
          instance.elementMinimumVolumeString?.toJson(),
      'additive': instance.additive?.map((e) => e?.toJson())?.toList(),
      'preparation': instance.preparation,
      'elementPreparation': instance.elementPreparation?.toJson(),
    };

SpecimenDefinition_Additive _$SpecimenDefinition_AdditiveFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Additive(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additiveCodeableConcept: json['additiveCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveCodeableConcept'] as Map<String, dynamic>),
    additiveReference: json['additiveReference'] == null
        ? null
        : Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_AdditiveToJson(
        SpecimenDefinition_Additive instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'additiveCodeableConcept': instance.additiveCodeableConcept?.toJson(),
      'additiveReference': instance.additiveReference?.toJson(),
    };

SpecimenDefinition_Handling _$SpecimenDefinition_HandlingFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Handling(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    temperatureQualifier: json['temperatureQualifier'] == null
        ? null
        : CodeableConcept.fromJson(
            json['temperatureQualifier'] as Map<String, dynamic>),
    temperatureRange: json['temperatureRange'] == null
        ? null
        : Range.fromJson(json['temperatureRange'] as Map<String, dynamic>),
    maxDuration: json['maxDuration'] == null
        ? null
        : Duration.fromJson(json['maxDuration'] as Map<String, dynamic>),
    instruction: json['instruction'] as String,
    elementInstruction: json['elementInstruction'] == null
        ? null
        : Element.fromJson(json['elementInstruction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_HandlingToJson(
        SpecimenDefinition_Handling instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'temperatureQualifier': instance.temperatureQualifier?.toJson(),
      'temperatureRange': instance.temperatureRange?.toJson(),
      'maxDuration': instance.maxDuration?.toJson(),
      'instruction': instance.instruction,
      'elementInstruction': instance.elementInstruction?.toJson(),
    };
