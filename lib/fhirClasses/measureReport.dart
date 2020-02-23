import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MeasureReport {
  static Future<MeasureReport> newInstance({
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
    String type,
    Element elementType,
    String measure,
    Reference subject,
    DateTime date,
    Element elementDate,
    Reference reporter,
    Period period,
    CodeableConcept improvementNotation,
    List<MeasureReport_Group> group,
    List<Reference> evaluatedResource,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport newMeasureReport = new MeasureReport(
      resourceType: 'MeasureReport',
      id: id ?? await fhirDb.newResourceId('MeasureReport'),
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
      type: type,
      elementType: elementType,
      measure: measure,
      subject: subject,
      date: date,
      elementDate: elementDate,
      reporter: reporter,
      period: period,
      improvementNotation: improvementNotation,
      group: group,
      evaluatedResource: evaluatedResource,
    );
    newMeasureReport.meta.createdAt = DateTime.now();
    newMeasureReport.meta.lastUpdated = newMeasureReport.meta.createdAt;
    int saved = await fhirDb.saveResource(newMeasureReport);
    return newMeasureReport;
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
  String resourceType = 'MeasureReport';
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
  String type;
  @HiveField(15)
  Element elementType;
  @HiveField(16)
  String measure;
  @HiveField(17)
  Reference subject;
  @HiveField(18)
  DateTime date;
  @HiveField(19)
  Element elementDate;
  @HiveField(20)
  Reference reporter;
  @HiveField(21)
  Period period;
  @HiveField(22)
  CodeableConcept improvementNotation;
  @HiveField(23)
  List<MeasureReport_Group> group;
  @HiveField(24)
  List<Reference> evaluatedResource;

  MeasureReport({
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
    this.type,
    this.elementType,
    @required this.measure,
    this.subject,
    this.date,
    this.elementDate,
    this.reporter,
    @required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
  });

  factory MeasureReport.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReportToJson(this);
}

class MeasureReport_Group {
  static Future<MeasureReport_Group> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    List<MeasureReport_Population> population,
    Quantity measureScore,
    List<MeasureReport_Stratifier> stratifier,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport_Group newMeasureReport_Group = new MeasureReport_Group(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      population: population,
      measureScore: measureScore,
      stratifier: stratifier,
    );
    return newMeasureReport_Group;
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
  List<MeasureReport_Population> population;
  @HiveField(5)
  Quantity measureScore;
  @HiveField(6)
  List<MeasureReport_Stratifier> stratifier;

  MeasureReport_Group({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
  });

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_GroupToJson(this);
}

class MeasureReport_Population {
  static Future<MeasureReport_Population> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    int count,
    Element elementCount,
    Reference subjectResults,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport_Population newMeasureReport_Population =
        new MeasureReport_Population(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      count: count,
      elementCount: elementCount,
      subjectResults: subjectResults,
    );
    return newMeasureReport_Population;
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
  int count;
  @HiveField(5)
  Element elementCount;
  @HiveField(6)
  Reference subjectResults;

  MeasureReport_Population({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.elementCount,
    this.subjectResults,
  });

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_PopulationToJson(this);
}

class MeasureReport_Stratifier {
  static Future<MeasureReport_Stratifier> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CodeableConcept> code,
    List<MeasureReport_Stratum> stratum,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport_Stratifier newMeasureReport_Stratifier =
        new MeasureReport_Stratifier(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      stratum: stratum,
    );
    return newMeasureReport_Stratifier;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<CodeableConcept> code;
  @HiveField(4)
  List<MeasureReport_Stratum> stratum;

  MeasureReport_Stratifier({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.stratum,
  });

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratifierToJson(this);
}

class MeasureReport_Stratum {
  static Future<MeasureReport_Stratum> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept value,
    List<MeasureReport_Component> component,
    List<MeasureReport_Population1> population,
    Quantity measureScore,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport_Stratum newMeasureReport_Stratum = new MeasureReport_Stratum(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      value: value,
      component: component,
      population: population,
      measureScore: measureScore,
    );
    return newMeasureReport_Stratum;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept value;
  @HiveField(4)
  List<MeasureReport_Component> component;
  @HiveField(5)
  List<MeasureReport_Population1> population;
  @HiveField(6)
  Quantity measureScore;

  MeasureReport_Stratum({
    this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
  });

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratumToJson(this);
}

class MeasureReport_Component {
  static Future<MeasureReport_Component> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    CodeableConcept value,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport_Component newMeasureReport_Component =
        new MeasureReport_Component(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      value: value,
    );
    return newMeasureReport_Component;
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
  CodeableConcept value;

  MeasureReport_Component({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.code,
    @required this.value,
  });

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_ComponentToJson(this);
}

class MeasureReport_Population1 {
  static Future<MeasureReport_Population1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept code,
    int count,
    Element elementCount,
    Reference subjectResults,
  }) async {
    var fhirDb = new DatabaseHelper();
    MeasureReport_Population1 newMeasureReport_Population1 =
        new MeasureReport_Population1(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      count: count,
      elementCount: elementCount,
      subjectResults: subjectResults,
    );
    return newMeasureReport_Population1;
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
  int count;
  @HiveField(5)
  Element elementCount;
  @HiveField(6)
  Reference subjectResults;

  MeasureReport_Population1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.elementCount,
    this.subjectResults,
  });

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_Population1ToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasureReport _$MeasureReportFromJson(Map<String, dynamic> json) {
  return MeasureReport(
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
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    measure: json['measure'] as String,
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    reporter: json['reporter'] == null
        ? null
        : Reference.fromJson(json['reporter'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    improvementNotation: json['improvementNotation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['improvementNotation'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluatedResource: (json['evaluatedResource'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReportToJson(MeasureReport instance) {
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
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('measure', instance.measure);
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('reporter', instance.reporter?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('improvementNotation', instance.improvementNotation?.toJson());
  writeNotNull('group', instance.group?.map((e) => e?.toJson())?.toList());
  writeNotNull('evaluatedResource',
      instance.evaluatedResource?.map((e) => e?.toJson())?.toList());
  return val;
}

MeasureReport_Group _$MeasureReport_GroupFromJson(Map<String, dynamic> json) {
  return MeasureReport_Group(
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
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measureScore: json['measureScore'] == null
        ? null
        : Quantity.fromJson(json['measureScore'] as Map<String, dynamic>),
    stratifier: (json['stratifier'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Stratifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_GroupToJson(MeasureReport_Group instance) {
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
  writeNotNull(
      'population', instance.population?.map((e) => e?.toJson())?.toList());
  writeNotNull('measureScore', instance.measureScore?.toJson());
  writeNotNull(
      'stratifier', instance.stratifier?.map((e) => e?.toJson())?.toList());
  return val;
}

MeasureReport_Population _$MeasureReport_PopulationFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Population(
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
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    subjectResults: json['subjectResults'] == null
        ? null
        : Reference.fromJson(json['subjectResults'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_PopulationToJson(
    MeasureReport_Population instance) {
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
  writeNotNull('count', instance.count);
  writeNotNull('elementCount', instance.elementCount?.toJson());
  writeNotNull('subjectResults', instance.subjectResults?.toJson());
  return val;
}

MeasureReport_Stratifier _$MeasureReport_StratifierFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Stratifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stratum: (json['stratum'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Stratum.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_StratifierToJson(
    MeasureReport_Stratifier instance) {
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
  writeNotNull('code', instance.code?.map((e) => e?.toJson())?.toList());
  writeNotNull('stratum', instance.stratum?.map((e) => e?.toJson())?.toList());
  return val;
}

MeasureReport_Stratum _$MeasureReport_StratumFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Stratum(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] == null
        ? null
        : CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Population1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measureScore: json['measureScore'] == null
        ? null
        : Quantity.fromJson(json['measureScore'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_StratumToJson(
    MeasureReport_Stratum instance) {
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
  writeNotNull('value', instance.value?.toJson());
  writeNotNull(
      'component', instance.component?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'population', instance.population?.map((e) => e?.toJson())?.toList());
  writeNotNull('measureScore', instance.measureScore?.toJson());
  return val;
}

MeasureReport_Component _$MeasureReport_ComponentFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Component(
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
    value: json['value'] == null
        ? null
        : CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_ComponentToJson(
    MeasureReport_Component instance) {
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
  writeNotNull('value', instance.value?.toJson());
  return val;
}

MeasureReport_Population1 _$MeasureReport_Population1FromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Population1(
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
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    subjectResults: json['subjectResults'] == null
        ? null
        : Reference.fromJson(json['subjectResults'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_Population1ToJson(
    MeasureReport_Population1 instance) {
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
  writeNotNull('count', instance.count);
  writeNotNull('elementCount', instance.elementCount?.toJson());
  writeNotNull('subjectResults', instance.subjectResults?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasureReportAdapter extends TypeAdapter<MeasureReport> {
  @override
  MeasureReport read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport(
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
      type: fields[14] as String,
      elementType: fields[15] as Element,
      measure: fields[16] as String,
      subject: fields[17] as Reference,
      date: fields[18] as DateTime,
      elementDate: fields[19] as Element,
      reporter: fields[20] as Reference,
      period: fields[21] as Period,
      improvementNotation: fields[22] as CodeableConcept,
      group: (fields[23] as List)?.cast<MeasureReport_Group>(),
      evaluatedResource: (fields[24] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport obj) {
    writer
      ..writeByte(25)
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
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.elementType)
      ..writeByte(16)
      ..write(obj.measure)
      ..writeByte(17)
      ..write(obj.subject)
      ..writeByte(18)
      ..write(obj.date)
      ..writeByte(19)
      ..write(obj.elementDate)
      ..writeByte(20)
      ..write(obj.reporter)
      ..writeByte(21)
      ..write(obj.period)
      ..writeByte(22)
      ..write(obj.improvementNotation)
      ..writeByte(23)
      ..write(obj.group)
      ..writeByte(24)
      ..write(obj.evaluatedResource);
  }
}

class MeasureReport_GroupAdapter extends TypeAdapter<MeasureReport_Group> {
  @override
  MeasureReport_Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Group(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      population: (fields[4] as List)?.cast<MeasureReport_Population>(),
      measureScore: fields[5] as Quantity,
      stratifier: (fields[6] as List)?.cast<MeasureReport_Stratifier>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Group obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.population)
      ..writeByte(5)
      ..write(obj.measureScore)
      ..writeByte(6)
      ..write(obj.stratifier);
  }
}

class MeasureReport_PopulationAdapter
    extends TypeAdapter<MeasureReport_Population> {
  @override
  MeasureReport_Population read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Population(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      count: fields[4] as int,
      elementCount: fields[5] as Element,
      subjectResults: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Population obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.count)
      ..writeByte(5)
      ..write(obj.elementCount)
      ..writeByte(6)
      ..write(obj.subjectResults);
  }
}

class MeasureReport_StratifierAdapter
    extends TypeAdapter<MeasureReport_Stratifier> {
  @override
  MeasureReport_Stratifier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Stratifier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: (fields[3] as List)?.cast<CodeableConcept>(),
      stratum: (fields[4] as List)?.cast<MeasureReport_Stratum>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Stratifier obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.stratum);
  }
}

class MeasureReport_StratumAdapter extends TypeAdapter<MeasureReport_Stratum> {
  @override
  MeasureReport_Stratum read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Stratum(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      value: fields[3] as CodeableConcept,
      component: (fields[4] as List)?.cast<MeasureReport_Component>(),
      population: (fields[5] as List)?.cast<MeasureReport_Population1>(),
      measureScore: fields[6] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Stratum obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.value)
      ..writeByte(4)
      ..write(obj.component)
      ..writeByte(5)
      ..write(obj.population)
      ..writeByte(6)
      ..write(obj.measureScore);
  }
}

class MeasureReport_ComponentAdapter
    extends TypeAdapter<MeasureReport_Component> {
  @override
  MeasureReport_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Component(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      value: fields[4] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Component obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.value);
  }
}

class MeasureReport_Population1Adapter
    extends TypeAdapter<MeasureReport_Population1> {
  @override
  MeasureReport_Population1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Population1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      count: fields[4] as int,
      elementCount: fields[5] as Element,
      subjectResults: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Population1 obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.count)
      ..writeByte(5)
      ..write(obj.elementCount)
      ..writeByte(6)
      ..write(obj.subjectResults);
  }
}
