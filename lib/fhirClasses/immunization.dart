import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Immunization {
  static Future<Immunization> newInstance({
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
    CodeableConcept statusReason,
    CodeableConcept vaccineCode,
    Reference patient,
    Reference encounter,
    String occurrenceDateTime,
    Element elementOccurrenceDateTime,
    String occurrenceString,
    Element elementOccurrenceString,
    DateTime recorded,
    Element elementRecorded,
    bool primarySource,
    Element elementPrimarySource,
    CodeableConcept reportOrigin,
    Reference location,
    Reference manufacturer,
    String lotNumber,
    Element elementLotNumber,
    String expirationDate,
    Element elementExpirationDate,
    CodeableConcept site,
    CodeableConcept route,
    Quantity doseQuantity,
    List<Immunization_Performer> performer,
    List<Annotation> note,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    bool isSubpotent,
    Element elementIsSubpotent,
    List<CodeableConcept> subpotentReason,
    List<Immunization_Education> education,
    List<CodeableConcept> programEligibility,
    CodeableConcept fundingSource,
    List<Immunization_Reaction> reaction,
    List<Immunization_ProtocolApplied> protocolApplied,
  }) async {
    var fhirDb = new DatabaseHelper();
    Immunization newImmunization = new Immunization(
      resourceType: 'Immunization',
      id: id ?? await fhirDb.newResourceId('Immunization'),
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
      statusReason: statusReason,
      vaccineCode: vaccineCode,
      patient: patient,
      encounter: encounter,
      occurrenceDateTime: occurrenceDateTime,
      elementOccurrenceDateTime: elementOccurrenceDateTime,
      occurrenceString: occurrenceString,
      elementOccurrenceString: elementOccurrenceString,
      recorded: recorded,
      elementRecorded: elementRecorded,
      primarySource: primarySource,
      elementPrimarySource: elementPrimarySource,
      reportOrigin: reportOrigin,
      location: location,
      manufacturer: manufacturer,
      lotNumber: lotNumber,
      elementLotNumber: elementLotNumber,
      expirationDate: expirationDate,
      elementExpirationDate: elementExpirationDate,
      site: site,
      route: route,
      doseQuantity: doseQuantity,
      performer: performer,
      note: note,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      isSubpotent: isSubpotent,
      elementIsSubpotent: elementIsSubpotent,
      subpotentReason: subpotentReason,
      education: education,
      programEligibility: programEligibility,
      fundingSource: fundingSource,
      reaction: reaction,
      protocolApplied: protocolApplied,
    );
    newImmunization.meta.createdAt = DateTime.now();
    newImmunization.meta.lastUpdated = newImmunization.meta.createdAt;
    int saved = await fhirDb.saveResource(newImmunization);
    return newImmunization;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'Immunization';
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
  CodeableConcept statusReason;
  CodeableConcept vaccineCode;
  Reference patient;
  Reference encounter;
  String occurrenceDateTime;
  Element elementOccurrenceDateTime;
  String occurrenceString;
  Element elementOccurrenceString;
  DateTime recorded;
  Element elementRecorded;
  bool primarySource;
  Element elementPrimarySource;
  CodeableConcept reportOrigin;
  Reference location;
  Reference manufacturer;
  String lotNumber;
  Element elementLotNumber;
  String expirationDate;
  Element elementExpirationDate;
  CodeableConcept site;
  CodeableConcept route;
  Quantity doseQuantity;
  List<Immunization_Performer> performer;
  List<Annotation> note;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  bool isSubpotent;
  Element elementIsSubpotent;
  List<CodeableConcept> subpotentReason;
  List<Immunization_Education> education;
  List<CodeableConcept> programEligibility;
  CodeableConcept fundingSource;
  List<Immunization_Reaction> reaction;
  List<Immunization_ProtocolApplied> protocolApplied;

  Immunization({
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
    this.statusReason,
    @required this.vaccineCode,
    @required this.patient,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrenceString,
    this.elementOccurrenceString,
    this.recorded,
    this.elementRecorded,
    this.primarySource,
    this.elementPrimarySource,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.elementLotNumber,
    this.expirationDate,
    this.elementExpirationDate,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
    this.elementIsSubpotent,
    this.subpotentReason,
    this.education,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied,
  });

  factory Immunization.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);
}

class Immunization_Performer {
  static Future<Immunization_Performer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept function,
    Reference actor,
  }) async {
    var fhirDb = new DatabaseHelper();
    Immunization_Performer newImmunization_Performer =
        new Immunization_Performer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
    );
    return newImmunization_Performer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

  Immunization_Performer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor,
  });

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) =>
      _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_PerformerToJson(this);
}

class Immunization_Education {
  static Future<Immunization_Education> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String documentType,
    Element elementDocumentType,
    String reference,
    Element elementReference,
    DateTime publicationDate,
    Element elementPublicationDate,
    DateTime presentationDate,
    Element elementPresentationDate,
  }) async {
    var fhirDb = new DatabaseHelper();
    Immunization_Education newImmunization_Education =
        new Immunization_Education(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      documentType: documentType,
      elementDocumentType: elementDocumentType,
      reference: reference,
      elementReference: elementReference,
      publicationDate: publicationDate,
      elementPublicationDate: elementPublicationDate,
      presentationDate: presentationDate,
      elementPresentationDate: elementPresentationDate,
    );
    return newImmunization_Education;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String documentType;
  Element elementDocumentType;
  String reference;
  Element elementReference;
  DateTime publicationDate;
  Element elementPublicationDate;
  DateTime presentationDate;
  Element elementPresentationDate;

  Immunization_Education({
    this.id,
    this.extension,
    this.modifierExtension,
    this.documentType,
    this.elementDocumentType,
    this.reference,
    this.elementReference,
    this.publicationDate,
    this.elementPublicationDate,
    this.presentationDate,
    this.elementPresentationDate,
  });

  factory Immunization_Education.fromJson(Map<String, dynamic> json) =>
      _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_EducationToJson(this);
}

class Immunization_Reaction {
  static Future<Immunization_Reaction> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    DateTime date,
    Element elementDate,
    Reference detail,
    bool reported,
    Element elementReported,
  }) async {
    var fhirDb = new DatabaseHelper();
    Immunization_Reaction newImmunization_Reaction = new Immunization_Reaction(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      date: date,
      elementDate: elementDate,
      detail: detail,
      reported: reported,
      elementReported: elementReported,
    );
    return newImmunization_Reaction;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  DateTime date;
  Element elementDate;
  Reference detail;
  bool reported;
  Element elementReported;

  Immunization_Reaction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.detail,
    this.reported,
    this.elementReported,
  });

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) =>
      _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ReactionToJson(this);
}

class Immunization_ProtocolApplied {
  static Future<Immunization_ProtocolApplied> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String series,
    Element elementSeries,
    Reference authority,
    List<CodeableConcept> targetDisease,
    int doseNumberPositiveInt,
    Element elementDoseNumberPositiveInt,
    String doseNumberString,
    Element elementDoseNumberString,
    int seriesDosesPositiveInt,
    Element elementSeriesDosesPositiveInt,
    String seriesDosesString,
    Element elementSeriesDosesString,
  }) async {
    var fhirDb = new DatabaseHelper();
    Immunization_ProtocolApplied newImmunization_ProtocolApplied =
        new Immunization_ProtocolApplied(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      series: series,
      elementSeries: elementSeries,
      authority: authority,
      targetDisease: targetDisease,
      doseNumberPositiveInt: doseNumberPositiveInt,
      elementDoseNumberPositiveInt: elementDoseNumberPositiveInt,
      doseNumberString: doseNumberString,
      elementDoseNumberString: elementDoseNumberString,
      seriesDosesPositiveInt: seriesDosesPositiveInt,
      elementSeriesDosesPositiveInt: elementSeriesDosesPositiveInt,
      seriesDosesString: seriesDosesString,
      elementSeriesDosesString: elementSeriesDosesString,
    );
    return newImmunization_ProtocolApplied;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String series;
  Element elementSeries;
  Reference authority;
  List<CodeableConcept> targetDisease;
  int doseNumberPositiveInt;
  Element elementDoseNumberPositiveInt;
  String doseNumberString;
  Element elementDoseNumberString;
  int seriesDosesPositiveInt;
  Element elementSeriesDosesPositiveInt;
  String seriesDosesString;
  Element elementSeriesDosesString;

  Immunization_ProtocolApplied({
    this.id,
    this.extension,
    this.modifierExtension,
    this.series,
    this.elementSeries,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.elementDoseNumberPositiveInt,
    this.doseNumberString,
    this.elementDoseNumberString,
    this.seriesDosesPositiveInt,
    this.elementSeriesDosesPositiveInt,
    this.seriesDosesString,
    this.elementSeriesDosesString,
  });

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) =>
      _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ProtocolAppliedToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Immunization _$ImmunizationFromJson(Map<String, dynamic> json) {
  return Immunization(
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
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    vaccineCode: json['vaccineCode'] == null
        ? null
        : CodeableConcept.fromJson(json['vaccineCode'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrenceString: json['occurrenceString'] as String,
    elementOccurrenceString: json['elementOccurrenceString'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceString'] as Map<String, dynamic>),
    recorded: json['recorded'] == null
        ? null
        : DateTime.parse(json['recorded'] as String),
    elementRecorded: json['elementRecorded'] == null
        ? null
        : Element.fromJson(json['elementRecorded'] as Map<String, dynamic>),
    primarySource: json['primarySource'] as bool,
    elementPrimarySource: json['elementPrimarySource'] == null
        ? null
        : Element.fromJson(
            json['elementPrimarySource'] as Map<String, dynamic>),
    reportOrigin: json['reportOrigin'] == null
        ? null
        : CodeableConcept.fromJson(
            json['reportOrigin'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    lotNumber: json['lotNumber'] as String,
    elementLotNumber: json['elementLotNumber'] == null
        ? null
        : Element.fromJson(json['elementLotNumber'] as Map<String, dynamic>),
    expirationDate: json['expirationDate'] as String,
    elementExpirationDate: json['elementExpirationDate'] == null
        ? null
        : Element.fromJson(
            json['elementExpirationDate'] as Map<String, dynamic>),
    site: json['site'] == null
        ? null
        : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
    route: json['route'] == null
        ? null
        : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
    doseQuantity: json['doseQuantity'] == null
        ? null
        : Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isSubpotent: json['isSubpotent'] as bool,
    elementIsSubpotent: json['elementIsSubpotent'] == null
        ? null
        : Element.fromJson(json['elementIsSubpotent'] as Map<String, dynamic>),
    subpotentReason: (json['subpotentReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    education: (json['education'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_Education.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programEligibility: (json['programEligibility'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fundingSource: json['fundingSource'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundingSource'] as Map<String, dynamic>),
    reaction: (json['reaction'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_Reaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    protocolApplied: (json['protocolApplied'] as List)
        ?.map((e) => e == null
            ? null
            : Immunization_ProtocolApplied.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImmunizationToJson(Immunization instance) {
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
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('vaccineCode', instance.vaccineCode?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime);
  writeNotNull('elementOccurrenceDateTime',
      instance.elementOccurrenceDateTime?.toJson());
  writeNotNull('occurrenceString', instance.occurrenceString);
  writeNotNull(
      'elementOccurrenceString', instance.elementOccurrenceString?.toJson());
  writeNotNull('recorded', instance.recorded?.toIso8601String());
  writeNotNull('elementRecorded', instance.elementRecorded?.toJson());
  writeNotNull('primarySource', instance.primarySource);
  writeNotNull('elementPrimarySource', instance.elementPrimarySource?.toJson());
  writeNotNull('reportOrigin', instance.reportOrigin?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('manufacturer', instance.manufacturer?.toJson());
  writeNotNull('lotNumber', instance.lotNumber);
  writeNotNull('elementLotNumber', instance.elementLotNumber?.toJson());
  writeNotNull('expirationDate', instance.expirationDate);
  writeNotNull(
      'elementExpirationDate', instance.elementExpirationDate?.toJson());
  writeNotNull('site', instance.site?.toJson());
  writeNotNull('route', instance.route?.toJson());
  writeNotNull('doseQuantity', instance.doseQuantity?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('isSubpotent', instance.isSubpotent);
  writeNotNull('elementIsSubpotent', instance.elementIsSubpotent?.toJson());
  writeNotNull('subpotentReason',
      instance.subpotentReason?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'education', instance.education?.map((e) => e?.toJson())?.toList());
  writeNotNull('programEligibility',
      instance.programEligibility?.map((e) => e?.toJson())?.toList());
  writeNotNull('fundingSource', instance.fundingSource?.toJson());
  writeNotNull(
      'reaction', instance.reaction?.map((e) => e?.toJson())?.toList());
  writeNotNull('protocolApplied',
      instance.protocolApplied?.map((e) => e?.toJson())?.toList());
  return val;
}

Immunization_Performer _$Immunization_PerformerFromJson(
    Map<String, dynamic> json) {
  return Immunization_Performer(
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

Map<String, dynamic> _$Immunization_PerformerToJson(
    Immunization_Performer instance) {
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

Immunization_Education _$Immunization_EducationFromJson(
    Map<String, dynamic> json) {
  return Immunization_Education(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentType: json['documentType'] as String,
    elementDocumentType: json['elementDocumentType'] == null
        ? null
        : Element.fromJson(json['elementDocumentType'] as Map<String, dynamic>),
    reference: json['reference'] as String,
    elementReference: json['elementReference'] == null
        ? null
        : Element.fromJson(json['elementReference'] as Map<String, dynamic>),
    publicationDate: json['publicationDate'] == null
        ? null
        : DateTime.parse(json['publicationDate'] as String),
    elementPublicationDate: json['elementPublicationDate'] == null
        ? null
        : Element.fromJson(
            json['elementPublicationDate'] as Map<String, dynamic>),
    presentationDate: json['presentationDate'] == null
        ? null
        : DateTime.parse(json['presentationDate'] as String),
    elementPresentationDate: json['elementPresentationDate'] == null
        ? null
        : Element.fromJson(
            json['elementPresentationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_EducationToJson(
    Immunization_Education instance) {
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
  writeNotNull('documentType', instance.documentType);
  writeNotNull('elementDocumentType', instance.elementDocumentType?.toJson());
  writeNotNull('reference', instance.reference);
  writeNotNull('elementReference', instance.elementReference?.toJson());
  writeNotNull('publicationDate', instance.publicationDate?.toIso8601String());
  writeNotNull(
      'elementPublicationDate', instance.elementPublicationDate?.toJson());
  writeNotNull(
      'presentationDate', instance.presentationDate?.toIso8601String());
  writeNotNull(
      'elementPresentationDate', instance.elementPresentationDate?.toJson());
  return val;
}

Immunization_Reaction _$Immunization_ReactionFromJson(
    Map<String, dynamic> json) {
  return Immunization_Reaction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    detail: json['detail'] == null
        ? null
        : Reference.fromJson(json['detail'] as Map<String, dynamic>),
    reported: json['reported'] as bool,
    elementReported: json['elementReported'] == null
        ? null
        : Element.fromJson(json['elementReported'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_ReactionToJson(
    Immunization_Reaction instance) {
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
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('detail', instance.detail?.toJson());
  writeNotNull('reported', instance.reported);
  writeNotNull('elementReported', instance.elementReported?.toJson());
  return val;
}

Immunization_ProtocolApplied _$Immunization_ProtocolAppliedFromJson(
    Map<String, dynamic> json) {
  return Immunization_ProtocolApplied(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    series: json['series'] as String,
    elementSeries: json['elementSeries'] == null
        ? null
        : Element.fromJson(json['elementSeries'] as Map<String, dynamic>),
    authority: json['authority'] == null
        ? null
        : Reference.fromJson(json['authority'] as Map<String, dynamic>),
    targetDisease: (json['targetDisease'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    doseNumberPositiveInt: json['doseNumberPositiveInt'] as int,
    elementDoseNumberPositiveInt: json['elementDoseNumberPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementDoseNumberPositiveInt'] as Map<String, dynamic>),
    doseNumberString: json['doseNumberString'] as String,
    elementDoseNumberString: json['elementDoseNumberString'] == null
        ? null
        : Element.fromJson(
            json['elementDoseNumberString'] as Map<String, dynamic>),
    seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int,
    elementSeriesDosesPositiveInt: json['elementSeriesDosesPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementSeriesDosesPositiveInt'] as Map<String, dynamic>),
    seriesDosesString: json['seriesDosesString'] as String,
    elementSeriesDosesString: json['elementSeriesDosesString'] == null
        ? null
        : Element.fromJson(
            json['elementSeriesDosesString'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Immunization_ProtocolAppliedToJson(
    Immunization_ProtocolApplied instance) {
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
  writeNotNull('series', instance.series);
  writeNotNull('elementSeries', instance.elementSeries?.toJson());
  writeNotNull('authority', instance.authority?.toJson());
  writeNotNull('targetDisease',
      instance.targetDisease?.map((e) => e?.toJson())?.toList());
  writeNotNull('doseNumberPositiveInt', instance.doseNumberPositiveInt);
  writeNotNull('elementDoseNumberPositiveInt',
      instance.elementDoseNumberPositiveInt?.toJson());
  writeNotNull('doseNumberString', instance.doseNumberString);
  writeNotNull(
      'elementDoseNumberString', instance.elementDoseNumberString?.toJson());
  writeNotNull('seriesDosesPositiveInt', instance.seriesDosesPositiveInt);
  writeNotNull('elementSeriesDosesPositiveInt',
      instance.elementSeriesDosesPositiveInt?.toJson());
  writeNotNull('seriesDosesString', instance.seriesDosesString);
  writeNotNull(
      'elementSeriesDosesString', instance.elementSeriesDosesString?.toJson());
  return val;
}
