part 'supplyRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyRequest {

SupplyRequest resourceType;
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
String status; // <code> enum: draft/active/suspended/cancelled/completed/entered-in-error/unknown;
Element _status;
CodeableConcept category;
String priority;
Element _priority;
CodeableConcept itemCodeableConcept;
Reference itemReference;
Quantity quantity;
List<SupplyRequest_Parameter> parameter;
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
List<Reference> supplier;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
Reference deliverFrom;
Reference deliverTo;

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
      this.deliverTo,
      });

  factory SupplyRequest.fromJson(Map<String, dynamic> json) => _$SupplyRequestFromJson(json);
  Map<String, dynamic> toJson() _$SupplyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyRequest_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
Quantity valueQuantity;
Range valueRange;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;

SupplyRequest_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueRange,
      this.valueBoolean,
      this._valueBoolean,
      });

  factory SupplyRequest_Parameter.fromJson(Map<String, dynamic> json) => _$SupplyRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$SupplyRequest_ParameterToJson(this);
}

