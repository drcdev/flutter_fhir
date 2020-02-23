import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicinalProductIndication {
  static Future<MedicinalProductIndication> newInstance({
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
    List<Reference> subject,
    CodeableConcept diseaseSymptomProcedure,
    CodeableConcept diseaseStatus,
    List<CodeableConcept> comorbidity,
    CodeableConcept intendedEffect,
    Quantity duration,
    List<MedicinalProductIndication_OtherTherapy> otherTherapy,
    List<Reference> undesirableEffect,
    List<Population> population,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIndication newMedicinalProductIndication =
        new MedicinalProductIndication(
      resourceType: 'MedicinalProductIndication',
      id: id ?? await fhirDb.newResourceId('MedicinalProductIndication'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      subject: subject,
      diseaseSymptomProcedure: diseaseSymptomProcedure,
      diseaseStatus: diseaseStatus,
      comorbidity: comorbidity,
      intendedEffect: intendedEffect,
      duration: duration,
      otherTherapy: otherTherapy,
      undesirableEffect: undesirableEffect,
      population: population,
    );
    newMedicinalProductIndication.meta.createdAt = DateTime.now();
    newMedicinalProductIndication.meta.lastUpdated =
        newMedicinalProductIndication.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicinalProductIndication);
    return newMedicinalProductIndication;
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
  String resourceType = 'MedicinalProductIndication';
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
  CodeableConcept diseaseSymptomProcedure;
  @HiveField(13)
  CodeableConcept diseaseStatus;
  @HiveField(14)
  List<CodeableConcept> comorbidity;
  @HiveField(15)
  CodeableConcept intendedEffect;
  @HiveField(16)
  Quantity duration;
  @HiveField(17)
  List<MedicinalProductIndication_OtherTherapy> otherTherapy;
  @HiveField(18)
  List<Reference> undesirableEffect;
  @HiveField(19)
  List<Population> population;

  MedicinalProductIndication({
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
    this.subject,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.duration,
    this.otherTherapy,
    this.undesirableEffect,
    this.population,
  });

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndicationToJson(this);
}

class MedicinalProductIndication_OtherTherapy {
  static Future<MedicinalProductIndication_OtherTherapy> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept therapyRelationshipType,
    CodeableConcept medicationCodeableConcept,
    Reference medicationReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductIndication_OtherTherapy
        newMedicinalProductIndication_OtherTherapy =
        new MedicinalProductIndication_OtherTherapy(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      therapyRelationshipType: therapyRelationshipType,
      medicationCodeableConcept: medicationCodeableConcept,
      medicationReference: medicationReference,
    );
    return newMedicinalProductIndication_OtherTherapy;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept therapyRelationshipType;
  @HiveField(4)
  CodeableConcept medicationCodeableConcept;
  @HiveField(5)
  Reference medicationReference;

  MedicinalProductIndication_OtherTherapy({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.therapyRelationshipType,
    this.medicationCodeableConcept,
    this.medicationReference,
  });

  factory MedicinalProductIndication_OtherTherapy.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductIndication_OtherTherapyToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIndication _$MedicinalProductIndicationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIndication(
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
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diseaseSymptomProcedure: json['diseaseSymptomProcedure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseSymptomProcedure'] as Map<String, dynamic>),
    diseaseStatus: json['diseaseStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseStatus'] as Map<String, dynamic>),
    comorbidity: (json['comorbidity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intendedEffect: json['intendedEffect'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intendedEffect'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Quantity.fromJson(json['duration'] as Map<String, dynamic>),
    otherTherapy: (json['otherTherapy'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIndication_OtherTherapy.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    undesirableEffect: (json['undesirableEffect'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIndicationToJson(
    MedicinalProductIndication instance) {
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
  writeNotNull('subject', instance.subject?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'diseaseSymptomProcedure', instance.diseaseSymptomProcedure?.toJson());
  writeNotNull('diseaseStatus', instance.diseaseStatus?.toJson());
  writeNotNull(
      'comorbidity', instance.comorbidity?.map((e) => e?.toJson())?.toList());
  writeNotNull('intendedEffect', instance.intendedEffect?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  writeNotNull(
      'otherTherapy', instance.otherTherapy?.map((e) => e?.toJson())?.toList());
  writeNotNull('undesirableEffect',
      instance.undesirableEffect?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'population', instance.population?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicinalProductIndication_OtherTherapy
    _$MedicinalProductIndication_OtherTherapyFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIndication_OtherTherapy(
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

Map<String, dynamic> _$MedicinalProductIndication_OtherTherapyToJson(
    MedicinalProductIndication_OtherTherapy instance) {
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
  writeNotNull(
      'therapyRelationshipType', instance.therapyRelationshipType?.toJson());
  writeNotNull('medicationCodeableConcept',
      instance.medicationCodeableConcept?.toJson());
  writeNotNull('medicationReference', instance.medicationReference?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductIndicationAdapter
    extends TypeAdapter<MedicinalProductIndication> {
  @override
  MedicinalProductIndication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIndication(
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
      subject: (fields[11] as List)?.cast<Reference>(),
      diseaseSymptomProcedure: fields[12] as CodeableConcept,
      diseaseStatus: fields[13] as CodeableConcept,
      comorbidity: (fields[14] as List)?.cast<CodeableConcept>(),
      intendedEffect: fields[15] as CodeableConcept,
      duration: fields[16] as Quantity,
      otherTherapy:
          (fields[17] as List)?.cast<MedicinalProductIndication_OtherTherapy>(),
      undesirableEffect: (fields[18] as List)?.cast<Reference>(),
      population: (fields[19] as List)?.cast<Population>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIndication obj) {
    writer
      ..writeByte(20)
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
      ..write(obj.diseaseSymptomProcedure)
      ..writeByte(13)
      ..write(obj.diseaseStatus)
      ..writeByte(14)
      ..write(obj.comorbidity)
      ..writeByte(15)
      ..write(obj.intendedEffect)
      ..writeByte(16)
      ..write(obj.duration)
      ..writeByte(17)
      ..write(obj.otherTherapy)
      ..writeByte(18)
      ..write(obj.undesirableEffect)
      ..writeByte(19)
      ..write(obj.population);
  }
}

class MedicinalProductIndication_OtherTherapyAdapter
    extends TypeAdapter<MedicinalProductIndication_OtherTherapy> {
  @override
  MedicinalProductIndication_OtherTherapy read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIndication_OtherTherapy(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      therapyRelationshipType: fields[3] as CodeableConcept,
      medicationCodeableConcept: fields[4] as CodeableConcept,
      medicationReference: fields[5] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIndication_OtherTherapy obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.therapyRelationshipType)
      ..writeByte(4)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(5)
      ..write(obj.medicationReference);
  }
}
