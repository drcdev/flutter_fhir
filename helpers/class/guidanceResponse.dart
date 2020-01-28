import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/dataRequirement.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'guidanceResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class GuidanceResponse {


// This is a GuidanceResponse resource
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

// The identifier of the request associated with this response. If an identifier
//  was given as part of the request, it will be reproduced here to enable the
//  requester to more easily identify the response in a multi-request scenario.
Identifier requestIdentifier;

// Allows a service to provide  unique, business identifiers for the response.
List<Identifier> identifier;

// An identifier, CodeableConcept or canonical reference to the guidance that was
//  requested.
String moduleUri; //  pattern: ^\S*$

// Extensions for moduleUri
Element _moduleUri;

// An identifier, CodeableConcept or canonical reference to the guidance that was
//  requested.
String moduleCanonical; //  pattern: ^\S*$

// Extensions for moduleCanonical
Element _moduleCanonical;

// An identifier, CodeableConcept or canonical reference to the guidance that was
//  requested.
CodeableConcept moduleCodeableConcept;

// The status of the response. If the evaluation is completed successfully, the
//  status will indicate success. However, in order to complete the evaluation, the
//  engine may require more information. In this case, the status will be
//  data-required, and the response will contain a description of the additional
//  required information. If the evaluation completed successfully, but the engine
//  determines that a potentially more accurate response could be provided if more
//  data was available, the status will be data-requested, and the response will
//  contain a description of the additional requested information.
String status; // <code> enum: success/data-requested/data-required/in-progress/failure/entered-in-error;

// Extensions for status
Element _status;

// The patient for which the request was processed.
Reference subject;

// The encounter during which this response was created or to which the creation of
//  this record is tightly associated.
Reference encounter;

// Indicates when the guidance response was processed.
DateTime occurrenceDateTime;

// Extensions for occurrenceDateTime
Element _occurrenceDateTime;

// Provides a reference to the device that performed the guidance.
Reference performer;

// Describes the reason for the guidance response in coded or textual form.
List<CodeableConcept> reasonCode;

// Indicates the reason the request was initiated. This is typically provided as a
//  parameter to the evaluation and echoed by the service, although for some use
//  cases, such as subscription- or event-based scenarios, it may provide an
//  indication of the cause for the response.
List<Reference> reasonReference;

// Provides a mechanism to communicate additional information about the response.
List<Annotation> note;

// Messages resulting from the evaluation of the artifact or artifacts. As part of
//  evaluating the request, the engine may produce informational or warning
//  messages. These messages will be provided by this element.
List<Reference> evaluationMessage;

// The output parameters of the evaluation, if any. Many modules will result in the
//  return of specific resources such as procedure or communication requests that
//  are returned as part of the operation result. However, modules may define
//  specific outputs that would be returned as the result of the evaluation, and
//  these would be returned in this element.
Reference outputParameters;

// The actions, if any, produced by the evaluation of the artifact.
Reference result;

// If the evaluation could not be completed due to lack of information, or
//  additional information would potentially result in a more accurate response,
//  this element will a description of the data required in order to proceed with
//  the evaluation. A subsequent request to the service should include this data.
List<DataRequirement> dataRequirement;

GuidanceResponse(
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
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this._moduleUri,
    this.moduleCanonical,
    this._moduleCanonical,
    this.moduleCodeableConcept,
    this.status,
    this._status,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this._occurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement
    });

  factory GuidanceResponse.fromJson(Map<String, dynamic> json) => _$GuidanceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GuidanceResponseToJson(this);
}

