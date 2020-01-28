import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/age.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class Procedure {


// This is a Procedure resource
String resourceType;

// The logical id of the resource, as used in the URL for the resource. Once
//  assigned, this value never changes.
String id;

// The metadata about the resource. This is content that is maintained by the
//  infrastructure. Changes to the content might not always be associated with
//  version changes to the resource.
Meta meta;

// A reference to a set of rules that were followed when the resource was
//  constructed, and which must be understood when processing the content. Often,
//  this is a reference to an implementation guide that defines the special rules
//  along with other profiles etc.
String implicitRules;

// Extensions for implicitRules
Element _implicitRules;

// The base language in which the resource is written.
String language;

// Extensions for language
Element _language;

// A human-readable narrative that contains a summary of the resource and can be
//  used to represent the content of the resource to a human. The narrative need
//  not encode all the structured data, but is required to contain sufficient
//  detail to make it "clinically safe" for a human to just read the narrative.
//  Resource definitions may define what content should be represented in the
//  narrative to ensure clinical safety.
Narrative text;

// These resources do not have an independent existence apart from the resource
//  that contains them - they cannot be identified independently, and nor can they
//  have their own independent transaction scope.
List<ResourceList> contained;

// May be used to represent additional information that is not part of the basic
//  definition of the resource. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the resource and that modifies the understanding of the element
//  that contains it and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer is allowed to define an extension, there is a set of requirements
//  that SHALL be met as part of the definition of the extension. Applications
//  processing a resource are required to check for modifier extensions.
// Modifier
//  extensions SHALL NOT change the meaning of any elements on Resource or
//  DomainResource (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Business identifiers assigned to this procedure by the performer or other
//  systems which remain constant as the resource is updated and is propagated from
//  server to server.
List<Identifier> identifier;

// The URL pointing to a FHIR-defined protocol, guideline, order set or other
//  definition that is adhered to in whole or in part by this Procedure.
List<String> instantiatesCanonical;

// The URL pointing to an externally maintained protocol, guideline, order set or
//  other definition that is adhered to in whole or in part by this Procedure.
List<String> instantiatesUri;

// Extensions for instantiatesUri
List<Element> _instantiatesUri;

// A reference to a resource that contains details of the request for this
//  procedure.
List<Reference> basedOn;

// A larger event of which this particular procedure is a component or step.
List<Reference> partOf;

// A code specifying the state of the procedure. Generally, this will be the
//  in-progress or completed state.
String status;

// Extensions for status
Element _status;

// Captures the reason for the current state of the procedure.
CodeableConcept statusReason;

// A code that classifies the procedure for searching, sorting and display purposes
//  (e.g. "Surgical Procedure").
CodeableConcept category;

// The specific procedure that is performed. Use text if the exact nature of the
//  procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
CodeableConcept code;

// The person, animal or group on which the procedure was performed.
Reference subject;

// The Encounter during which this Procedure was created or performed or to which
//  the creation of this record is tightly associated.
Reference encounter;

// Estimated or actual date, date-time, period, or age when the procedure was
//  performed.  Allows a period to support complex procedures that span more than
//  one date, and also allows for the length of the procedure to be captured.
String performedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for performedDateTime
Element _performedDateTime;

// Estimated or actual date, date-time, period, or age when the procedure was
//  performed.  Allows a period to support complex procedures that span more than
//  one date, and also allows for the length of the procedure to be captured.
Period performedPeriod;

// Estimated or actual date, date-time, period, or age when the procedure was
//  performed.  Allows a period to support complex procedures that span more than
//  one date, and also allows for the length of the procedure to be captured.
String performedString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for performedString
Element _performedString;

// Estimated or actual date, date-time, period, or age when the procedure was
//  performed.  Allows a period to support complex procedures that span more than
//  one date, and also allows for the length of the procedure to be captured.
Age performedAge;

// Estimated or actual date, date-time, period, or age when the procedure was
//  performed.  Allows a period to support complex procedures that span more than
//  one date, and also allows for the length of the procedure to be captured.
Range performedRange;

// Individual who recorded the record and takes responsibility for its content.
Reference recorder;

// Individual who is making the procedure statement.
Reference asserter;

// Limited to "real" people rather than equipment.
List<Procedure_Performer> performer;

// The location where the procedure actually happened.  E.g. a newborn at home, a
//  tracheostomy at a restaurant.
Reference location;

// The coded reason why the procedure was performed. This may be a coded entity of
//  some type, or may simply be present as text.
List<CodeableConcept> reasonCode;

// The justification of why the procedure was performed.
List<Reference> reasonReference;

// Detailed and structured anatomical location information. Multiple locations are
//  allowed - e.g. multiple punch biopsies of a lesion.
List<CodeableConcept> bodySite;

// The outcome of the procedure - did it resolve the reasons for the procedure
//  being performed?
CodeableConcept outcome;

// This could be a histology result, pathology report, surgical report, etc.
List<Reference> report;

// Any complications that occurred during the procedure, or in the immediate
//  post-performance period. These are generally tracked separately from the notes,
//  which will typically describe the procedure itself rather than any 'post
//  procedure' issues.
List<CodeableConcept> complication;

// Any complications that occurred during the procedure, or in the immediate
//  post-performance period.
List<Reference> complicationDetail;

// If the procedure required specific follow up - e.g. removal of sutures. The
//  follow up may be represented as a simple note or could potentially be more
//  complex, in which case the CarePlan resource can be used.
List<CodeableConcept> followUp;

// Any other notes and comments about the procedure.
List<Annotation> note;

// A device that is implanted, removed or otherwise manipulated (calibration,
//  battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a
//  focal portion of the Procedure.
List<Procedure_FocalDevice> focalDevice;

// Identifies medications, devices and any other substance used as part of the
//  procedure.
List<Reference> usedReference;

// Identifies coded items that were used as part of the procedure.
List<CodeableConcept> usedCode;

Procedure(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this._implicitRules,
    this.language,
    this._language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this._instantiatesUri,
    this.basedOn,
    this.partOf,
    this.status,
    this._status,
    this.statusReason,
    this.category,
    this.code,
    this.subject,
    this.encounter,
    this.performedDateTime,
    this._performedDateTime,
    this.performedPeriod,
    this.performedString,
    this._performedString,
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


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Distinguishes the type of involvement of the performer in the procedure. For
//  example, surgeon, anaesthetist, endoscopist.
CodeableConcept function;

// The practitioner who was involved in the procedure.
Reference actor;

// The organization the device or practitioner was acting on behalf of.
Reference onBehalfOf;

Procedure_Performer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    this.actor,
    this.onBehalfOf
    });

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) => _$Procedure_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_FocalDevice {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The kind of change that happened to the device during the procedure.
CodeableConcept action;

// The device that was manipulated (changed) during the procedure.
Reference manipulated;

Procedure_FocalDevice(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.action,
    this.manipulated
    });

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) => _$Procedure_FocalDeviceFromJson(json);
  Map<String, dynamic> toJson() => _$Procedure_FocalDeviceToJson(this);
}

