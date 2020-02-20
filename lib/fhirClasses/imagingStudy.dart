import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'ImagingStudy';
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
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  List<Coding> modality;
  Reference subject;
  Reference encounter;
  DateTime started;
  Element elementStarted;
  List<Reference> basedOn;
  Reference referrer;
  List<Reference> interpreter;
  List<Reference> endpoint;
  int numberOfSeries;
  Element elementNumberOfSeries;
  int numberOfInstances;
  Element elementNumberOfInstances;
  Reference procedureReference;
  List<CodeableConcept> procedureCode;
  Reference location;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Annotation> note;
  String description;
  Element elementDescription;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ImagingStudy_Series'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uid;
  Element elementUid;
  int number;
  Element elementNumber;
  Coding modality;
  String description;
  Element elementDescription;
  int numberOfInstances;
  Element elementNumberOfInstances;
  List<Reference> endpoint;
  Coding bodySite;
  Coding laterality;
  List<Reference> specimen;
  DateTime started;
  Element elementStarted;
  List<ImagingStudy_Performer> performer;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ImagingStudy_Performer'),
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
    );
    return newImagingStudy_Performer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ImagingStudy_Instance'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uid;
  Element elementUid;
  Coding sopClass;
  int number;
  Element elementNumber;
  String title;
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
