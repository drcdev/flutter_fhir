import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
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
@HiveType(typeId: 165)
class Procedure {

  //  This is a Procedure resource
  @HiveField(0)
  final String resourceType= 'Procedure';

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

  //  Business identifiers assigned to this procedure by the performer or
  // other systems which remain constant as the resource is updated and is
  // propagated from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, order set or
  // other definition that is adhered to in whole or in part by this
  // Procedure.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // order set or other definition that is adhered to in whole or in part by
  // this Procedure.
  @HiveField(13)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  List<Element> elementInstantiatesUri;

  //  A reference to a resource that contains details of the request for
  // this procedure.
  @HiveField(15)
  List<Reference> basedOn;

  //  A larger event of which this particular procedure is a component or
  // step.
  @HiveField(16)
  List<Reference> partOf;

  //  A code specifying the state of the procedure. Generally, this will be
  // the in-progress or completed state.
  @HiveField(17)
  String status;

  //  Extensions for status
  @HiveField(18)
  Element elementStatus;

  //  Captures the reason for the current state of the procedure.
  @HiveField(19)
  CodeableConcept statusReason;

  //  A code that classifies the procedure for searching, sorting and
  // display purposes (e.g. "Surgical Procedure").
  @HiveField(20)
  CodeableConcept category;

  //  The specific procedure that is performed. Use text if the exact nature
  // of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  @HiveField(21)
  CodeableConcept code;

  //  The person, animal or group on which the procedure was performed.
  @HiveField(22)
  Reference subject;

  //  The Encounter during which this Procedure was created or performed or
  // to which the creation of this record is tightly associated.
  @HiveField(23)
  Reference encounter;

  //  Estimated or actual date, date-time, period, or age when the procedure
  // was performed.  Allows a period to support complex procedures that span
  // more than one date, and also allows for the length of the procedure to
  // be captured.
  @HiveField(24)
  String performedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for performedDateTime
  @HiveField(25)
  Element elementPerformedDateTime;

  //  Estimated or actual date, date-time, period, or age when the procedure
  // was performed.  Allows a period to support complex procedures that span
  // more than one date, and also allows for the length of the procedure to
  // be captured.
  @HiveField(26)
  Period performedPeriod;

  //  Estimated or actual date, date-time, period, or age when the procedure
  // was performed.  Allows a period to support complex procedures that span
  // more than one date, and also allows for the length of the procedure to
  // be captured.
  @HiveField(27)
  String performedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for performedString
  @HiveField(28)
  Element elementPerformedString;

  //  Estimated or actual date, date-time, period, or age when the procedure
  // was performed.  Allows a period to support complex procedures that span
  // more than one date, and also allows for the length of the procedure to
  // be captured.
  @HiveField(29)
  Age performedAge;

  //  Estimated or actual date, date-time, period, or age when the procedure
  // was performed.  Allows a period to support complex procedures that span
  // more than one date, and also allows for the length of the procedure to
  // be captured.
  @HiveField(30)
  Range performedRange;

  //  Individual who recorded the record and takes responsibility for its
  // content.
  @HiveField(31)
  Reference recorder;

  //  Individual who is making the procedure statement.
  @HiveField(32)
  Reference asserter;

  //  Limited to "real" people rather than equipment.
  @HiveField(33)
  List<Procedure_Performer> performer;

  //  The location where the procedure actually happened.  E.g. a newborn at
  // home, a tracheostomy at a restaurant.
  @HiveField(34)
  Reference location;

  //  The coded reason why the procedure was performed. This may be a coded
  // entity of some type, or may simply be present as text.
  @HiveField(35)
  List<CodeableConcept> reasonCode;

  //  The justification of why the procedure was performed.
  @HiveField(36)
  List<Reference> reasonReference;

  //  Detailed and structured anatomical location information. Multiple
  // locations are allowed - e.g. multiple punch biopsies of a lesion.
  @HiveField(37)
  List<CodeableConcept> bodySite;

  //  The outcome of the procedure - did it resolve the reasons for the
  // procedure being performed?
  @HiveField(38)
  CodeableConcept outcome;

  //  This could be a histology result, pathology report, surgical report,
  // etc.
  @HiveField(39)
  List<Reference> report;

  //  Any complications that occurred during the procedure, or in the
  // immediate post-performance period. These are generally tracked
  // separately from the notes, which will typically describe the procedure
  // itself rather than any 'post procedure' issues.
  @HiveField(40)
  List<CodeableConcept> complication;

  //  Any complications that occurred during the procedure, or in the
  // immediate post-performance period.
  @HiveField(41)
  List<Reference> complicationDetail;

  //  If the procedure required specific follow up - e.g. removal of
  // sutures. The follow up may be represented as a simple note or could
  // potentially be more complex, in which case the CarePlan resource can be
  // used.
  @HiveField(42)
  List<CodeableConcept> followUp;

  //  Any other notes and comments about the procedure.
  @HiveField(43)
  List<Annotation> note;

  //  A device that is implanted, removed or otherwise manipulated
  // (calibration, battery replacement, fitting a prosthesis, attaching a
  // wound-vac, etc.) as a focal portion of the Procedure.
  @HiveField(44)
  List<Procedure_FocalDevice> focalDevice;

  //  Identifies medications, devices and any other substance used as part
  // of the procedure.
  @HiveField(45)
  List<Reference> usedReference;

  //  Identifies coded items that were used as part of the procedure.
  @HiveField(46)
  List<CodeableConcept> usedCode;

Procedure(
  this.subject,
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
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.code,
    this.encounter,
    this.performedDateTime,
    this.elementPerformedDateTime,
    this.performedPeriod,
    this.performedString,
    this.elementPerformedString,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode
    });

  factory Procedure.fromJson(Map<String, dynamic> json) => _$ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_Performer {

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

  //  Distinguishes the type of involvement of the performer in the
  // procedure. For example, surgeon, anaesthetist, endoscopist.
  CodeableConcept function;

  //  The practitioner who was involved in the procedure.
  Reference actor;

  //  The organization the device or practitioner was acting on behalf of.
  Reference onBehalfOf;

Procedure_Performer(
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    this.onBehalfOf
    });

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) => _$Procedure_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_FocalDevice {

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

  //  The kind of change that happened to the device during the procedure.
  CodeableConcept action;

  //  The device that was manipulated (changed) during the procedure.
  Reference manipulated;

Procedure_FocalDevice(
  this.manipulated,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.action
    });

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) => _$Procedure_FocalDeviceFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_FocalDeviceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProcedureAdapter extends TypeAdapter<Procedure> {
  @override
  final typeId = 165;

  @override
  Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Procedure(
      fields[22] as Reference,
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
      basedOn: (fields[15] as List)?.cast<Reference>(),
      partOf: (fields[16] as List)?.cast<Reference>(),
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      statusReason: fields[19] as CodeableConcept,
      category: fields[20] as CodeableConcept,
      code: fields[21] as CodeableConcept,
      encounter: fields[23] as Reference,
      performedDateTime: fields[24] as String,
      elementPerformedDateTime: fields[25] as Element,
      performedPeriod: fields[26] as Period,
      performedString: fields[27] as String,
      elementPerformedString: fields[28] as Element,
      performedAge: fields[29] as Age,
      performedRange: fields[30] as Range,
      recorder: fields[31] as Reference,
      asserter: fields[32] as Reference,
      performer: (fields[33] as List)?.cast<Procedure_Performer>(),
      location: fields[34] as Reference,
      reasonCode: (fields[35] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[36] as List)?.cast<Reference>(),
      bodySite: (fields[37] as List)?.cast<CodeableConcept>(),
      outcome: fields[38] as CodeableConcept,
      report: (fields[39] as List)?.cast<Reference>(),
      complication: (fields[40] as List)?.cast<CodeableConcept>(),
      complicationDetail: (fields[41] as List)?.cast<Reference>(),
      followUp: (fields[42] as List)?.cast<CodeableConcept>(),
      note: (fields[43] as List)?.cast<Annotation>(),
      focalDevice: (fields[44] as List)?.cast<Procedure_FocalDevice>(),
      usedReference: (fields[45] as List)?.cast<Reference>(),
      usedCode: (fields[46] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(BinaryWriter writer, Procedure obj) {
    writer
      ..writeByte(47)
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
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.partOf)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.statusReason)
      ..writeByte(20)
      ..write(obj.category)
      ..writeByte(21)
      ..write(obj.code)
      ..writeByte(22)
      ..write(obj.subject)
      ..writeByte(23)
      ..write(obj.encounter)
      ..writeByte(24)
      ..write(obj.performedDateTime)
      ..writeByte(25)
      ..write(obj.elementPerformedDateTime)
      ..writeByte(26)
      ..write(obj.performedPeriod)
      ..writeByte(27)
      ..write(obj.performedString)
      ..writeByte(28)
      ..write(obj.elementPerformedString)
      ..writeByte(29)
      ..write(obj.performedAge)
      ..writeByte(30)
      ..write(obj.performedRange)
      ..writeByte(31)
      ..write(obj.recorder)
      ..writeByte(32)
      ..write(obj.asserter)
      ..writeByte(33)
      ..write(obj.performer)
      ..writeByte(34)
      ..write(obj.location)
      ..writeByte(35)
      ..write(obj.reasonCode)
      ..writeByte(36)
      ..write(obj.reasonReference)
      ..writeByte(37)
      ..write(obj.bodySite)
      ..writeByte(38)
      ..write(obj.outcome)
      ..writeByte(39)
      ..write(obj.report)
      ..writeByte(40)
      ..write(obj.complication)
      ..writeByte(41)
      ..write(obj.complicationDetail)
      ..writeByte(42)
      ..write(obj.followUp)
      ..writeByte(43)
      ..write(obj.note)
      ..writeByte(44)
      ..write(obj.focalDevice)
      ..writeByte(45)
      ..write(obj.usedReference)
      ..writeByte(46)
      ..write(obj.usedCode);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Procedure _$ProcedureFromJson(Map<String, dynamic> json) {
  return Procedure(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    performedDateTime: json['performedDateTime'] as String,
    elementPerformedDateTime: json['elementPerformedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementPerformedDateTime'] as Map<String, dynamic>),
    performedPeriod: json['performedPeriod'] == null
        ? null
        : Period.fromJson(json['performedPeriod'] as Map<String, dynamic>),
    performedString: json['performedString'] as String,
    elementPerformedString: json['elementPerformedString'] == null
        ? null
        : Element.fromJson(
            json['elementPerformedString'] as Map<String, dynamic>),
    performedAge: json['performedAge'] == null
        ? null
        : Age.fromJson(json['performedAge'] as Map<String, dynamic>),
    performedRange: json['performedRange'] == null
        ? null
        : Range.fromJson(json['performedRange'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    asserter: json['asserter'] == null
        ? null
        : Reference.fromJson(json['asserter'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : Procedure_Performer.fromJson(e as Map<String, dynamic>))
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
    bodySite: (json['bodySite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    report: (json['report'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    complication: (json['complication'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    complicationDetail: (json['complicationDetail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    followUp: (json['followUp'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focalDevice: (json['focalDevice'] as List)
        ?.map((e) => e == null
            ? null
            : Procedure_FocalDevice.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usedReference: (json['usedReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    usedCode: (json['usedCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProcedureToJson(Procedure instance) => <String, dynamic>{
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
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'category': instance.category?.toJson(),
      'code': instance.code?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'performedDateTime': instance.performedDateTime,
      'elementPerformedDateTime': instance.elementPerformedDateTime?.toJson(),
      'performedPeriod': instance.performedPeriod?.toJson(),
      'performedString': instance.performedString,
      'elementPerformedString': instance.elementPerformedString?.toJson(),
      'performedAge': instance.performedAge?.toJson(),
      'performedRange': instance.performedRange?.toJson(),
      'recorder': instance.recorder?.toJson(),
      'asserter': instance.asserter?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.map((e) => e?.toJson())?.toList(),
      'outcome': instance.outcome?.toJson(),
      'report': instance.report?.map((e) => e?.toJson())?.toList(),
      'complication': instance.complication?.map((e) => e?.toJson())?.toList(),
      'complicationDetail':
          instance.complicationDetail?.map((e) => e?.toJson())?.toList(),
      'followUp': instance.followUp?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'focalDevice': instance.focalDevice?.map((e) => e?.toJson())?.toList(),
      'usedReference':
          instance.usedReference?.map((e) => e?.toJson())?.toList(),
      'usedCode': instance.usedCode?.map((e) => e?.toJson())?.toList(),
    };

Procedure_Performer _$Procedure_PerformerFromJson(Map<String, dynamic> json) {
  return Procedure_Performer(
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
    onBehalfOf: json['onBehalfOf'] == null
        ? null
        : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Procedure_PerformerToJson(
        Procedure_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
      'onBehalfOf': instance.onBehalfOf?.toJson(),
    };

Procedure_FocalDevice _$Procedure_FocalDeviceFromJson(
    Map<String, dynamic> json) {
  return Procedure_FocalDevice(
    json['manipulated'] == null
        ? null
        : Reference.fromJson(json['manipulated'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    action: json['action'] == null
        ? null
        : CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Procedure_FocalDeviceToJson(
        Procedure_FocalDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'action': instance.action?.toJson(),
      'manipulated': instance.manipulated?.toJson(),
    };
