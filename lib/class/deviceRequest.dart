import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'deviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRequest {

  //  This is a DeviceRequest resource
  final String resourceType= 'DeviceRequest';

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
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

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
  List<dynamic> contained;

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

  //  Identifiers assigned to this order by the orderer or by the receiver.
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this
  // DeviceRequest.
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this DeviceRequest.
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  List<Element> elementInstantiatesUri;

  //  Plan/proposal/order fulfilled by this request.
  List<Reference> basedOn;

  //  The request takes the place of the referenced completed or terminated
  // request(s).
  List<Reference> priorRequest;

  //  Composite request this is part of.
  Identifier groupIdentifier;

  //  The status of the request.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  Whether the request is a proposal, plan, an original order or a reflex
  // order.
  String intent;

  //  Extensions for intent
  Element elementIntent;

  //  Indicates how quickly the {{title}} should be addressed with respect
  // to other requests.
  String priority;

  //  Extensions for priority
  Element elementPriority;

  //  The details of the device to be used.
  Reference codeReference;

  //  The details of the device to be used.
  CodeableConcept codeCodeableConcept;

  //  Specific parameters for the ordered item.  For example, the prism
  // value for lenses.
  List<DeviceRequest_Parameter> parameter;

  //  The patient who will use the device.
  Reference subject;

  //  An encounter that provides additional context in which this request is
  // made.
  Reference encounter;

  //  The timing schedule for the use of the device. The Schedule data type
  // allows many different expressions, for example. "Every 8 hours"; "Three
  // times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  // 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  Element elementOccurrenceDateTime;

  //  The timing schedule for the use of the device. The Schedule data type
  // allows many different expressions, for example. "Every 8 hours"; "Three
  // times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  // 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  Period occurrencePeriod;

  //  The timing schedule for the use of the device. The Schedule data type
  // allows many different expressions, for example. "Every 8 hours"; "Three
  // times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  // 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  Timing occurrenceTiming;

  //  When the request transitioned to being actionable.
  DateTime authoredOn;

  //  Extensions for authoredOn
  Element elementAuthoredOn;

  //  The individual who initiated the request and has responsibility for
  // its activation.
  Reference requester;

  //  Desired type of performer for doing the diagnostic testing.
  CodeableConcept performerType;

  //  The desired performer for doing the diagnostic testing.
  Reference performer;

  //  Reason or justification for the use of this device.
  List<CodeableConcept> reasonCode;

  //  Reason or justification for the use of this device.
  List<Reference> reasonReference;

  //  Insurance plans, coverage extensions, pre-authorizations and/or
  // pre-determinations that may be required for delivering the requested
  // service.
  List<Reference> insurance;

  //  Additional clinical information about the patient that may influence
  // the request fulfilment.  For example, this may include where on the
  // subject's body the device will be used (i.e. the target site).
  List<Reference> supportingInfo;

  //  Details about this request that were not represented at all or
  // sufficiently in one of the attributes provided in a class. These may
  // include for example a comment, an instruction, or a note associated
  // with the statement.
  List<Annotation> note;

  //  Key events in the history of the request.
  List<Reference> relevantHistory;

DeviceRequest(
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
    this.priorRequest,
    this.groupIdentifier,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.priority,
    this.elementPriority,
    this.codeReference,
    this.codeCodeableConcept,
    this.parameter,
    this.encounter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.note,
    this.relevantHistory
    });

  factory DeviceRequest.fromJson(Map<String, dynamic> json) => _$DeviceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceRequest_Parameter {

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

  //  A code or string that identifies the device detail being asserted.
  CodeableConcept code;

  //  The value of the device detail.
  CodeableConcept valueCodeableConcept;

  //  The value of the device detail.
  Quantity valueQuantity;

  //  The value of the device detail.
  Range valueRange;

  //  The value of the device detail.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

DeviceRequest_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    this.elementValueBoolean
    });

  factory DeviceRequest_Parameter.fromJson(Map<String, dynamic> json) => _$DeviceRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRequest_ParameterToJson(this);
}

