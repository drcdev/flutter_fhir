part 'supplyDelivery.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyDelivery {

SupplyDelivery resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
List<Reference> basedOn;
List<Reference> partOf;
String status; // <code> enum: in-progress/completed/abandoned/entered-in-error;
Element _status;
Reference patient;
CodeableConcept type;
SupplyDelivery_SuppliedItem suppliedItem;
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
Reference supplier;
Reference destination;
List<Reference> receiver;

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
      this.receiver,
      });

  factory SupplyDelivery.fromJson(Map<String, dynamic> json) => _$SupplyDeliveryFromJson(json);
  Map<String, dynamic> toJson() _$SupplyDeliveryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyDelivery_SuppliedItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity quantity;
CodeableConcept itemCodeableConcept;
Reference itemReference;

SupplyDelivery_SuppliedItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.quantity,
      this.itemCodeableConcept,
      this.itemReference,
      });

  factory SupplyDelivery_SuppliedItem.fromJson(Map<String, dynamic> json) => _$SupplyDelivery_SuppliedItemFromJson(json);
  Map<String, dynamic> toJson() _$SupplyDelivery_SuppliedItemToJson(this);
}

