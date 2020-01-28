
part 'supplyDelivery.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyDelivery {
  
  // This is a SupplyDelivery 
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

  // Identifier for the supply delivery event that is used to identify it across
  //  multiple disparate systems.
  List<Identifier identifier;

  // A plan, proposal or order that is fulfilled in whole or in part by this
  //  event.
  List<Reference basedOn;

  // A larger event of which this particular event is a component or step.
  List<Reference partOf;

  // A code specifying the state of the dispense event.Enum enum; //
  //  in-progresscompletedabandonedentered-in-error status;

  // Extensions for status
  Element _status;

  // A link to a resource representing the person whom the delivered item is
  //  for.
  Reference patient;

  // Indicates the type of dispensing event that is performed. Examples include:
  //  Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.
  CodeableConcept type;

  // The item that is being delivered or has been supplied.
  SupplyDelivery_SuppliedItem suppliedItem;

  // The date or time(s) the activity occurred. string occurrenceDateTime;

  // Extensions for occurrenceDateTime
  Element _occurrenceDateTime;

  // The date or time(s) the activity occurred.
  Period occurrencePeriod;

  // The date or time(s) the activity occurred.
  Timing occurrenceTiming;

  // The individual responsible for dispensing the medication, supplier or
  //  device.
  Reference supplier;

  // Identification of the facility/location where the Supply was shipped to, as
  //  part of the dispense event.
  Reference destination;

  // Identifies the person who picked up the Supply.
  List<Reference receiver
SupplyDelivery(
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
this.basedOn,
this.partOf,
this.status,
this._status,
this.patient,
this.type,
this.suppliedItem,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.supplier,
this.destination,
this.receiver});

  factory SupplyDelivery.fromJson(Map<String, dynamic> json) => _$SupplyDeliveryFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyDeliveryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyDelivery_SuppliedItem {

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

  // The amount of supply that has been dispensed. Includes unit of measure.
  Quantity quantity;

  // Identifies the medication, substance or device being dispensed. This is
  //  either a link to a resource representing the details of the item or a code that
  //  identifies the item from a known list.
  CodeableConcept itemCodeableConcept;

  // Identifies the medication, substance or device being dispensed. This is
  //  either a link to a resource representing the details of the item or a code that
  //  identifies the item from a known list.
  Reference itemReference
SupplyDelivery_SuppliedItem(
      {this.id,
this.extension,
this.modifierExtension,
this.quantity,
this.itemCodeableConcept,
this.itemReference});

  factory SupplyDelivery_SuppliedItem.fromJson(Map<String, dynamic> json) => _$SupplyDelivery_SuppliedItemFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyDelivery_SuppliedItemToJson(this);
}