import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 138)
class MedicinalProductContraindication {

	static Future<MedicinalProductContraindication> newInstance({
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
		CodeableConcept disease,
		CodeableConcept diseaseStatus,
		List<CodeableConcept> comorbidity,
		List<Reference> therapeuticIndication,
		List<MedicinalProductContraindication_OtherTherapy> otherTherapy,
		List<Population> population}) async {
	MedicinalProductContraindication newMedicinalProductContraindication = new MedicinalProductContraindication(
			id: await newId('MedicinalProductContraindication'),
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
			disease: disease,
			diseaseStatus: diseaseStatus,
			comorbidity: comorbidity,
			therapeuticIndication: therapeuticIndication,
			otherTherapy: otherTherapy,
			population: population);
	var medicinalProductContraindicationBox = await Hive.openBox<MedicinalProductContraindication>('MedicinalProductContraindicationBox');
	medicinalProductContraindicationBox.put(newMedicinalProductContraindication.id, newMedicinalProductContraindication);
	return newMedicinalProductContraindication;
}
  @HiveField(0)
  final String resourceType= 'MedicinalProductContraindication';
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
  CodeableConcept disease;
  @HiveField(13)
  CodeableConcept diseaseStatus;
  @HiveField(14)
  List<CodeableConcept> comorbidity;
  @HiveField(15)
  List<Reference> therapeuticIndication;
  @HiveField(16)
  List<MedicinalProductContraindication_OtherTherapy> otherTherapy;
  @HiveField(17)
  List<Population> population;

MedicinalProductContraindication(
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
    this.disease,
    this.diseaseStatus,
    this.comorbidity,
    this.therapeuticIndication,
    this.otherTherapy,
    this.population
    });

  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

	static Future<MedicinalProductContraindication_OtherTherapy> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept therapyRelationshipType,
		CodeableConcept medicationCodeableConcept,
		Reference medicationReference}) async {
	MedicinalProductContraindication_OtherTherapy newMedicinalProductContraindication_OtherTherapy = new MedicinalProductContraindication_OtherTherapy(
			id: await newId('MedicinalProductContraindication_OtherTherapy'),
			extension: extension,
			modifierExtension: modifierExtension,
			therapyRelationshipType: therapyRelationshipType,
			medicationCodeableConcept: medicationCodeableConcept,
			medicationReference: medicationReference);
	var medicinalProductContraindication_OtherTherapyBox = await Hive.openBox<MedicinalProductContraindication_OtherTherapy>('MedicinalProductContraindication_OtherTherapyBox');
	medicinalProductContraindication_OtherTherapyBox.put(newMedicinalProductContraindication_OtherTherapy.id, newMedicinalProductContraindication_OtherTherapy);
	return newMedicinalProductContraindication_OtherTherapy;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept therapyRelationshipType;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;

MedicinalProductContraindication_OtherTherapy(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.therapyRelationshipType,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductContraindication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindication_OtherTherapyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductContraindicationAdapter
    extends TypeAdapter<MedicinalProductContraindication> {
  @override
  final typeId = 138;

  @override
  MedicinalProductContraindication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductContraindication(
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
      disease: fields[12] as CodeableConcept,
      diseaseStatus: fields[13] as CodeableConcept,
      comorbidity: (fields[14] as List)?.cast<CodeableConcept>(),
      therapeuticIndication: (fields[15] as List)?.cast<Reference>(),
      otherTherapy: (fields[16] as List)
          ?.cast<MedicinalProductContraindication_OtherTherapy>(),
      population: (fields[17] as List)?.cast<Population>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductContraindication obj) {
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
      ..write(obj.subject)
      ..writeByte(12)
      ..write(obj.disease)
      ..writeByte(13)
      ..write(obj.diseaseStatus)
      ..writeByte(14)
      ..write(obj.comorbidity)
      ..writeByte(15)
      ..write(obj.therapeuticIndication)
      ..writeByte(16)
      ..write(obj.otherTherapy)
      ..writeByte(17)
      ..write(obj.population);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductContraindication _$MedicinalProductContraindicationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductContraindication(
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
    disease: json['disease'] == null
        ? null
        : CodeableConcept.fromJson(json['disease'] as Map<String, dynamic>),
    diseaseStatus: json['diseaseStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseStatus'] as Map<String, dynamic>),
    comorbidity: (json['comorbidity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    therapeuticIndication: (json['therapeuticIndication'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    otherTherapy: (json['otherTherapy'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductContraindication_OtherTherapy.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductContraindicationToJson(
        MedicinalProductContraindication instance) =>
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
      'disease': instance.disease?.toJson(),
      'diseaseStatus': instance.diseaseStatus?.toJson(),
      'comorbidity': instance.comorbidity?.map((e) => e?.toJson())?.toList(),
      'therapeuticIndication':
          instance.therapeuticIndication?.map((e) => e?.toJson())?.toList(),
      'otherTherapy': instance.otherTherapy?.map((e) => e?.toJson())?.toList(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductContraindication_OtherTherapy
    _$MedicinalProductContraindication_OtherTherapyFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductContraindication_OtherTherapy(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    therapyRelationshipType: json['therapyRelationshipType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['therapyRelationshipType'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductContraindication_OtherTherapyToJson(
        MedicinalProductContraindication_OtherTherapy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'therapyRelationshipType': instance.therapyRelationshipType?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
    };
