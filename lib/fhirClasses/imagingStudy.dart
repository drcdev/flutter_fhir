import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ImagingStudy {
  static Future<ImagingStudy> newInstance({
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
    String status,
    Element elementStatus,
    List<Coding> modality,
    Reference subject,
    Reference encounter,
    DateTime started,
    Element elementStarted,
    List<Reference> basedOn,
    Reference referrer,
    List<Reference> interpreter,
    List<Reference> endpoint,
    int numberOfSeries,
    Element elementNumberOfSeries,
    int numberOfInstances,
    Element elementNumberOfInstances,
    Reference procedureReference,
    List<CodeableConcept> procedureCode,
    Reference location,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<Annotation> note,
    String description,
    Element elementDescription,
    List<ImagingStudy_Series> series,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImagingStudy newImagingStudy = new ImagingStudy(
      resourceType: 'ImagingStudy',
      id: id ?? await fhirDb.newResourceId('ImagingStudy'),
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
      status: status,
      elementStatus: elementStatus,
      modality: modality,
      subject: subject,
      encounter: encounter,
      started: started,
      elementStarted: elementStarted,
      basedOn: basedOn,
      referrer: referrer,
      interpreter: interpreter,
      endpoint: endpoint,
      numberOfSeries: numberOfSeries,
      elementNumberOfSeries: elementNumberOfSeries,
      numberOfInstances: numberOfInstances,
      elementNumberOfInstances: elementNumberOfInstances,
      procedureReference: procedureReference,
      procedureCode: procedureCode,
      location: location,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      note: note,
      description: description,
      elementDescription: elementDescription,
      series: series,
    );
    newImagingStudy.meta.createdAt = DateTime.now();
    newImagingStudy.meta.lastUpdated = newImagingStudy.meta.createdAt;
    int saved = await fhirDb.saveResource(newImagingStudy);
    return newImagingStudy;
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
  String resourceType = 'ImagingStudy';
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
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  List<Coding> modality;
  @HiveField(15)
  Reference subject;
  @HiveField(16)
  Reference encounter;
  @HiveField(17)
  DateTime started;
  @HiveField(18)
  Element elementStarted;
  @HiveField(19)
  List<Reference> basedOn;
  @HiveField(20)
  Reference referrer;
  @HiveField(21)
  List<Reference> interpreter;
  @HiveField(22)
  List<Reference> endpoint;
  @HiveField(23)
  int numberOfSeries;
  @HiveField(24)
  Element elementNumberOfSeries;
  @HiveField(25)
  int numberOfInstances;
  @HiveField(26)
  Element elementNumberOfInstances;
  @HiveField(27)
  Reference procedureReference;
  @HiveField(28)
  List<CodeableConcept> procedureCode;
  @HiveField(29)
  Reference location;
  @HiveField(30)
  List<CodeableConcept> reasonCode;
  @HiveField(31)
  List<Reference> reasonReference;
  @HiveField(32)
  List<Annotation> note;
  @HiveField(33)
  String description;
  @HiveField(34)
  Element elementDescription;
  @HiveField(35)
  List<ImagingStudy_Series> series;

  ImagingStudy({
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
    this.status,
    this.elementStatus,
    this.modality,
    @required this.subject,
    this.encounter,
    this.started,
    this.elementStarted,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.elementNumberOfSeries,
    this.numberOfInstances,
    this.elementNumberOfInstances,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.elementDescription,
    this.series,
  });

  factory ImagingStudy.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudyToJson(this);
}

class ImagingStudy_Series {
  static Future<ImagingStudy_Series> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String uid,
    Element elementUid,
    int number,
    Element elementNumber,
    Coding modality,
    String description,
    Element elementDescription,
    int numberOfInstances,
    Element elementNumberOfInstances,
    List<Reference> endpoint,
    Coding bodySite,
    Coding laterality,
    List<Reference> specimen,
    DateTime started,
    Element elementStarted,
    List<ImagingStudy_Performer> performer,
    List<ImagingStudy_Instance> instance,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImagingStudy_Series newImagingStudy_Series = new ImagingStudy_Series(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      uid: uid,
      elementUid: elementUid,
      number: number,
      elementNumber: elementNumber,
      modality: modality,
      description: description,
      elementDescription: elementDescription,
      numberOfInstances: numberOfInstances,
      elementNumberOfInstances: elementNumberOfInstances,
      endpoint: endpoint,
      bodySite: bodySite,
      laterality: laterality,
      specimen: specimen,
      started: started,
      elementStarted: elementStarted,
      performer: performer,
      instance: instance,
    );
    return newImagingStudy_Series;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String uid;
  @HiveField(4)
  Element elementUid;
  @HiveField(5)
  int number;
  @HiveField(6)
  Element elementNumber;
  @HiveField(7)
  Coding modality;
  @HiveField(8)
  String description;
  @HiveField(9)
  Element elementDescription;
  @HiveField(10)
  int numberOfInstances;
  @HiveField(11)
  Element elementNumberOfInstances;
  @HiveField(12)
  List<Reference> endpoint;
  @HiveField(13)
  Coding bodySite;
  @HiveField(14)
  Coding laterality;
  @HiveField(15)
  List<Reference> specimen;
  @HiveField(16)
  DateTime started;
  @HiveField(17)
  Element elementStarted;
  @HiveField(18)
  List<ImagingStudy_Performer> performer;
  @HiveField(19)
  List<ImagingStudy_Instance> instance;

  ImagingStudy_Series({
    this.id,
    this.extension,
    this.modifierExtension,
    this.uid,
    this.elementUid,
    this.number,
    this.elementNumber,
    @required this.modality,
    this.description,
    this.elementDescription,
    this.numberOfInstances,
    this.elementNumberOfInstances,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.elementStarted,
    this.performer,
    this.instance,
  });

  factory ImagingStudy_Series.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudy_SeriesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_SeriesToJson(this);
}

class ImagingStudy_Performer {
  static Future<ImagingStudy_Performer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept function,
    Reference actor,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImagingStudy_Performer newImagingStudy_Performer =
        new ImagingStudy_Performer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
    );
    return newImagingStudy_Performer;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept function;
  @HiveField(4)
  Reference actor;

  ImagingStudy_Performer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor,
  });

  factory ImagingStudy_Performer.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudy_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_PerformerToJson(this);
}

class ImagingStudy_Instance {
  static Future<ImagingStudy_Instance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String uid,
    Element elementUid,
    Coding sopClass,
    int number,
    Element elementNumber,
    String title,
    Element elementTitle,
  }) async {
    var fhirDb = new DatabaseHelper();
    ImagingStudy_Instance newImagingStudy_Instance = new ImagingStudy_Instance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      uid: uid,
      elementUid: elementUid,
      sopClass: sopClass,
      number: number,
      elementNumber: elementNumber,
      title: title,
      elementTitle: elementTitle,
    );
    return newImagingStudy_Instance;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String uid;
  @HiveField(4)
  Element elementUid;
  @HiveField(5)
  Coding sopClass;
  @HiveField(6)
  int number;
  @HiveField(7)
  Element elementNumber;
  @HiveField(8)
  String title;
  @HiveField(9)
  Element elementTitle;

  ImagingStudy_Instance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.uid,
    this.elementUid,
    @required this.sopClass,
    this.number,
    this.elementNumber,
    this.title,
    this.elementTitle,
  });

  factory ImagingStudy_Instance.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudy_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_InstanceToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagingStudy _$ImagingStudyFromJson(Map<String, dynamic> json) {
  return ImagingStudy(
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    modality: (json['modality'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    elementStarted: json['elementStarted'] == null
        ? null
        : Element.fromJson(json['elementStarted'] as Map<String, dynamic>),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referrer: json['referrer'] == null
        ? null
        : Reference.fromJson(json['referrer'] as Map<String, dynamic>),
    interpreter: (json['interpreter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numberOfSeries: json['numberOfSeries'] as int,
    elementNumberOfSeries: json['elementNumberOfSeries'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfSeries'] as Map<String, dynamic>),
    numberOfInstances: json['numberOfInstances'] as int,
    elementNumberOfInstances: json['elementNumberOfInstances'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfInstances'] as Map<String, dynamic>),
    procedureReference: json['procedureReference'] == null
        ? null
        : Reference.fromJson(
            json['procedureReference'] as Map<String, dynamic>),
    procedureCode: (json['procedureCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
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
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    series: (json['series'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Series.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagingStudyToJson(ImagingStudy instance) {
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
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull(
      'modality', instance.modality?.map((e) => e?.toJson())?.toList());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('started', instance.started?.toIso8601String());
  writeNotNull('elementStarted', instance.elementStarted?.toJson());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('referrer', instance.referrer?.toJson());
  writeNotNull(
      'interpreter', instance.interpreter?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'endpoint', instance.endpoint?.map((e) => e?.toJson())?.toList());
  writeNotNull('numberOfSeries', instance.numberOfSeries);
  writeNotNull(
      'elementNumberOfSeries', instance.elementNumberOfSeries?.toJson());
  writeNotNull('numberOfInstances', instance.numberOfInstances);
  writeNotNull(
      'elementNumberOfInstances', instance.elementNumberOfInstances?.toJson());
  writeNotNull('procedureReference', instance.procedureReference?.toJson());
  writeNotNull('procedureCode',
      instance.procedureCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('series', instance.series?.map((e) => e?.toJson())?.toList());
  return val;
}

ImagingStudy_Series _$ImagingStudy_SeriesFromJson(Map<String, dynamic> json) {
  return ImagingStudy_Series(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as String,
    elementUid: json['elementUid'] == null
        ? null
        : Element.fromJson(json['elementUid'] as Map<String, dynamic>),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    modality: json['modality'] == null
        ? null
        : Coding.fromJson(json['modality'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    numberOfInstances: json['numberOfInstances'] as int,
    elementNumberOfInstances: json['elementNumberOfInstances'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfInstances'] as Map<String, dynamic>),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : Coding.fromJson(json['bodySite'] as Map<String, dynamic>),
    laterality: json['laterality'] == null
        ? null
        : Coding.fromJson(json['laterality'] as Map<String, dynamic>),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    elementStarted: json['elementStarted'] == null
        ? null
        : Element.fromJson(json['elementStarted'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagingStudy_SeriesToJson(ImagingStudy_Series instance) {
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
  writeNotNull('uid', instance.uid);
  writeNotNull('elementUid', instance.elementUid?.toJson());
  writeNotNull('number', instance.number);
  writeNotNull('elementNumber', instance.elementNumber?.toJson());
  writeNotNull('modality', instance.modality?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('numberOfInstances', instance.numberOfInstances);
  writeNotNull(
      'elementNumberOfInstances', instance.elementNumberOfInstances?.toJson());
  writeNotNull(
      'endpoint', instance.endpoint?.map((e) => e?.toJson())?.toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('laterality', instance.laterality?.toJson());
  writeNotNull(
      'specimen', instance.specimen?.map((e) => e?.toJson())?.toList());
  writeNotNull('started', instance.started?.toIso8601String());
  writeNotNull('elementStarted', instance.elementStarted?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'instance', instance.instance?.map((e) => e?.toJson())?.toList());
  return val;
}

ImagingStudy_Performer _$ImagingStudy_PerformerFromJson(
    Map<String, dynamic> json) {
  return ImagingStudy_Performer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    function: json['function'] == null
        ? null
        : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagingStudy_PerformerToJson(
    ImagingStudy_Performer instance) {
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
  writeNotNull('function', instance.function?.toJson());
  writeNotNull('actor', instance.actor?.toJson());
  return val;
}

ImagingStudy_Instance _$ImagingStudy_InstanceFromJson(
    Map<String, dynamic> json) {
  return ImagingStudy_Instance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as String,
    elementUid: json['elementUid'] == null
        ? null
        : Element.fromJson(json['elementUid'] as Map<String, dynamic>),
    sopClass: json['sopClass'] == null
        ? null
        : Coding.fromJson(json['sopClass'] as Map<String, dynamic>),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagingStudy_InstanceToJson(
    ImagingStudy_Instance instance) {
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
  writeNotNull('uid', instance.uid);
  writeNotNull('elementUid', instance.elementUid?.toJson());
  writeNotNull('sopClass', instance.sopClass?.toJson());
  writeNotNull('number', instance.number);
  writeNotNull('elementNumber', instance.elementNumber?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImagingStudyAdapter extends TypeAdapter<ImagingStudy> {
  @override
  ImagingStudy read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagingStudy(
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      modality: (fields[14] as List)?.cast<Coding>(),
      subject: fields[15] as Reference,
      encounter: fields[16] as Reference,
      started: fields[17] as DateTime,
      elementStarted: fields[18] as Element,
      basedOn: (fields[19] as List)?.cast<Reference>(),
      referrer: fields[20] as Reference,
      interpreter: (fields[21] as List)?.cast<Reference>(),
      endpoint: (fields[22] as List)?.cast<Reference>(),
      numberOfSeries: fields[23] as int,
      elementNumberOfSeries: fields[24] as Element,
      numberOfInstances: fields[25] as int,
      elementNumberOfInstances: fields[26] as Element,
      procedureReference: fields[27] as Reference,
      procedureCode: (fields[28] as List)?.cast<CodeableConcept>(),
      location: fields[29] as Reference,
      reasonCode: (fields[30] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[31] as List)?.cast<Reference>(),
      note: (fields[32] as List)?.cast<Annotation>(),
      description: fields[33] as String,
      elementDescription: fields[34] as Element,
      series: (fields[35] as List)?.cast<ImagingStudy_Series>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImagingStudy obj) {
    writer
      ..writeByte(36)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.modality)
      ..writeByte(15)
      ..write(obj.subject)
      ..writeByte(16)
      ..write(obj.encounter)
      ..writeByte(17)
      ..write(obj.started)
      ..writeByte(18)
      ..write(obj.elementStarted)
      ..writeByte(19)
      ..write(obj.basedOn)
      ..writeByte(20)
      ..write(obj.referrer)
      ..writeByte(21)
      ..write(obj.interpreter)
      ..writeByte(22)
      ..write(obj.endpoint)
      ..writeByte(23)
      ..write(obj.numberOfSeries)
      ..writeByte(24)
      ..write(obj.elementNumberOfSeries)
      ..writeByte(25)
      ..write(obj.numberOfInstances)
      ..writeByte(26)
      ..write(obj.elementNumberOfInstances)
      ..writeByte(27)
      ..write(obj.procedureReference)
      ..writeByte(28)
      ..write(obj.procedureCode)
      ..writeByte(29)
      ..write(obj.location)
      ..writeByte(30)
      ..write(obj.reasonCode)
      ..writeByte(31)
      ..write(obj.reasonReference)
      ..writeByte(32)
      ..write(obj.note)
      ..writeByte(33)
      ..write(obj.description)
      ..writeByte(34)
      ..write(obj.elementDescription)
      ..writeByte(35)
      ..write(obj.series);
  }
}

class ImagingStudy_SeriesAdapter extends TypeAdapter<ImagingStudy_Series> {
  @override
  ImagingStudy_Series read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagingStudy_Series(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      uid: fields[3] as String,
      elementUid: fields[4] as Element,
      number: fields[5] as int,
      elementNumber: fields[6] as Element,
      modality: fields[7] as Coding,
      description: fields[8] as String,
      elementDescription: fields[9] as Element,
      numberOfInstances: fields[10] as int,
      elementNumberOfInstances: fields[11] as Element,
      endpoint: (fields[12] as List)?.cast<Reference>(),
      bodySite: fields[13] as Coding,
      laterality: fields[14] as Coding,
      specimen: (fields[15] as List)?.cast<Reference>(),
      started: fields[16] as DateTime,
      elementStarted: fields[17] as Element,
      performer: (fields[18] as List)?.cast<ImagingStudy_Performer>(),
      instance: (fields[19] as List)?.cast<ImagingStudy_Instance>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImagingStudy_Series obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.uid)
      ..writeByte(4)
      ..write(obj.elementUid)
      ..writeByte(5)
      ..write(obj.number)
      ..writeByte(6)
      ..write(obj.elementNumber)
      ..writeByte(7)
      ..write(obj.modality)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.elementDescription)
      ..writeByte(10)
      ..write(obj.numberOfInstances)
      ..writeByte(11)
      ..write(obj.elementNumberOfInstances)
      ..writeByte(12)
      ..write(obj.endpoint)
      ..writeByte(13)
      ..write(obj.bodySite)
      ..writeByte(14)
      ..write(obj.laterality)
      ..writeByte(15)
      ..write(obj.specimen)
      ..writeByte(16)
      ..write(obj.started)
      ..writeByte(17)
      ..write(obj.elementStarted)
      ..writeByte(18)
      ..write(obj.performer)
      ..writeByte(19)
      ..write(obj.instance);
  }
}

class ImagingStudy_PerformerAdapter
    extends TypeAdapter<ImagingStudy_Performer> {
  @override
  ImagingStudy_Performer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagingStudy_Performer(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      function: fields[3] as CodeableConcept,
      actor: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ImagingStudy_Performer obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.function)
      ..writeByte(4)
      ..write(obj.actor);
  }
}

class ImagingStudy_InstanceAdapter extends TypeAdapter<ImagingStudy_Instance> {
  @override
  ImagingStudy_Instance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagingStudy_Instance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      uid: fields[3] as String,
      elementUid: fields[4] as Element,
      sopClass: fields[5] as Coding,
      number: fields[6] as int,
      elementNumber: fields[7] as Element,
      title: fields[8] as String,
      elementTitle: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ImagingStudy_Instance obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.uid)
      ..writeByte(4)
      ..write(obj.elementUid)
      ..writeByte(5)
      ..write(obj.sopClass)
      ..writeByte(6)
      ..write(obj.number)
      ..writeByte(7)
      ..write(obj.elementNumber)
      ..writeByte(8)
      ..write(obj.title)
      ..writeByte(9)
      ..write(obj.elementTitle);
  }
}
