

part 'supplyRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class SupplyRequest {

  This is a SupplyRequest resource resourceType;
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
  enum: draftactivesuspendedcancelledcompletedentered-in-errorunknown status;
  Element _status;
  CodeableConcept category;
  String priority;
  Element _priority;
  CodeableConcept itemCodeableConcept;
  Reference itemReference;
  Quantity quantity;
  List<SupplyRequest_Parameter> parameter;
  String occurrenceDateTime;
  Element _occurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  StringTime authoredOn;
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
this.deliverTo});

  factory SupplyRequest.fromJson(Map<String, dynamic> json) => _$SupplyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequestToJson(this);
}