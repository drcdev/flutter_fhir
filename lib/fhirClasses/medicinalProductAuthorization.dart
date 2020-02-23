import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicinalProductAuthorization {
  static Future<MedicinalProductAuthorization> newInstance({
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
    Reference subject,
    List<CodeableConcept> country,
    List<CodeableConcept> jurisdiction,
    CodeableConcept status,
    DateTime statusDate,
    Element elementStatusDate,
    DateTime restoreDate,
    Element elementRestoreDate,
    Period validityPeriod,
    Period dataExclusivityPeriod,
    DateTime dateOfFirstAuthorization,
    Element elementDateOfFirstAuthorization,
    DateTime internationalBirthDate,
    Element elementInternationalBirthDate,
    CodeableConcept legalBasis,
    List<MedicinalProductAuthorization_JurisdictionalAuthorization>
        jurisdictionalAuthorization,
    Reference holder,
    Reference regulator,
    MedicinalProductAuthorization_Procedure procedure,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductAuthorization newMedicinalProductAuthorization =
        new MedicinalProductAuthorization(
      resourceType: 'MedicinalProductAuthorization',
      id: id ?? await fhirDb.newResourceId('MedicinalProductAuthorization'),
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
      subject: subject,
      country: country,
      jurisdiction: jurisdiction,
      status: status,
      statusDate: statusDate,
      elementStatusDate: elementStatusDate,
      restoreDate: restoreDate,
      elementRestoreDate: elementRestoreDate,
      validityPeriod: validityPeriod,
      dataExclusivityPeriod: dataExclusivityPeriod,
      dateOfFirstAuthorization: dateOfFirstAuthorization,
      elementDateOfFirstAuthorization: elementDateOfFirstAuthorization,
      internationalBirthDate: internationalBirthDate,
      elementInternationalBirthDate: elementInternationalBirthDate,
      legalBasis: legalBasis,
      jurisdictionalAuthorization: jurisdictionalAuthorization,
      holder: holder,
      regulator: regulator,
      procedure: procedure,
    );
    newMedicinalProductAuthorization.meta.createdAt = DateTime.now();
    newMedicinalProductAuthorization.meta.lastUpdated =
        newMedicinalProductAuthorization.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicinalProductAuthorization);
    return newMedicinalProductAuthorization;
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
  String resourceType = 'MedicinalProductAuthorization';
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
  Reference subject;
  @HiveField(13)
  List<CodeableConcept> country;
  @HiveField(14)
  List<CodeableConcept> jurisdiction;
  @HiveField(15)
  CodeableConcept status;
  @HiveField(16)
  DateTime statusDate;
  @HiveField(17)
  Element elementStatusDate;
  @HiveField(18)
  DateTime restoreDate;
  @HiveField(19)
  Element elementRestoreDate;
  @HiveField(20)
  Period validityPeriod;
  @HiveField(21)
  Period dataExclusivityPeriod;
  @HiveField(22)
  DateTime dateOfFirstAuthorization;
  @HiveField(23)
  Element elementDateOfFirstAuthorization;
  @HiveField(24)
  DateTime internationalBirthDate;
  @HiveField(25)
  Element elementInternationalBirthDate;
  @HiveField(26)
  CodeableConcept legalBasis;
  @HiveField(27)
  List<MedicinalProductAuthorization_JurisdictionalAuthorization>
      jurisdictionalAuthorization;
  @HiveField(28)
  Reference holder;
  @HiveField(29)
  Reference regulator;
  @HiveField(30)
  MedicinalProductAuthorization_Procedure procedure;

  MedicinalProductAuthorization({
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
    this.subject,
    this.country,
    this.jurisdiction,
    this.status,
    this.statusDate,
    this.elementStatusDate,
    this.restoreDate,
    this.elementRestoreDate,
    this.validityPeriod,
    this.dataExclusivityPeriod,
    this.dateOfFirstAuthorization,
    this.elementDateOfFirstAuthorization,
    this.internationalBirthDate,
    this.elementInternationalBirthDate,
    this.legalBasis,
    this.jurisdictionalAuthorization,
    this.holder,
    this.regulator,
    this.procedure,
  });

  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorizationToJson(this);
}

class MedicinalProductAuthorization_JurisdictionalAuthorization {
  static Future<MedicinalProductAuthorization_JurisdictionalAuthorization>
      newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    CodeableConcept country,
    List<CodeableConcept> jurisdiction,
    CodeableConcept legalStatusOfSupply,
    Period validityPeriod,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductAuthorization_JurisdictionalAuthorization
        newMedicinalProductAuthorization_JurisdictionalAuthorization =
        new MedicinalProductAuthorization_JurisdictionalAuthorization(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      country: country,
      jurisdiction: jurisdiction,
      legalStatusOfSupply: legalStatusOfSupply,
      validityPeriod: validityPeriod,
    );
    return newMedicinalProductAuthorization_JurisdictionalAuthorization;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<Identifier> identifier;
  @HiveField(4)
  CodeableConcept country;
  @HiveField(5)
  List<CodeableConcept> jurisdiction;
  @HiveField(6)
  CodeableConcept legalStatusOfSupply;
  @HiveField(7)
  Period validityPeriod;

  MedicinalProductAuthorization_JurisdictionalAuthorization({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.country,
    this.jurisdiction,
    this.legalStatusOfSupply,
    this.validityPeriod,
  });

  factory MedicinalProductAuthorization_JurisdictionalAuthorization.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(this);
}

class MedicinalProductAuthorization_Procedure {
  static Future<MedicinalProductAuthorization_Procedure> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Identifier identifier,
    CodeableConcept type,
    Period datePeriod,
    String dateDateTime,
    Element elementDateDateTime,
    List<MedicinalProductAuthorization_Procedure> application,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicinalProductAuthorization_Procedure
        newMedicinalProductAuthorization_Procedure =
        new MedicinalProductAuthorization_Procedure(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      type: type,
      datePeriod: datePeriod,
      dateDateTime: dateDateTime,
      elementDateDateTime: elementDateDateTime,
      application: application,
    );
    return newMedicinalProductAuthorization_Procedure;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Identifier identifier;
  @HiveField(4)
  CodeableConcept type;
  @HiveField(5)
  Period datePeriod;
  @HiveField(6)
  String dateDateTime;
  @HiveField(7)
  Element elementDateDateTime;
  @HiveField(8)
  List<MedicinalProductAuthorization_Procedure> application;

  MedicinalProductAuthorization_Procedure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    @required this.type,
    this.datePeriod,
    this.dateDateTime,
    this.elementDateDateTime,
    this.application,
  });

  factory MedicinalProductAuthorization_Procedure.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductAuthorization_ProcedureFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicinalProductAuthorization_ProcedureToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductAuthorization _$MedicinalProductAuthorizationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductAuthorization(
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
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    statusDate: json['statusDate'] == null
        ? null
        : DateTime.parse(json['statusDate'] as String),
    elementStatusDate: json['elementStatusDate'] == null
        ? null
        : Element.fromJson(json['elementStatusDate'] as Map<String, dynamic>),
    restoreDate: json['restoreDate'] == null
        ? null
        : DateTime.parse(json['restoreDate'] as String),
    elementRestoreDate: json['elementRestoreDate'] == null
        ? null
        : Element.fromJson(json['elementRestoreDate'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
    dataExclusivityPeriod: json['dataExclusivityPeriod'] == null
        ? null
        : Period.fromJson(
            json['dataExclusivityPeriod'] as Map<String, dynamic>),
    dateOfFirstAuthorization: json['dateOfFirstAuthorization'] == null
        ? null
        : DateTime.parse(json['dateOfFirstAuthorization'] as String),
    elementDateOfFirstAuthorization: json['elementDateOfFirstAuthorization'] ==
            null
        ? null
        : Element.fromJson(
            json['elementDateOfFirstAuthorization'] as Map<String, dynamic>),
    internationalBirthDate: json['internationalBirthDate'] == null
        ? null
        : DateTime.parse(json['internationalBirthDate'] as String),
    elementInternationalBirthDate: json['elementInternationalBirthDate'] == null
        ? null
        : Element.fromJson(
            json['elementInternationalBirthDate'] as Map<String, dynamic>),
    legalBasis: json['legalBasis'] == null
        ? null
        : CodeableConcept.fromJson(json['legalBasis'] as Map<String, dynamic>),
    jurisdictionalAuthorization: (json['jurisdictionalAuthorization'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductAuthorization_JurisdictionalAuthorization
                .fromJson(e as Map<String, dynamic>))
        ?.toList(),
    holder: json['holder'] == null
        ? null
        : Reference.fromJson(json['holder'] as Map<String, dynamic>),
    regulator: json['regulator'] == null
        ? null
        : Reference.fromJson(json['regulator'] as Map<String, dynamic>),
    procedure: json['procedure'] == null
        ? null
        : MedicinalProductAuthorization_Procedure.fromJson(
            json['procedure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductAuthorizationToJson(
    MedicinalProductAuthorization instance) {
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
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('country', instance.country?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('statusDate', instance.statusDate?.toIso8601String());
  writeNotNull('elementStatusDate', instance.elementStatusDate?.toJson());
  writeNotNull('restoreDate', instance.restoreDate?.toIso8601String());
  writeNotNull('elementRestoreDate', instance.elementRestoreDate?.toJson());
  writeNotNull('validityPeriod', instance.validityPeriod?.toJson());
  writeNotNull(
      'dataExclusivityPeriod', instance.dataExclusivityPeriod?.toJson());
  writeNotNull('dateOfFirstAuthorization',
      instance.dateOfFirstAuthorization?.toIso8601String());
  writeNotNull('elementDateOfFirstAuthorization',
      instance.elementDateOfFirstAuthorization?.toJson());
  writeNotNull('internationalBirthDate',
      instance.internationalBirthDate?.toIso8601String());
  writeNotNull('elementInternationalBirthDate',
      instance.elementInternationalBirthDate?.toJson());
  writeNotNull('legalBasis', instance.legalBasis?.toJson());
  writeNotNull('jurisdictionalAuthorization',
      instance.jurisdictionalAuthorization?.map((e) => e?.toJson())?.toList());
  writeNotNull('holder', instance.holder?.toJson());
  writeNotNull('regulator', instance.regulator?.toJson());
  writeNotNull('procedure', instance.procedure?.toJson());
  return val;
}

MedicinalProductAuthorization_JurisdictionalAuthorization
    _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductAuthorization_JurisdictionalAuthorization(
    id: json['id'] as String,
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
    country: json['country'] == null
        ? null
        : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    legalStatusOfSupply: json['legalStatusOfSupply'] == null
        ? null
        : CodeableConcept.fromJson(
            json['legalStatusOfSupply'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(
        MedicinalProductAuthorization_JurisdictionalAuthorization instance) {
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
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('country', instance.country?.toJson());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('legalStatusOfSupply', instance.legalStatusOfSupply?.toJson());
  writeNotNull('validityPeriod', instance.validityPeriod?.toJson());
  return val;
}

MedicinalProductAuthorization_Procedure
    _$MedicinalProductAuthorization_ProcedureFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductAuthorization_Procedure(
    id: json['id'] as String,
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    datePeriod: json['datePeriod'] == null
        ? null
        : Period.fromJson(json['datePeriod'] as Map<String, dynamic>),
    dateDateTime: json['dateDateTime'] as String,
    elementDateDateTime: json['elementDateDateTime'] == null
        ? null
        : Element.fromJson(json['elementDateDateTime'] as Map<String, dynamic>),
    application: (json['application'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductAuthorization_Procedure.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductAuthorization_ProcedureToJson(
    MedicinalProductAuthorization_Procedure instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('datePeriod', instance.datePeriod?.toJson());
  writeNotNull('dateDateTime', instance.dateDateTime);
  writeNotNull('elementDateDateTime', instance.elementDateDateTime?.toJson());
  writeNotNull(
      'application', instance.application?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductAuthorizationAdapter
    extends TypeAdapter<MedicinalProductAuthorization> {
  @override
  MedicinalProductAuthorization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductAuthorization(
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
      subject: fields[12] as Reference,
      country: (fields[13] as List)?.cast<CodeableConcept>(),
      jurisdiction: (fields[14] as List)?.cast<CodeableConcept>(),
      status: fields[15] as CodeableConcept,
      statusDate: fields[16] as DateTime,
      elementStatusDate: fields[17] as Element,
      restoreDate: fields[18] as DateTime,
      elementRestoreDate: fields[19] as Element,
      validityPeriod: fields[20] as Period,
      dataExclusivityPeriod: fields[21] as Period,
      dateOfFirstAuthorization: fields[22] as DateTime,
      elementDateOfFirstAuthorization: fields[23] as Element,
      internationalBirthDate: fields[24] as DateTime,
      elementInternationalBirthDate: fields[25] as Element,
      legalBasis: fields[26] as CodeableConcept,
      jurisdictionalAuthorization: (fields[27] as List)
          ?.cast<MedicinalProductAuthorization_JurisdictionalAuthorization>(),
      holder: fields[28] as Reference,
      regulator: fields[29] as Reference,
      procedure: fields[30] as MedicinalProductAuthorization_Procedure,
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductAuthorization obj) {
    writer
      ..writeByte(31)
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
      ..write(obj.subject)
      ..writeByte(13)
      ..write(obj.country)
      ..writeByte(14)
      ..write(obj.jurisdiction)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.statusDate)
      ..writeByte(17)
      ..write(obj.elementStatusDate)
      ..writeByte(18)
      ..write(obj.restoreDate)
      ..writeByte(19)
      ..write(obj.elementRestoreDate)
      ..writeByte(20)
      ..write(obj.validityPeriod)
      ..writeByte(21)
      ..write(obj.dataExclusivityPeriod)
      ..writeByte(22)
      ..write(obj.dateOfFirstAuthorization)
      ..writeByte(23)
      ..write(obj.elementDateOfFirstAuthorization)
      ..writeByte(24)
      ..write(obj.internationalBirthDate)
      ..writeByte(25)
      ..write(obj.elementInternationalBirthDate)
      ..writeByte(26)
      ..write(obj.legalBasis)
      ..writeByte(27)
      ..write(obj.jurisdictionalAuthorization)
      ..writeByte(28)
      ..write(obj.holder)
      ..writeByte(29)
      ..write(obj.regulator)
      ..writeByte(30)
      ..write(obj.procedure);
  }
}

class MedicinalProductAuthorization_JurisdictionalAuthorizationAdapter
    extends TypeAdapter<
        MedicinalProductAuthorization_JurisdictionalAuthorization> {
  @override
  MedicinalProductAuthorization_JurisdictionalAuthorization read(
      BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductAuthorization_JurisdictionalAuthorization(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: (fields[3] as List)?.cast<Identifier>(),
      country: fields[4] as CodeableConcept,
      jurisdiction: (fields[5] as List)?.cast<CodeableConcept>(),
      legalStatusOfSupply: fields[6] as CodeableConcept,
      validityPeriod: fields[7] as Period,
    );
  }

  @override
  void write(BinaryWriter writer,
      MedicinalProductAuthorization_JurisdictionalAuthorization obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.country)
      ..writeByte(5)
      ..write(obj.jurisdiction)
      ..writeByte(6)
      ..write(obj.legalStatusOfSupply)
      ..writeByte(7)
      ..write(obj.validityPeriod);
  }
}

class MedicinalProductAuthorization_ProcedureAdapter
    extends TypeAdapter<MedicinalProductAuthorization_Procedure> {
  @override
  MedicinalProductAuthorization_Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductAuthorization_Procedure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
      type: fields[4] as CodeableConcept,
      datePeriod: fields[5] as Period,
      dateDateTime: fields[6] as String,
      elementDateDateTime: fields[7] as Element,
      application:
          (fields[8] as List)?.cast<MedicinalProductAuthorization_Procedure>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductAuthorization_Procedure obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.identifier)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.datePeriod)
      ..writeByte(6)
      ..write(obj.dateDateTime)
      ..writeByte(7)
      ..write(obj.elementDateDateTime)
      ..writeByte(8)
      ..write(obj.application);
  }
}
