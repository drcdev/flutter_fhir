import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'subscription.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription {

//  This is a Subscription resource
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

//  The status of the subscription, which marks the server state for
// managing the subscription.
String status; // <code> enum: requested/active/error/off;

//  Extensions for status
Element element_status;

//  Contact details for a human to contact about the subscription. The
// primary use of this for system administrator troubleshooting.
List<ContactPoint> contact;

//  The time for the server to turn the subscription off.
DateTime end;

//  Extensions for end
Element element_end;

//  A description of why this subscription is defined.
String reason;

//  Extensions for reason
Element element_reason;

//  The rules that the server should use to determine when to generate
// notifications for this subscription.
String criteria;

//  Extensions for criteria
Element element_criteria;

//  A record of the last error that occurred when the server processed a
// notification.
String error;

//  Extensions for error
Element element_error;

//  Details where to send notifications when resources are received that
// meet the criteria.
Subscription_Channel channel;

Subscription(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.status,
    this.element_status,
    this.contact,
    this.end,
    this.element_end,
    this.reason,
    this.element_reason,
    this.criteria,
    this.element_criteria,
    this.error,
    this.element_error,
    this.channel
    });

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Subscription_Channel {

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

//  The type of channel to send notifications on.
String type; // <code> enum: rest-hook/websocket/email/sms/message;

//  Extensions for type
Element element_type;

//  The url that describes the actual end-point to send messages to.
String endpoint;

//  Extensions for endpoint
Element element_endpoint;

//  The mime type to send the payload in - either application/fhir+xml, or
// application/fhir+json. If the payload is not present, then there is no
// payload in the notification, just a notification. The mime type
// "text/plain" may also be used for Email and SMS subscriptions.
String payload;

//  Extensions for payload
Element element_payload;

//  Additional headers / information to send as part of the notification.
List<String> header;

//  Extensions for header
List<Element> element_header;

Subscription_Channel(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.endpoint,
    this.element_endpoint,
    this.payload,
    this.element_payload,
    this.header,
    this.element_header
    });

  factory Subscription_Channel.fromJson(Map<String, dynamic> json) => _$Subscription_ChannelFromJson(json);
  Map<String, dynamic> toJson() => _$Subscription_ChannelToJson(this);
}

