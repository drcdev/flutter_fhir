
part 'supplyRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyRequest {
  
  // This is a SupplyRequest 
  String resourcetype;

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

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Business identifiers assigned to this SupplyRequest by the author and/or
  //  other systems. These identifiers remain constant as the resource is updated and
  //  propagates from server to server.
  List<Identifier identifier;

  // Status of the supply request.Enum enum; //
  //  draftactivesuspendedcancelledcompletedentered-in-errorunknown status;

  // Extensions for status
  Element _status;

  // Category of supply, e.g.  central, non-stock, etc. This is used to support
  //  work flows associated with the supply process.
  CodeableConcept category;

  // Indicates how quickly this SupplyRequest should be addressed with respect
  //  to other requests.
  String priority;

  // Extensions for priority
  Element _priority;

  // The item that is requested to be supplied. This is either a link to a
  //  resource representing the details of the item or a code that identifies the
  //  item from a known list.
  CodeableConcept itemCodeableConcept;

  // The item that is requested to be supplied. This is either a link to a
  //  resource representing the details of the item or a code that identifies the
  //  item from a known list.
  Reference itemReference;

  // The amount that is being ordered of the indicated item.
  Quantity quantity;

  // Specific parameters for the ordered item.  For example, the size of the
  //  indicated item.
  List<SupplyRequest_Parameter parameter;

  // When the request should be fulfilled. string occurrenceDateTime;

  // Extensions for occurrenceDateTime
  Element _occurrenceDateTime;

  // When the request should be fulfilled.
  Period occurrencePeriod;

  // When the request should be fulfilled.
  Timing occurrenceTiming;

  // When the request was made.
  StringTime authoredOn;

  // Extensions for authoredOn
  Element _authoredOn;

  // The device, practitioner, etc. who initiated the request.
  Reference requester;

  // Who is intended to fulfill the request.
  List<Reference supplier;

  // The reason why the supply item was requested.
  List<CodeableConcept reasonCode;

  // The reason why the supply item was requested.
  List<Reference reasonReference;

  // Where the supply is expected to come from.
  Reference deliverFrom;

  // Where the supply is destined to go.
  Reference deliverTo
SupplyRequest(
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
this.status,
this._status,
this.category,
this.priority,
this._priority,
this.itemCodeableConcept,
this.itemReference,
this.quantity,
this.parameter,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.authoredOn,
this._authoredOn,
this.requester,
this.supplier,
this.reasonCode,
this.reasonReference,
this.deliverFrom,
this.deliverTo});

  factory SupplyRequest.fromJson(Map<String, dynamic> json) => _$SupplyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyRequest_Parameter {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A code or string that identifies the device detail being asserted.
  CodeableConcept code;

  // The value of the device detail.
  CodeableConcept valueCodeableConcept;

  // The value of the device detail.
  Quantity valueQuantity;

  // The value of the device detail.
  Range valueRange;

  // The value of the device detail. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean
SupplyRequest_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.valueCodeableConcept,
this.valueQuantity,
this.valueRange,
this.valueBoolean,
this._valueBoolean});

  factory SupplyRequest_Parameter.fromJson(Map<String, dynamic> json) => _$SupplyRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequest_ParameterToJson(this);
}