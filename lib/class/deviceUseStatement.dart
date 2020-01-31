import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'deviceUseStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceUseStatement {

  //  This is a DeviceUseStatement resource
  final String resourceType= 'DeviceUseStatement';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<ResourceList> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  An external identifier for this statement such as an IRI.
  List<Identifier> identifier;

  //  A plan, proposal or order that is fulfilled in whole or in part by
  // this DeviceUseStatement.
  List<Reference> basedOn;

  //  A code representing the patient or other source's judgment about the
  // state of the device used that this statement is about.  Generally this
  // will be active or completed.
  String status; // <code> enum: active/completed/entered-in-error/intended/stopped/on-hold;

  //  Extensions for status
  Element element_status;

  //  The patient who used the device.
  Reference subject;

  //  Allows linking the DeviceUseStatement to the underlying Request, or to
  // other information that supports or is used to derive the
  // DeviceUseStatement.
  List<Reference> derivedFrom;

  //  How often the device was used.
  Timing timingTiming;

  //  How often the device was used.
  Period timingPeriod;

  //  How often the device was used.
  String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timingDateTime
  Element element_timingDateTime;

  //  The time at which the statement was made/recorded.
  DateTime recordedOn;

  //  Extensions for recordedOn
  Element element_recordedOn;

  //  Who reported the device was being used by the patient.
  Reference source;

  //  The details of the device used.
  Reference device;

  //  Reason or justification for the use of the device.
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this
  // DeviceUseStatement.
  List<Reference> reasonReference;

  //  Indicates the anotomic location on the subject's body where the device
  // was used ( i.e. the target).
  CodeableConcept bodySite;

  //  Details about the device statement that were not represented at all or
  // sufficiently in one of the attributes provided in a class. These may
  // include for example a comment, an instruction, or a note associated
  // with the statement.
  List<Annotation> note;

DeviceUseStatement(
  this.subject,
    this.device,
    {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.status,
    this.element_status,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.element_timingDateTime,
    this.recordedOn,
    this.element_recordedOn,
    this.source,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.note
    });

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) => _$DeviceUseStatementFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceUseStatementToJson(this);
}

