import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'detectedIssue.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectedIssue {

  //  This is a DetectedIssue resource
  final String resourceType= 'DetectedIssue';

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

  //  Business identifier associated with the detected issue record.
  List<Identifier> identifier;

  //  Indicates the status of the detected issue.
  String status;

  //  Extensions for status
  Element element_status;

  //  Identifies the general type of issue identified.
  CodeableConcept code;

  //  Indicates the degree of importance associated with the identified
  // issue based on the potential impact on the patient.
  String severity; // <code> enum: high/moderate/low;

  //  Extensions for severity
  Element element_severity;

  //  Indicates the patient whose record the detected issue is associated
  // with.
  Reference patient;

  //  The date or period when the detected issue was initially identified.
  String identifiedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for identifiedDateTime
  Element element_identifiedDateTime;

  //  The date or period when the detected issue was initially identified.
  Period identifiedPeriod;

  //  Individual or device responsible for the issue being raised.  For
  // example, a decision support application or a pharmacist conducting a
  // medication review.
  Reference author;

  //  Indicates the resource representing the current activity or proposed
  // activity that is potentially problematic.
  List<Reference> implicated;

  //  Supporting evidence or manifestations that provide the basis for
  // identifying the detected issue such as a GuidanceResponse or
  // MeasureReport.
  List<DetectedIssue_Evidence> evidence;

  //  A textual explanation of the detected issue.
  String detail;

  //  Extensions for detail
  Element element_detail;

  //  The literature, knowledge-base or similar reference that describes the
  // propensity for the detected issue identified.
  String reference;

  //  Extensions for reference
  Element element_reference;

  //  Indicates an action that has been taken or is committed to reduce or
  // eliminate the likelihood of the risk identified by the detected issue
  // from manifesting.  Can also reflect an observation of known mitigating
  // factors that may reduce/eliminate the need for any action.
  List<DetectedIssue_Mitigation> mitigation;

DetectedIssue(
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
    this.status,
    this.element_status,
    this.code,
    this.severity,
    this.element_severity,
    this.patient,
    this.identifiedDateTime,
    this.element_identifiedDateTime,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.element_detail,
    this.reference,
    this.element_reference,
    this.mitigation
    });

  factory DetectedIssue.fromJson(Map<String, dynamic> json) => _$DetectedIssueFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Evidence {

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

  //  A manifestation that led to the recording of this detected issue.
  List<CodeableConcept> code;

  //  Links to resources that constitute evidence for the detected issue
  // such as a GuidanceResponse or MeasureReport.
  List<Reference> detail;

DetectedIssue_Evidence(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.detail
    });

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) => _$DetectedIssue_EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_EvidenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetectedIssue_Mitigation {

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

  //  Describes the action that was taken or the observation that was made
  // that reduces/eliminates the risk associated with the identified issue.
  CodeableConcept action;

  //  Indicates when the mitigating action was documented.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  Identifies the practitioner who determined the mitigation and takes
  // responsibility for the mitigation step occurring.
  Reference author;

DetectedIssue_Mitigation(
  this.action,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.element_date,
    this.author
    });

  factory DetectedIssue_Mitigation.fromJson(Map<String, dynamic> json) => _$DetectedIssue_MitigationFromJson(json);
  Map<String, dynamic> toJson() => _$DetectedIssue_MitigationToJson(this);
}

