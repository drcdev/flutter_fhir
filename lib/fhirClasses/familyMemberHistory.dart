import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class FamilyMemberHistory {
  static Future<FamilyMemberHistory> newInstance({
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
    List<String> instantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    String status,
    Element elementStatus,
    CodeableConcept dataAbsentReason,
    Reference patient,
    DateTime date,
    Element elementDate,
    String name,
    Element elementName,
    CodeableConcept relationship,
    CodeableConcept sex,
    Period bornPeriod,
    String bornDate,
    Element elementBornDate,
    String bornString,
    Element elementBornString,
    Age ageAge,
    Range ageRange,
    String ageString,
    Element elementAgeString,
    bool estimatedAge,
    Element elementEstimatedAge,
    bool deceasedBoolean,
    Element elementDeceasedBoolean,
    Age deceasedAge,
    Range deceasedRange,
    String deceasedDate,
    Element elementDeceasedDate,
    String deceasedString,
    Element elementDeceasedString,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Annotation> note,
    List<FamilyMemberHistory_Condition> condition,
  }) async {
    var fhirDb = new DatabaseHelper();
    FamilyMemberHistory newFamilyMemberHistory = new FamilyMemberHistory(
      resourceType: 'FamilyMemberHistory',
      id: id ?? await fhirDb.newResourceId('FamilyMemberHistory'),
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
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      status: status,
      elementStatus: elementStatus,
      dataAbsentReason: dataAbsentReason,
      patient: patient,
      date: date,
      elementDate: elementDate,
      name: name,
      elementName: elementName,
      relationship: relationship,
      sex: sex,
      bornPeriod: bornPeriod,
      bornDate: bornDate,
      elementBornDate: elementBornDate,
      bornString: bornString,
      elementBornString: elementBornString,
      ageAge: ageAge,
      ageRange: ageRange,
      ageString: ageString,
      elementAgeString: elementAgeString,
      estimatedAge: estimatedAge,
      elementEstimatedAge: elementEstimatedAge,
      deceasedBoolean: deceasedBoolean,
      elementDeceasedBoolean: elementDeceasedBoolean,
      deceasedAge: deceasedAge,
      deceasedRange: deceasedRange,
      deceasedDate: deceasedDate,
      elementDeceasedDate: elementDeceasedDate,
      deceasedString: deceasedString,
      elementDeceasedString: elementDeceasedString,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      note: note,
      condition: condition,
    );
    newFamilyMemberHistory.meta.createdAt = DateTime.now();
    newFamilyMemberHistory.meta.lastUpdated =
        newFamilyMemberHistory.meta.createdAt;
    int saved = await fhirDb.saveResource(newFamilyMemberHistory);
    return newFamilyMemberHistory;
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
  String resourceType = 'FamilyMemberHistory';
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
  List<String> instantiatesCanonical;
  @HiveField(13)
  List<String> instantiatesUri;
  @HiveField(14)
  List<Element> elementInstantiatesUri;
  @HiveField(15)
  String status;
  @HiveField(16)
  Element elementStatus;
  @HiveField(17)
  CodeableConcept dataAbsentReason;
  @HiveField(18)
  Reference patient;
  @HiveField(19)
  DateTime date;
  @HiveField(20)
  Element elementDate;
  @HiveField(21)
  String name;
  @HiveField(22)
  Element elementName;
  @HiveField(23)
  CodeableConcept relationship;
  @HiveField(24)
  CodeableConcept sex;
  @HiveField(25)
  Period bornPeriod;
  @HiveField(26)
  String bornDate;
  @HiveField(27)
  Element elementBornDate;
  @HiveField(28)
  String bornString;
  @HiveField(29)
  Element elementBornString;
  @HiveField(30)
  Age ageAge;
  @HiveField(31)
  Range ageRange;
  @HiveField(32)
  String ageString;
  @HiveField(33)
  Element elementAgeString;
  @HiveField(34)
  bool estimatedAge;
  @HiveField(35)
  Element elementEstimatedAge;
  @HiveField(36)
  bool deceasedBoolean;
  @HiveField(37)
  Element elementDeceasedBoolean;
  @HiveField(38)
  Age deceasedAge;
  @HiveField(39)
  Range deceasedRange;
  @HiveField(40)
  String deceasedDate;
  @HiveField(41)
  Element elementDeceasedDate;
  @HiveField(42)
  String deceasedString;
  @HiveField(43)
  Element elementDeceasedString;
  @HiveField(44)
  List<CodeableConcept> reasonCode;
  @HiveField(45)
  List<Reference> reasonReference;
  @HiveField(46)
  List<Annotation> note;
  @HiveField(47)
  List<FamilyMemberHistory_Condition> condition;

  FamilyMemberHistory({
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
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.status,
    this.elementStatus,
    this.dataAbsentReason,
    @required this.patient,
    this.date,
    this.elementDate,
    this.name,
    this.elementName,
    @required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.elementBornDate,
    this.bornString,
    this.elementBornString,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.elementAgeString,
    this.estimatedAge,
    this.elementEstimatedAge,
    this.deceasedBoolean,
    this.elementDeceasedBoolean,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.elementDeceasedDate,
    this.deceasedString,
    this.elementDeceasedString,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  });

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryToJson(this);
}

class FamilyMemberHistory_Condition {
  static Future<FamilyMemberHistory_Condition> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    CodeableConcept outcome,
    bool contributedToDeath,
    Element elementContributedToDeath,
    Age onsetAge,
    Range onsetRange,
    Period onsetPeriod,
    String onsetString,
    Element elementOnsetString,
    List<Annotation> note,
  }) async {
    var fhirDb = new DatabaseHelper();
    FamilyMemberHistory_Condition newFamilyMemberHistory_Condition =
        new FamilyMemberHistory_Condition(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      outcome: outcome,
      contributedToDeath: contributedToDeath,
      elementContributedToDeath: elementContributedToDeath,
      onsetAge: onsetAge,
      onsetRange: onsetRange,
      onsetPeriod: onsetPeriod,
      onsetString: onsetString,
      elementOnsetString: elementOnsetString,
      note: note,
    );
    return newFamilyMemberHistory_Condition;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept code;
  @HiveField(4)
  CodeableConcept outcome;
  @HiveField(5)
  bool contributedToDeath;
  @HiveField(6)
  Element elementContributedToDeath;
  @HiveField(7)
  Age onsetAge;
  @HiveField(8)
  Range onsetRange;
  @HiveField(9)
  Period onsetPeriod;
  @HiveField(10)
  String onsetString;
  @HiveField(11)
  Element elementOnsetString;
  @HiveField(12)
  List<Annotation> note;

  FamilyMemberHistory_Condition({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    this.outcome,
    this.contributedToDeath,
    this.elementContributedToDeath,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.elementOnsetString,
    this.note,
  });

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistory_ConditionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMemberHistory _$FamilyMemberHistoryFromJson(Map<String, dynamic> json) {
  return FamilyMemberHistory(
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
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    dataAbsentReason: json['dataAbsentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dataAbsentReason'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    sex: json['sex'] == null
        ? null
        : CodeableConcept.fromJson(json['sex'] as Map<String, dynamic>),
    bornPeriod: json['bornPeriod'] == null
        ? null
        : Period.fromJson(json['bornPeriod'] as Map<String, dynamic>),
    bornDate: json['bornDate'] as String,
    elementBornDate: json['elementBornDate'] == null
        ? null
        : Element.fromJson(json['elementBornDate'] as Map<String, dynamic>),
    bornString: json['bornString'] as String,
    elementBornString: json['elementBornString'] == null
        ? null
        : Element.fromJson(json['elementBornString'] as Map<String, dynamic>),
    ageAge: json['ageAge'] == null
        ? null
        : Age.fromJson(json['ageAge'] as Map<String, dynamic>),
    ageRange: json['ageRange'] == null
        ? null
        : Range.fromJson(json['ageRange'] as Map<String, dynamic>),
    ageString: json['ageString'] as String,
    elementAgeString: json['elementAgeString'] == null
        ? null
        : Element.fromJson(json['elementAgeString'] as Map<String, dynamic>),
    estimatedAge: json['estimatedAge'] as bool,
    elementEstimatedAge: json['elementEstimatedAge'] == null
        ? null
        : Element.fromJson(json['elementEstimatedAge'] as Map<String, dynamic>),
    deceasedBoolean: json['deceasedBoolean'] as bool,
    elementDeceasedBoolean: json['elementDeceasedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedBoolean'] as Map<String, dynamic>),
    deceasedAge: json['deceasedAge'] == null
        ? null
        : Age.fromJson(json['deceasedAge'] as Map<String, dynamic>),
    deceasedRange: json['deceasedRange'] == null
        ? null
        : Range.fromJson(json['deceasedRange'] as Map<String, dynamic>),
    deceasedDate: json['deceasedDate'] as String,
    elementDeceasedDate: json['elementDeceasedDate'] == null
        ? null
        : Element.fromJson(json['elementDeceasedDate'] as Map<String, dynamic>),
    deceasedString: json['deceasedString'] as String,
    elementDeceasedString: json['elementDeceasedString'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedString'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : FamilyMemberHistory_Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistoryToJson(FamilyMemberHistory instance) {
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
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('dataAbsentReason', instance.dataAbsentReason?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('sex', instance.sex?.toJson());
  writeNotNull('bornPeriod', instance.bornPeriod?.toJson());
  writeNotNull('bornDate', instance.bornDate);
  writeNotNull('elementBornDate', instance.elementBornDate?.toJson());
  writeNotNull('bornString', instance.bornString);
  writeNotNull('elementBornString', instance.elementBornString?.toJson());
  writeNotNull('ageAge', instance.ageAge?.toJson());
  writeNotNull('ageRange', instance.ageRange?.toJson());
  writeNotNull('ageString', instance.ageString);
  writeNotNull('elementAgeString', instance.elementAgeString?.toJson());
  writeNotNull('estimatedAge', instance.estimatedAge);
  writeNotNull('elementEstimatedAge', instance.elementEstimatedAge?.toJson());
  writeNotNull('deceasedBoolean', instance.deceasedBoolean);
  writeNotNull(
      'elementDeceasedBoolean', instance.elementDeceasedBoolean?.toJson());
  writeNotNull('deceasedAge', instance.deceasedAge?.toJson());
  writeNotNull('deceasedRange', instance.deceasedRange?.toJson());
  writeNotNull('deceasedDate', instance.deceasedDate);
  writeNotNull('elementDeceasedDate', instance.elementDeceasedDate?.toJson());
  writeNotNull('deceasedString', instance.deceasedString);
  writeNotNull(
      'elementDeceasedString', instance.elementDeceasedString?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'condition', instance.condition?.map((e) => e?.toJson())?.toList());
  return val;
}

FamilyMemberHistory_Condition _$FamilyMemberHistory_ConditionFromJson(
    Map<String, dynamic> json) {
  return FamilyMemberHistory_Condition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    contributedToDeath: json['contributedToDeath'] as bool,
    elementContributedToDeath: json['elementContributedToDeath'] == null
        ? null
        : Element.fromJson(
            json['elementContributedToDeath'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistory_ConditionToJson(
    FamilyMemberHistory_Condition instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('outcome', instance.outcome?.toJson());
  writeNotNull('contributedToDeath', instance.contributedToDeath);
  writeNotNull('elementContributedToDeath',
      instance.elementContributedToDeath?.toJson());
  writeNotNull('onsetAge', instance.onsetAge?.toJson());
  writeNotNull('onsetRange', instance.onsetRange?.toJson());
  writeNotNull('onsetPeriod', instance.onsetPeriod?.toJson());
  writeNotNull('onsetString', instance.onsetString);
  writeNotNull('elementOnsetString', instance.elementOnsetString?.toJson());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FamilyMemberHistoryAdapter extends TypeAdapter<FamilyMemberHistory> {
  @override
  FamilyMemberHistory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FamilyMemberHistory(
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
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      dataAbsentReason: fields[17] as CodeableConcept,
      patient: fields[18] as Reference,
      date: fields[19] as DateTime,
      elementDate: fields[20] as Element,
      name: fields[21] as String,
      elementName: fields[22] as Element,
      relationship: fields[23] as CodeableConcept,
      sex: fields[24] as CodeableConcept,
      bornPeriod: fields[25] as Period,
      bornDate: fields[26] as String,
      elementBornDate: fields[27] as Element,
      bornString: fields[28] as String,
      elementBornString: fields[29] as Element,
      ageAge: fields[30] as Age,
      ageRange: fields[31] as Range,
      ageString: fields[32] as String,
      elementAgeString: fields[33] as Element,
      estimatedAge: fields[34] as bool,
      elementEstimatedAge: fields[35] as Element,
      deceasedBoolean: fields[36] as bool,
      elementDeceasedBoolean: fields[37] as Element,
      deceasedAge: fields[38] as Age,
      deceasedRange: fields[39] as Range,
      deceasedDate: fields[40] as String,
      elementDeceasedDate: fields[41] as Element,
      deceasedString: fields[42] as String,
      elementDeceasedString: fields[43] as Element,
      reasonCode: (fields[44] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[45] as List)?.cast<Reference>(),
      note: (fields[46] as List)?.cast<Annotation>(),
      condition: (fields[47] as List)?.cast<FamilyMemberHistory_Condition>(),
    );
  }

  @override
  void write(BinaryWriter writer, FamilyMemberHistory obj) {
    writer
      ..writeByte(48)
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
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.dataAbsentReason)
      ..writeByte(18)
      ..write(obj.patient)
      ..writeByte(19)
      ..write(obj.date)
      ..writeByte(20)
      ..write(obj.elementDate)
      ..writeByte(21)
      ..write(obj.name)
      ..writeByte(22)
      ..write(obj.elementName)
      ..writeByte(23)
      ..write(obj.relationship)
      ..writeByte(24)
      ..write(obj.sex)
      ..writeByte(25)
      ..write(obj.bornPeriod)
      ..writeByte(26)
      ..write(obj.bornDate)
      ..writeByte(27)
      ..write(obj.elementBornDate)
      ..writeByte(28)
      ..write(obj.bornString)
      ..writeByte(29)
      ..write(obj.elementBornString)
      ..writeByte(30)
      ..write(obj.ageAge)
      ..writeByte(31)
      ..write(obj.ageRange)
      ..writeByte(32)
      ..write(obj.ageString)
      ..writeByte(33)
      ..write(obj.elementAgeString)
      ..writeByte(34)
      ..write(obj.estimatedAge)
      ..writeByte(35)
      ..write(obj.elementEstimatedAge)
      ..writeByte(36)
      ..write(obj.deceasedBoolean)
      ..writeByte(37)
      ..write(obj.elementDeceasedBoolean)
      ..writeByte(38)
      ..write(obj.deceasedAge)
      ..writeByte(39)
      ..write(obj.deceasedRange)
      ..writeByte(40)
      ..write(obj.deceasedDate)
      ..writeByte(41)
      ..write(obj.elementDeceasedDate)
      ..writeByte(42)
      ..write(obj.deceasedString)
      ..writeByte(43)
      ..write(obj.elementDeceasedString)
      ..writeByte(44)
      ..write(obj.reasonCode)
      ..writeByte(45)
      ..write(obj.reasonReference)
      ..writeByte(46)
      ..write(obj.note)
      ..writeByte(47)
      ..write(obj.condition);
  }
}

class FamilyMemberHistory_ConditionAdapter
    extends TypeAdapter<FamilyMemberHistory_Condition> {
  @override
  FamilyMemberHistory_Condition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FamilyMemberHistory_Condition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      outcome: fields[4] as CodeableConcept,
      contributedToDeath: fields[5] as bool,
      elementContributedToDeath: fields[6] as Element,
      onsetAge: fields[7] as Age,
      onsetRange: fields[8] as Range,
      onsetPeriod: fields[9] as Period,
      onsetString: fields[10] as String,
      elementOnsetString: fields[11] as Element,
      note: (fields[12] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, FamilyMemberHistory_Condition obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.outcome)
      ..writeByte(5)
      ..write(obj.contributedToDeath)
      ..writeByte(6)
      ..write(obj.elementContributedToDeath)
      ..writeByte(7)
      ..write(obj.onsetAge)
      ..writeByte(8)
      ..write(obj.onsetRange)
      ..writeByte(9)
      ..write(obj.onsetPeriod)
      ..writeByte(10)
      ..write(obj.onsetString)
      ..writeByte(11)
      ..write(obj.elementOnsetString)
      ..writeByte(12)
      ..write(obj.note);
  }
}
