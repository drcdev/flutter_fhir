import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 403)
class MedicinalProductAuthorization {

  //  This is a MedicinalProductAuthorization resource
  @HiveField(0)
  final String resourceType= 'MedicinalProductAuthorization';

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

  //  Business identifier for the marketing authorization, as assigned by a
  // regulator.
  @HiveField(11)
  List<Identifier> identifier;

  //  The medicinal product that is being authorized.
  @HiveField(12)
  Reference subject;

  //  The country in which the marketing authorization has been granted.
  @HiveField(13)
  List<CodeableConcept> country;

  //  Jurisdiction within a country.
  @HiveField(14)
  List<CodeableConcept> jurisdiction;

  //  The status of the marketing authorization.
  @HiveField(15)
  CodeableConcept status;

  //  The date at which the given status has become applicable.
  @HiveField(16)
  DateTime statusDate;

  //  Extensions for statusDate
  @HiveField(17)
  Element elementStatusDate;

  //  The date when a suspended the marketing or the marketing authorization
  // of the product is anticipated to be restored.
  @HiveField(18)
  DateTime restoreDate;

  //  Extensions for restoreDate
  @HiveField(19)
  Element elementRestoreDate;

  //  The beginning of the time period in which the marketing authorization
  // is in the specific status shall be specified A complete date consisting
  // of day, month and year shall be specified using the ISO 8601 date
  // format.
  @HiveField(20)
  Period validityPeriod;

  //  A period of time after authorization before generic product
  // applicatiosn can be submitted.
  @HiveField(21)
  Period dataExclusivityPeriod;

  //  The date when the first authorization was granted by a Medicines
  // Regulatory Agency.
  @HiveField(22)
  DateTime dateOfFirstAuthorization;

  //  Extensions for dateOfFirstAuthorization
  @HiveField(23)
  Element elementDateOfFirstAuthorization;

  //  Date of first marketing authorization for a company's new medicinal
  // product in any country in the World.
  @HiveField(24)
  DateTime internationalBirthDate;

  //  Extensions for internationalBirthDate
  @HiveField(25)
  Element elementInternationalBirthDate;

  //  The legal framework against which this authorization is granted.
  @HiveField(26)
  CodeableConcept legalBasis;

  //  Authorization in areas within a country.
  @HiveField(27)
  List<MedicinalProductAuthorization_JurisdictionalAuthorization> jurisdictionalAuthorization;

  //  Marketing Authorization Holder.
  @HiveField(28)
  Reference holder;

  //  Medicines Regulatory Agency.
  @HiveField(29)
  Reference regulator;

  //  The regulatory procedure for granting or amending a marketing
  // authorization.
  @HiveField(30)
  MedicinalProductAuthorization_Procedure procedure;

MedicinalProductAuthorization(
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
    this.procedure
    });

  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 404)
class MedicinalProductAuthorization_JurisdictionalAuthorization {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The assigned number for the marketing authorization.
  @HiveField(3)
  List<Identifier> identifier;

  //  Country of authorization.
  @HiveField(4)
  CodeableConcept country;

  //  Jurisdiction within a country.
  @HiveField(5)
  List<CodeableConcept> jurisdiction;

  //  The legal status of supply in a jurisdiction or region.
  @HiveField(6)
  CodeableConcept legalStatusOfSupply;

  //  The start and expected end date of the authorization.
  @HiveField(7)
  Period validityPeriod;

MedicinalProductAuthorization_JurisdictionalAuthorization(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.country,
    this.jurisdiction,
    this.legalStatusOfSupply,
    this.validityPeriod
    });

  factory MedicinalProductAuthorization_JurisdictionalAuthorization.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_JurisdictionalAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 405)
class MedicinalProductAuthorization_Procedure {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Identifier for this procedure.
  @HiveField(3)
  Identifier identifier;

  //  Type of procedure.
  @HiveField(4)
  CodeableConcept type;

  //  Date of procedure.
  @HiveField(5)
  Period datePeriod;

  //  Date of procedure.
  @HiveField(6)
  String dateDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for dateDateTime
  @HiveField(7)
  Element elementDateDateTime;

  //  Applcations submitted to obtain a marketing authorization.
  @HiveField(8)
  List<MedicinalProductAuthorization_Procedure> application;

MedicinalProductAuthorization_Procedure(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.datePeriod,
    this.dateDateTime,
    this.elementDateDateTime,
    this.application
    });

  factory MedicinalProductAuthorization_Procedure.fromJson(Map<String, dynamic> json) => _$MedicinalProductAuthorization_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductAuthorization_ProcedureToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductAuthorizationAdapter
    extends TypeAdapter<MedicinalProductAuthorization> {
  @override
  final typeId = 403;

  @override
  MedicinalProductAuthorization read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductAuthorization(
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
  final typeId = 404;

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
  final typeId = 405;

  @override
  MedicinalProductAuthorization_Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductAuthorization_Procedure(
      fields[4] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      identifier: fields[3] as Identifier,
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductAuthorization _$MedicinalProductAuthorizationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductAuthorization(
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
        MedicinalProductAuthorization instance) =>
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
      'subject': instance.subject?.toJson(),
      'country': instance.country?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'status': instance.status?.toJson(),
      'statusDate': instance.statusDate?.toIso8601String(),
      'elementStatusDate': instance.elementStatusDate?.toJson(),
      'restoreDate': instance.restoreDate?.toIso8601String(),
      'elementRestoreDate': instance.elementRestoreDate?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
      'dataExclusivityPeriod': instance.dataExclusivityPeriod?.toJson(),
      'dateOfFirstAuthorization':
          instance.dateOfFirstAuthorization?.toIso8601String(),
      'elementDateOfFirstAuthorization':
          instance.elementDateOfFirstAuthorization?.toJson(),
      'internationalBirthDate':
          instance.internationalBirthDate?.toIso8601String(),
      'elementInternationalBirthDate':
          instance.elementInternationalBirthDate?.toJson(),
      'legalBasis': instance.legalBasis?.toJson(),
      'jurisdictionalAuthorization': instance.jurisdictionalAuthorization
          ?.map((e) => e?.toJson())
          ?.toList(),
      'holder': instance.holder?.toJson(),
      'regulator': instance.regulator?.toJson(),
      'procedure': instance.procedure?.toJson(),
    };

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

Map<String,
    dynamic> _$MedicinalProductAuthorization_JurisdictionalAuthorizationToJson(
        MedicinalProductAuthorization_JurisdictionalAuthorization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'country': instance.country?.toJson(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'legalStatusOfSupply': instance.legalStatusOfSupply?.toJson(),
      'validityPeriod': instance.validityPeriod?.toJson(),
    };

MedicinalProductAuthorization_Procedure
    _$MedicinalProductAuthorization_ProcedureFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductAuthorization_Procedure(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
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
        MedicinalProductAuthorization_Procedure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'type': instance.type?.toJson(),
      'datePeriod': instance.datePeriod?.toJson(),
      'dateDateTime': instance.dateDateTime,
      'elementDateDateTime': instance.elementDateDateTime?.toJson(),
      'application': instance.application?.map((e) => e?.toJson())?.toList(),
    };
