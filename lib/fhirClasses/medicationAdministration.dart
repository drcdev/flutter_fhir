import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
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
@HiveType(typeId: 369)
class MedicationAdministration {

  //  This is a MedicationAdministration resource
  @HiveField(0)
  final String resourceType= 'MedicationAdministration';

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

  //  Identifiers associated with this Medication Administration that are
  // defined by business processes and/or used to refer to it when a direct
  // URL reference to the resource itself is not appropriate. They are
  // business identifiers assigned to this resource by the performer or
  // other systems and remain constant as the resource is updated and
  // propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  A protocol, guideline, orderset, or other definition that was adhered
  // to in whole or in part by this event.
  @HiveField(12)
  List<String> instantiates;

  //  Extensions for instantiates
  @HiveField(13)
  List<Element> elementInstantiates;

  //  A larger event of which this particular event is a component or step.
  @HiveField(14)
  List<Reference> partOf;

  //  Will generally be set to show that the administration has been
  // completed.  For some long running administrations such as infusions, it
  // is possible for an administration to be started but not completed or it
  // may be paused while some other process is under way.
  @HiveField(15)
  String status;

  //  Extensions for status
  @HiveField(16)
  Element elementStatus;

  //  A code indicating why the administration was not performed.
  @HiveField(17)
  List<CodeableConcept> statusReason;

  //  Indicates where the medication is expected to be consumed or
  // administered.
  @HiveField(18)
  CodeableConcept category;

  //  Identifies the medication that was administered. This is either a link
  // to a resource representing the details of the medication or a simple
  // attribute carrying a code that identifies the medication from a known
  // list of medications.
  @HiveField(19)
  CodeableConcept medicationCodeableConcept;

  //  Identifies the medication that was administered. This is either a link
  // to a resource representing the details of the medication or a simple
  // attribute carrying a code that identifies the medication from a known
  // list of medications.
  @HiveField(20)
  Reference medicationReference;

  //  The person or animal or group receiving the medication.
  @HiveField(21)
  Reference subject;

  //  The visit, admission, or other contact between patient and health care
  // provider during which the medication administration was performed.
  @HiveField(22)
  Reference context;

  //  Additional information (for example, patient height and weight) that
  // supports the administration of the medication.
  @HiveField(23)
  List<Reference> supportingInformation;

  //  A specific date/time or interval of time during which the
  // administration took place (or did not take place, when the 'notGiven'
  // attribute is true). For many administrations, such as swallowing a
  // tablet the use of dateTime is more appropriate.
  @HiveField(24)
  String effectiveDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for effectiveDateTime
  @HiveField(25)
  Element elementEffectiveDateTime;

  //  A specific date/time or interval of time during which the
  // administration took place (or did not take place, when the 'notGiven'
  // attribute is true). For many administrations, such as swallowing a
  // tablet the use of dateTime is more appropriate.
  @HiveField(26)
  Period effectivePeriod;

  //  Indicates who or what performed the medication administration and how
  // they were involved.
  @HiveField(27)
  List<MedicationAdministration_Performer> performer;

  //  A code indicating why the medication was given.
  @HiveField(28)
  List<CodeableConcept> reasonCode;

  //  Condition or observation that supports why the medication was
  // administered.
  @HiveField(29)
  List<Reference> reasonReference;

  //  The original request, instruction or authority to perform the
  // administration.
  @HiveField(30)
  Reference request;

  //  The device used in administering the medication to the patient.  For
  // example, a particular infusion pump.
  @HiveField(31)
  List<Reference> device;

  //  Extra information about the medication administration that is not
  // conveyed by the other attributes.
  @HiveField(32)
  List<Annotation> note;

  //  Describes the medication dosage information details e.g. dose, rate,
  // site, route, etc.
  @HiveField(33)
  MedicationAdministration_Dosage dosage;

  //  A summary of the events of interest that have occurred, such as when
  // the administration was verified.
  @HiveField(34)
  List<Reference> eventHistory;

MedicationAdministration(
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
    this.instantiates,
    this.elementInstantiates,
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.elementEffectiveDateTime,
    this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory
    });

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 370)
class MedicationAdministration_Performer {

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

  //  Distinguishes the type of involvement of the performer in the
  // medication administration.
  @HiveField(3)
  CodeableConcept function;

  //  Indicates who or what performed the medication administration.
  @HiveField(4)
  Reference actor;

MedicationAdministration_Performer(
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.function
    });

  factory MedicationAdministration_Performer.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 371)
class MedicationAdministration_Dosage {

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

  //  Free text dosage can be used for cases where the dosage administered
  // is too complex to code. When coded dosage is present, the free text
  // dosage may still be present for display to humans.  The dosage
  // instructions should reflect the dosage of the medication that was
  // administered.
  @HiveField(3)
  String text;

  //  Extensions for text
  @HiveField(4)
  Element elementText;

  //  A coded specification of the anatomic site where the medication first
  // entered the body.  For example, "left arm".
  @HiveField(5)
  CodeableConcept site;

  //  A code specifying the route or physiological path of administration of
  // a therapeutic agent into or onto the patient.  For example, topical,
  // intravenous, etc.
  @HiveField(6)
  CodeableConcept route;

  //  A coded value indicating the method by which the medication is
  // intended to be or was introduced into or on the body.  This attribute
  // will most often NOT be populated.  It is most commonly used for
  // injections.  For example, Slow Push, Deep IV.
  @HiveField(7)
  CodeableConcept method;

  //  The amount of the medication given at one administration event.   Use
  // this value when the administration is essentially an instantaneous
  // event such as a swallowing a tablet or giving an injection.
  @HiveField(8)
  Quantity dose;

  //  Identifies the speed with which the medication was or will be
  // introduced into the patient.  Typically, the rate for an infusion e.g.
  // 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per
  // unit of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or
  // 200 mcg/1 minute; 1 liter/8 hours.
  @HiveField(9)
  Ratio rateRatio;

  //  Identifies the speed with which the medication was or will be
  // introduced into the patient.  Typically, the rate for an infusion e.g.
  // 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per
  // unit of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or
  // 200 mcg/1 minute; 1 liter/8 hours.
  @HiveField(10)
  Quantity rateQuantity;

MedicationAdministration_Dosage(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.text,
    this.elementText,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity
    });

  factory MedicationAdministration_Dosage.fromJson(Map<String, dynamic> json) => _$MedicationAdministration_DosageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationAdministration_DosageToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationAdministrationAdapter
    extends TypeAdapter<MedicationAdministration> {
  @override
  final typeId = 369;

  @override
  MedicationAdministration read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationAdministration(
      fields[21] as Reference,
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
      instantiates: (fields[12] as List)?.cast<String>(),
      elementInstantiates: (fields[13] as List)?.cast<Element>(),
      partOf: (fields[14] as List)?.cast<Reference>(),
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      statusReason: (fields[17] as List)?.cast<CodeableConcept>(),
      category: fields[18] as CodeableConcept,
      medicationCodeableConcept: fields[19] as CodeableConcept,
      medicationReference: fields[20] as Reference,
      context: fields[22] as Reference,
      supportingInformation: (fields[23] as List)?.cast<Reference>(),
      effectiveDateTime: fields[24] as String,
      elementEffectiveDateTime: fields[25] as Element,
      effectivePeriod: fields[26] as Period,
      performer:
          (fields[27] as List)?.cast<MedicationAdministration_Performer>(),
      reasonCode: (fields[28] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[29] as List)?.cast<Reference>(),
      request: fields[30] as Reference,
      device: (fields[31] as List)?.cast<Reference>(),
      note: (fields[32] as List)?.cast<Annotation>(),
      dosage: fields[33] as MedicationAdministration_Dosage,
      eventHistory: (fields[34] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationAdministration obj) {
    writer
      ..writeByte(35)
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
      ..write(obj.instantiates)
      ..writeByte(13)
      ..write(obj.elementInstantiates)
      ..writeByte(14)
      ..write(obj.partOf)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.statusReason)
      ..writeByte(18)
      ..write(obj.category)
      ..writeByte(19)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(20)
      ..write(obj.medicationReference)
      ..writeByte(21)
      ..write(obj.subject)
      ..writeByte(22)
      ..write(obj.context)
      ..writeByte(23)
      ..write(obj.supportingInformation)
      ..writeByte(24)
      ..write(obj.effectiveDateTime)
      ..writeByte(25)
      ..write(obj.elementEffectiveDateTime)
      ..writeByte(26)
      ..write(obj.effectivePeriod)
      ..writeByte(27)
      ..write(obj.performer)
      ..writeByte(28)
      ..write(obj.reasonCode)
      ..writeByte(29)
      ..write(obj.reasonReference)
      ..writeByte(30)
      ..write(obj.request)
      ..writeByte(31)
      ..write(obj.device)
      ..writeByte(32)
      ..write(obj.note)
      ..writeByte(33)
      ..write(obj.dosage)
      ..writeByte(34)
      ..write(obj.eventHistory);
  }
}

class MedicationAdministration_PerformerAdapter
    extends TypeAdapter<MedicationAdministration_Performer> {
  @override
  final typeId = 370;

  @override
  MedicationAdministration_Performer read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationAdministration_Performer(
      fields[4] as Reference,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      function: fields[3] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationAdministration_Performer obj) {
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

class MedicationAdministration_DosageAdapter
    extends TypeAdapter<MedicationAdministration_Dosage> {
  @override
  final typeId = 371;

  @override
  MedicationAdministration_Dosage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationAdministration_Dosage(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      text: fields[3] as String,
      elementText: fields[4] as Element,
      site: fields[5] as CodeableConcept,
      route: fields[6] as CodeableConcept,
      method: fields[7] as CodeableConcept,
      dose: fields[8] as Quantity,
      rateRatio: fields[9] as Ratio,
      rateQuantity: fields[10] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationAdministration_Dosage obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.elementText)
      ..writeByte(5)
      ..write(obj.site)
      ..writeByte(6)
      ..write(obj.route)
      ..writeByte(7)
      ..write(obj.method)
      ..writeByte(8)
      ..write(obj.dose)
      ..writeByte(9)
      ..write(obj.rateRatio)
      ..writeByte(10)
      ..write(obj.rateQuantity);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationAdministration _$MedicationAdministrationFromJson(
    Map<String, dynamic> json) {
  return MedicationAdministration(
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
    instantiates:
        (json['instantiates'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiates: (json['elementInstantiates'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: (json['statusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    effectiveDateTime: json['effectiveDateTime'] as String,
    elementEffectiveDateTime: json['elementEffectiveDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDateTime'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationAdministration_Performer.fromJson(
                e as Map<String, dynamic>))
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
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    device: (json['device'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosage: json['dosage'] == null
        ? null
        : MedicationAdministration_Dosage.fromJson(
            json['dosage'] as Map<String, dynamic>),
    eventHistory: (json['eventHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationAdministrationToJson(
        MedicationAdministration instance) =>
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
      'instantiates': instance.instantiates,
      'elementInstantiates':
          instance.elementInstantiates?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
      'subject': instance.subject?.toJson(),
      'context': instance.context?.toJson(),
      'supportingInformation':
          instance.supportingInformation?.map((e) => e?.toJson())?.toList(),
      'effectiveDateTime': instance.effectiveDateTime,
      'elementEffectiveDateTime': instance.elementEffectiveDateTime?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'request': instance.request?.toJson(),
      'device': instance.device?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'dosage': instance.dosage?.toJson(),
      'eventHistory': instance.eventHistory?.map((e) => e?.toJson())?.toList(),
    };

MedicationAdministration_Performer _$MedicationAdministration_PerformerFromJson(
    Map<String, dynamic> json) {
  return MedicationAdministration_Performer(
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

Map<String, dynamic> _$MedicationAdministration_PerformerToJson(
        MedicationAdministration_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

MedicationAdministration_Dosage _$MedicationAdministration_DosageFromJson(
    Map<String, dynamic> json) {
  return MedicationAdministration_Dosage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    site: json['site'] == null
        ? null
        : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
    route: json['route'] == null
        ? null
        : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    dose: json['dose'] == null
        ? null
        : Quantity.fromJson(json['dose'] as Map<String, dynamic>),
    rateRatio: json['rateRatio'] == null
        ? null
        : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
    rateQuantity: json['rateQuantity'] == null
        ? null
        : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationAdministration_DosageToJson(
        MedicationAdministration_Dosage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'site': instance.site?.toJson(),
      'route': instance.route?.toJson(),
      'method': instance.method?.toJson(),
      'dose': instance.dose?.toJson(),
      'rateRatio': instance.rateRatio?.toJson(),
      'rateQuantity': instance.rateQuantity?.toJson(),
    };
