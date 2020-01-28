import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'endpoint.g.dart';

@JsonSerializable(explicitToJson: true)
class Endpoint {

//  This is a Endpoint resource
String resourceType;

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

//  The base language in which the resource is written.
String language;

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

//  Identifier for the organization that is used to identify the endpoint
// across multiple disparate systems.
List<Identifier> identifier;

//  active | suspended | error | off | test.
String status; // <code> enum: active/suspended/error/off/entered-in-error/test;

//  A coded value that represents the technical details of the usage of
// this endpoint, such as what WSDLs should be used in what way. (e.g.
// XDS.b/DICOM/cds-hook).
Coding connectionType;

//  A friendly name that this endpoint can be referred to with.
String name;

//  The organization that manages this endpoint (even if technically
// another organization is hosting this in the cloud, it is the
// organization associated with the data).
Reference managingOrganization;

//  Contact details for a human to contact about the subscription. The
// primary use of this for system administrator troubleshooting.
List<ContactPoint> contact;

//  The interval during which the endpoint is expected to be operational.
Period period;

//  The payload type describes the acceptable content that can be
// communicated on the endpoint.
List<CodeableConcept> payloadType;

//  The mime type to send the payload in - e.g. application/fhir+xml,
// application/fhir+json. If the mime type is not specified, then the
// sender could send any content (including no content depending on the
// connectionType).
List<String> payloadMimeType;

//  The uri that describes the actual end-point to connect to.
String address;

//  Additional headers / information to send as part of the notification.
List<String> header;

Endpoint(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.connectionType,
    this.name,
    this.managingOrganization,
    this.contact,
    this.period,
    this.payloadType,
    this.payloadMimeType,
    this.address,
    this.header
    });

  factory Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$EndpointToJson(this);
}

