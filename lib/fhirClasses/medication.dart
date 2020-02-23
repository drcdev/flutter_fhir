import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Medication {
  static Future<Medication> newInstance({
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
    List<Identifier> identifier,
    CodeableConcept code,
    String status,
    Element elementStatus,
    Reference manufacturer,
    CodeableConcept form,
    Ratio amount,
    List<Medication_Ingredient> ingredient,
    Medication_Batch batch,
  }) async {
    var fhirDb = new DatabaseHelper();
    Medication newMedication = new Medication(
      resourceType: 'Medication',
      id: id ?? await fhirDb.newResourceId('Medication'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      code: code,
      status: status,
      elementStatus: elementStatus,
      manufacturer: manufacturer,
      form: form,
      amount: amount,
      ingredient: ingredient,
      batch: batch,
    );
    newMedication.meta.createdAt = DateTime.now();
    newMedication.meta.lastUpdated = newMedication.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedication);
    return newMedication;
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
  String resourceType = 'Medication';
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
  List<Identifier> identifier;
  @HiveField(12)
  CodeableConcept code;
  @HiveField(13)
  String status;
  @HiveField(14)
  Element elementStatus;
  @HiveField(15)
  Reference manufacturer;
  @HiveField(16)
  CodeableConcept form;
  @HiveField(17)
  Ratio amount;
  @HiveField(18)
  List<Medication_Ingredient> ingredient;
  @HiveField(19)
  Medication_Batch batch;

  Medication({
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
    this.identifier,
    this.code,
    this.status,
    this.elementStatus,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
  });

  factory Medication.fromJson(Map<String, dynamic> json) =>
      _$MedicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}

class Medication_Ingredient {
  static Future<Medication_Ingredient> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept itemCodeableConcept,
    Reference itemReference,
    bool isActive,
    Element elementIsActive,
    Ratio strength,
  }) async {
    var fhirDb = new DatabaseHelper();
    Medication_Ingredient newMedication_Ingredient = new Medication_Ingredient(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemCodeableConcept: itemCodeableConcept,
      itemReference: itemReference,
      isActive: isActive,
      elementIsActive: elementIsActive,
      strength: strength,
    );
    return newMedication_Ingredient;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept itemCodeableConcept;
  @HiveField(4)
  Reference itemReference;
  @HiveField(5)
  bool isActive;
  @HiveField(6)
  Element elementIsActive;
  @HiveField(7)
  Ratio strength;

  Medication_Ingredient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.elementIsActive,
    this.strength,
  });

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$Medication_IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_IngredientToJson(this);
}

class Medication_Batch {
  static Future<Medication_Batch> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String lotNumber,
    Element elementLotNumber,
    DateTime expirationDate,
    Element elementExpirationDate,
  }) async {
    var fhirDb = new DatabaseHelper();
    Medication_Batch newMedication_Batch = new Medication_Batch(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      lotNumber: lotNumber,
      elementLotNumber: elementLotNumber,
      expirationDate: expirationDate,
      elementExpirationDate: elementExpirationDate,
    );
    return newMedication_Batch;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String lotNumber;
  @HiveField(4)
  Element elementLotNumber;
  @HiveField(5)
  DateTime expirationDate;
  @HiveField(6)
  Element elementExpirationDate;

  Medication_Batch({
    this.id,
    this.extension,
    this.modifierExtension,
    this.lotNumber,
    this.elementLotNumber,
    this.expirationDate,
    this.elementExpirationDate,
  });

  factory Medication_Batch.fromJson(Map<String, dynamic> json) =>
      _$Medication_BatchFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_BatchToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medication _$MedicationFromJson(Map<String, dynamic> json) {
  return Medication(
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Ratio.fromJson(json['amount'] as Map<String, dynamic>),
    ingredient: (json['ingredient'] as List)
        ?.map((e) => e == null
            ? null
            : Medication_Ingredient.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    batch: json['batch'] == null
        ? null
        : Medication_Batch.fromJson(json['batch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationToJson(Medication instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('manufacturer', instance.manufacturer?.toJson());
  writeNotNull('form', instance.form?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull(
      'ingredient', instance.ingredient?.map((e) => e?.toJson())?.toList());
  writeNotNull('batch', instance.batch?.toJson());
  return val;
}

Medication_Ingredient _$Medication_IngredientFromJson(
    Map<String, dynamic> json) {
  return Medication_Ingredient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    isActive: json['isActive'] as bool,
    elementIsActive: json['elementIsActive'] == null
        ? null
        : Element.fromJson(json['elementIsActive'] as Map<String, dynamic>),
    strength: json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Medication_IngredientToJson(
    Medication_Ingredient instance) {
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
  writeNotNull('itemCodeableConcept', instance.itemCodeableConcept?.toJson());
  writeNotNull('itemReference', instance.itemReference?.toJson());
  writeNotNull('isActive', instance.isActive);
  writeNotNull('elementIsActive', instance.elementIsActive?.toJson());
  writeNotNull('strength', instance.strength?.toJson());
  return val;
}

Medication_Batch _$Medication_BatchFromJson(Map<String, dynamic> json) {
  return Medication_Batch(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lotNumber: json['lotNumber'] as String,
    elementLotNumber: json['elementLotNumber'] == null
        ? null
        : Element.fromJson(json['elementLotNumber'] as Map<String, dynamic>),
    expirationDate: json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate'] as String),
    elementExpirationDate: json['elementExpirationDate'] == null
        ? null
        : Element.fromJson(
            json['elementExpirationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Medication_BatchToJson(Medication_Batch instance) {
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
  writeNotNull('lotNumber', instance.lotNumber);
  writeNotNull('elementLotNumber', instance.elementLotNumber?.toJson());
  writeNotNull('expirationDate', instance.expirationDate?.toIso8601String());
  writeNotNull(
      'elementExpirationDate', instance.elementExpirationDate?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationAdapter extends TypeAdapter<Medication> {
  @override
  Medication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication(
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      code: fields[12] as CodeableConcept,
      status: fields[13] as String,
      elementStatus: fields[14] as Element,
      manufacturer: fields[15] as Reference,
      form: fields[16] as CodeableConcept,
      amount: fields[17] as Ratio,
      ingredient: (fields[18] as List)?.cast<Medication_Ingredient>(),
      batch: fields[19] as Medication_Batch,
    );
  }

  @override
  void write(BinaryWriter writer, Medication obj) {
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.code)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.elementStatus)
      ..writeByte(15)
      ..write(obj.manufacturer)
      ..writeByte(16)
      ..write(obj.form)
      ..writeByte(17)
      ..write(obj.amount)
      ..writeByte(18)
      ..write(obj.ingredient)
      ..writeByte(19)
      ..write(obj.batch);
  }
}

class Medication_IngredientAdapter extends TypeAdapter<Medication_Ingredient> {
  @override
  Medication_Ingredient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication_Ingredient(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemCodeableConcept: fields[3] as CodeableConcept,
      itemReference: fields[4] as Reference,
      isActive: fields[5] as bool,
      elementIsActive: fields[6] as Element,
      strength: fields[7] as Ratio,
    );
  }

  @override
  void write(BinaryWriter writer, Medication_Ingredient obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemCodeableConcept)
      ..writeByte(4)
      ..write(obj.itemReference)
      ..writeByte(5)
      ..write(obj.isActive)
      ..writeByte(6)
      ..write(obj.elementIsActive)
      ..writeByte(7)
      ..write(obj.strength);
  }
}

class Medication_BatchAdapter extends TypeAdapter<Medication_Batch> {
  @override
  Medication_Batch read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication_Batch(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      lotNumber: fields[3] as String,
      elementLotNumber: fields[4] as Element,
      expirationDate: fields[5] as DateTime,
      elementExpirationDate: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Medication_Batch obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.lotNumber)
      ..writeByte(4)
      ..write(obj.elementLotNumber)
      ..writeByte(5)
      ..write(obj.expirationDate)
      ..writeByte(6)
      ..write(obj.elementExpirationDate);
  }
}
