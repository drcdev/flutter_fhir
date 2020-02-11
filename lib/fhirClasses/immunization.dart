import 'package:hive/hive.dart';
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
@HiveType(typeId: 117)
class Immunization {

  //  This is a Immunization resource
  @HiveField(0)
  final String resourceType= 'Immunization';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A unique identifier assigned to this immunization record.
  @HiveField(11)
  List<Identifier> identifier;

  //  Indicates the current status of the immunization event.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Indicates the reason the immunization event was not performed.
  @HiveField(14)
  CodeableConcept statusReason;

  //  Vaccine that was administered or was to be administered.
  @HiveField(15)
  CodeableConcept vaccineCode;

  //  The patient who either received or did not receive the immunization.
  @HiveField(16)
  Reference patient;

  //  The visit or admission or other contact between patient and health
  // care provider the immunization was performed as part of.
  @HiveField(17)
  Reference encounter;

  //  Date vaccine administered or was to be administered.
  @HiveField(18)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(19)
  Element elementOccurrenceDateTime;

  //  Date vaccine administered or was to be administered.
  @HiveField(20)
  String occurrenceString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for occurrenceString
  @HiveField(21)
  Element elementOccurrenceString;

  //  The date the occurrence of the immunization was first captured in the
  // record - potentially significantly after the occurrence of the event.
  @HiveField(22)
  DateTime recorded;

  //  Extensions for recorded
  @HiveField(23)
  Element elementRecorded;

  //  An indication that the content of the record is based on information
  // from the person who administered the vaccine. This reflects the context
  // under which the data was originally recorded.
  @HiveField(24)
  bool primarySource;

  //  Extensions for primarySource
  @HiveField(25)
  Element elementPrimarySource;

  //  The source of the data when the report of the immunization event is
  // not based on information from the person who administered the vaccine.
  @HiveField(26)
  CodeableConcept reportOrigin;

  //  The service delivery location where the vaccine administration
  // occurred.
  @HiveField(27)
  Reference location;

  //  Name of vaccine manufacturer.
  @HiveField(28)
  Reference manufacturer;

  //  Lot number of the  vaccine product.
  @HiveField(29)
  String lotNumber;

  //  Extensions for lotNumber
  @HiveField(30)
  Element elementLotNumber;

  //  Date vaccine batch expires.
  @HiveField(31)
  String expirationDate;

  //  Extensions for expirationDate
  @HiveField(32)
  Element elementExpirationDate;

  //  Body site where vaccine was administered.
  @HiveField(33)
  CodeableConcept site;

  //  The path by which the vaccine product is taken into the body.
  @HiveField(34)
  CodeableConcept route;

  //  The quantity of vaccine product that was administered.
  @HiveField(35)
  Quantity doseQuantity;

  //  Indicates who performed the immunization event.
  @HiveField(36)
  List<Immunization_Performer> performer;

  //  Extra information about the immunization that is not conveyed by the
  // other attributes.
  @HiveField(37)
  List<Annotation> note;

  //  Reasons why the vaccine was administered.
  @HiveField(38)
  List<CodeableConcept> reasonCode;

  //  Condition, Observation or DiagnosticReport that supports why the
  // immunization was administered.
  @HiveField(39)
  List<Reference> reasonReference;

  //  Indication if a dose is considered to be subpotent. By default, a dose
  // should be considered to be potent.
  @HiveField(40)
  bool isSubpotent;

  //  Extensions for isSubpotent
  @HiveField(41)
  Element elementIsSubpotent;

  //  Reason why a dose is considered to be subpotent.
  @HiveField(42)
  List<CodeableConcept> subpotentReason;

  //  Educational material presented to the patient (or guardian) at the
  // time of vaccine administration.
  @HiveField(43)
  List<Immunization_Education> education;

  //  Indicates a patient's eligibility for a funding program.
  @HiveField(44)
  List<CodeableConcept> programEligibility;

  //  Indicates the source of the vaccine actually administered. This may be
  // different than the patient eligibility (e.g. the patient may be
  // eligible for a publically purchased vaccine but due to inventory
  // issues, vaccine purchased with private funds was actually
  // administered).
  @HiveField(45)
  CodeableConcept fundingSource;

  //  Categorical data indicating that an adverse event is associated in
  // time to an immunization.
  @HiveField(46)
  List<Immunization_Reaction> reaction;

  //  The protocol (set of recommendations) being followed by the provider
  // who administered the dose.
  @HiveField(47)
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Describes the type of performance (e.g. ordering provider,
  // administering provider, etc.).
  CodeableConcept function;

  //  The practitioner or organization who performed the action.
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Identifier of the material presented to the patient.
  String documentType;

  //  Extensions for documentType
  Element elementDocumentType;

  //  Reference pointer to the educational material given to the patient if
  // the information was on line.
  String reference;

  //  Extensions for reference
  Element elementReference;

  //  Date the educational material was published.
  DateTime publicationDate;

  //  Extensions for publicationDate
  Element elementPublicationDate;

  //  Date the educational material was given to the patient.
  DateTime presentationDate;

  //  Extensions for presentationDate
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Date of reaction to the immunization.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  Details of the reaction.
  Reference detail;

  //  Self-reported indicator.
  bool reported;

  //  Extensions for reported
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

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  One possible path to achieve presumed immunity against a disease -
  // within the context of an authority.
  String series;

  //  Extensions for series
  Element elementSeries;

  //  Indicates the authority who published the protocol (e.g. ACIP) that is
  // being followed.
  Reference authority;

  //  The vaccine preventable disease the dose is being administered
  // against.
  List<CodeableConcept> targetDisease;

  //  Nominal position in a series.
  int doseNumberPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for doseNumberPositiveInt
  Element elementDoseNumberPositiveInt;

  //  Nominal position in a series.
  String doseNumberString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for doseNumberString
  Element elementDoseNumberString;

  //  The recommended number of doses to achieve immunity.
  int seriesDosesPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for seriesDosesPositiveInt
  Element elementSeriesDosesPositiveInt;

  //  The recommended number of doses to achieve immunity.
  String seriesDosesString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for seriesDosesString
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
// TypeAdapterGenerator
// **************************************************************************

class ImmunizationAdapter extends TypeAdapter<Immunization> {
  @override
  final typeId = 117;

  @override
  Immunization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Immunization(
      fields[15] as CodeableConcept,
      fields[16] as Reference,
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
      statusReason: fields[14] as CodeableConcept,
      encounter: fields[17] as Reference,
      occurrenceDateTime: fields[18] as String,
      elementOccurrenceDateTime: fields[19] as Element,
      occurrenceString: fields[20] as String,
      elementOccurrenceString: fields[21] as Element,
      recorded: fields[22] as DateTime,
      elementRecorded: fields[23] as Element,
      primarySource: fields[24] as bool,
      elementPrimarySource: fields[25] as Element,
      reportOrigin: fields[26] as CodeableConcept,
      location: fields[27] as Reference,
      manufacturer: fields[28] as Reference,
      lotNumber: fields[29] as String,
      elementLotNumber: fields[30] as Element,
      expirationDate: fields[31] as String,
      elementExpirationDate: fields[32] as Element,
      site: fields[33] as CodeableConcept,
      route: fields[34] as CodeableConcept,
      doseQuantity: fields[35] as Quantity,
      performer: (fields[36] as List)?.cast<Immunization_Performer>(),
      note: (fields[37] as List)?.cast<Annotation>(),
      reasonCode: (fields[38] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[39] as List)?.cast<Reference>(),
      isSubpotent: fields[40] as bool,
      elementIsSubpotent: fields[41] as Element,
      subpotentReason: (fields[42] as List)?.cast<CodeableConcept>(),
      education: (fields[43] as List)?.cast<Immunization_Education>(),
      programEligibility: (fields[44] as List)?.cast<CodeableConcept>(),
      fundingSource: fields[45] as CodeableConcept,
      reaction: (fields[46] as List)?.cast<Immunization_Reaction>(),
      protocolApplied:
          (fields[47] as List)?.cast<Immunization_ProtocolApplied>(),
    );
  }

  @override
  void write(BinaryWriter writer, Immunization obj) {
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.vaccineCode)
      ..writeByte(16)
      ..write(obj.patient)
      ..writeByte(17)
      ..write(obj.encounter)
      ..writeByte(18)
      ..write(obj.occurrenceDateTime)
      ..writeByte(19)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(20)
      ..write(obj.occurrenceString)
      ..writeByte(21)
      ..write(obj.elementOccurrenceString)
      ..writeByte(22)
      ..write(obj.recorded)
      ..writeByte(23)
      ..write(obj.elementRecorded)
      ..writeByte(24)
      ..write(obj.primarySource)
      ..writeByte(25)
      ..write(obj.elementPrimarySource)
      ..writeByte(26)
      ..write(obj.reportOrigin)
      ..writeByte(27)
      ..write(obj.location)
      ..writeByte(28)
      ..write(obj.manufacturer)
      ..writeByte(29)
      ..write(obj.lotNumber)
      ..writeByte(30)
      ..write(obj.elementLotNumber)
      ..writeByte(31)
      ..write(obj.expirationDate)
      ..writeByte(32)
      ..write(obj.elementExpirationDate)
      ..writeByte(33)
      ..write(obj.site)
      ..writeByte(34)
      ..write(obj.route)
      ..writeByte(35)
      ..write(obj.doseQuantity)
      ..writeByte(36)
      ..write(obj.performer)
      ..writeByte(37)
      ..write(obj.note)
      ..writeByte(38)
      ..write(obj.reasonCode)
      ..writeByte(39)
      ..write(obj.reasonReference)
      ..writeByte(40)
      ..write(obj.isSubpotent)
      ..writeByte(41)
      ..write(obj.elementIsSubpotent)
      ..writeByte(42)
      ..write(obj.subpotentReason)
      ..writeByte(43)
      ..write(obj.education)
      ..writeByte(44)
      ..write(obj.programEligibility)
      ..writeByte(45)
      ..write(obj.fundingSource)
      ..writeByte(46)
      ..write(obj.reaction)
      ..writeByte(47)
      ..write(obj.protocolApplied);
  }
}

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
