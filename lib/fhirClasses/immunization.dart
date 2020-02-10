import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Immunization {
  final String resourceType= 'Immunization';
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
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementOccurrenceDateTime;
  String occurrenceString; //  pattern: ^[ \r\n\t\S]+$
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

Immunization(
  this.vaccineCode,
    this.patient,
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
    this.status,
    this.elementStatus,
    this.statusReason,
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
    this.protocolApplied
    });

  factory Immunization.fromJson(Map<String, dynamic> json) => _$ImmunizationFromJson(json);
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Performer {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

Immunization_Performer(
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.function
    });

  factory Immunization_Performer.fromJson(Map<String, dynamic> json) => _$Immunization_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Education {
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

Immunization_Education(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.documentType,
    this.elementDocumentType,
    this.reference,
    this.elementReference,
    this.publicationDate,
    this.elementPublicationDate,
    this.presentationDate,
    this.elementPresentationDate
    });

  factory Immunization_Education.fromJson(Map<String, dynamic> json) => _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_EducationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_Reaction {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  DateTime date;
  Element elementDate;
  Reference detail;
  bool reported;
  Element elementReported;

Immunization_Reaction(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.detail,
    this.reported,
    this.elementReported
    });

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) => _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ReactionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Immunization_ProtocolApplied {
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String series;
  Element elementSeries;
  Reference authority;
  List<CodeableConcept> targetDisease;
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementDoseNumberPositiveInt;
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$
  Element elementDoseNumberString;
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementSeriesDosesPositiveInt;
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$
  Element elementSeriesDosesString;

Immunization_ProtocolApplied(
  {this.id,
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
    this.elementSeriesDosesString
    });

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) => _$Immunization_ProtocolAppliedFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ProtocolAppliedToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Immunization _$ImmunizationFromJson(Map<String, dynamic> json) {
  return Immunization(
    json['vaccineCode'] == null
        ? null
        : CodeableConcept.fromJson(json['vaccineCode'] as Map<String, dynamic>),
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImmunizationToJson(Immunization instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'vaccineCode': instance.vaccineCode?.toJson(),
      'patient': instance.patient?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrenceString': instance.occurrenceString,
      'elementOccurrenceString': instance.elementOccurrenceString?.toJson(),
      'recorded': instance.recorded?.toIso8601String(),
      'elementRecorded': instance.elementRecorded?.toJson(),
      'primarySource': instance.primarySource,
      'elementPrimarySource': instance.elementPrimarySource?.toJson(),
      'reportOrigin': instance.reportOrigin?.toJson(),
      'location': instance.location?.toJson(),
      'manufacturer': instance.manufacturer?.toJson(),
      'lotNumber': instance.lotNumber,
      'elementLotNumber': instance.elementLotNumber?.toJson(),
      'expirationDate': instance.expirationDate,
      'elementExpirationDate': instance.elementExpirationDate?.toJson(),
      'site': instance.site?.toJson(),
      'route': instance.route?.toJson(),
      'doseQuantity': instance.doseQuantity?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'isSubpotent': instance.isSubpotent,
      'elementIsSubpotent': instance.elementIsSubpotent?.toJson(),
      'subpotentReason':
          instance.subpotentReason?.map((e) => e?.toJson())?.toList(),
      'education': instance.education?.map((e) => e?.toJson())?.toList(),
      'programEligibility':
          instance.programEligibility?.map((e) => e?.toJson())?.toList(),
      'fundingSource': instance.fundingSource?.toJson(),
      'reaction': instance.reaction?.map((e) => e?.toJson())?.toList(),
      'protocolApplied':
          instance.protocolApplied?.map((e) => e?.toJson())?.toList(),
    };

Immunization_Performer _$Immunization_PerformerFromJson(
    Map<String, dynamic> json) {
  return Immunization_Performer(
    json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
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
  );
}

Map<String, dynamic> _$Immunization_PerformerToJson(
        Immunization_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

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
        Immunization_Education instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'documentType': instance.documentType,
      'elementDocumentType': instance.elementDocumentType?.toJson(),
      'reference': instance.reference,
      'elementReference': instance.elementReference?.toJson(),
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'elementPublicationDate': instance.elementPublicationDate?.toJson(),
      'presentationDate': instance.presentationDate?.toIso8601String(),
      'elementPresentationDate': instance.elementPresentationDate?.toJson(),
    };

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
        Immunization_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'detail': instance.detail?.toJson(),
      'reported': instance.reported,
      'elementReported': instance.elementReported?.toJson(),
    };

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
        Immunization_ProtocolApplied instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'series': instance.series,
      'elementSeries': instance.elementSeries?.toJson(),
      'authority': instance.authority?.toJson(),
      'targetDisease':
          instance.targetDisease?.map((e) => e?.toJson())?.toList(),
      'doseNumberPositiveInt': instance.doseNumberPositiveInt,
      'elementDoseNumberPositiveInt':
          instance.elementDoseNumberPositiveInt?.toJson(),
      'doseNumberString': instance.doseNumberString,
      'elementDoseNumberString': instance.elementDoseNumberString?.toJson(),
      'seriesDosesPositiveInt': instance.seriesDosesPositiveInt,
      'elementSeriesDosesPositiveInt':
          instance.elementSeriesDosesPositiveInt?.toJson(),
      'seriesDosesString': instance.seriesDosesString,
      'elementSeriesDosesString': instance.elementSeriesDosesString?.toJson(),
    };
