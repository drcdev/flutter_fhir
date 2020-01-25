

part 'chargeItem.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItem {

  This is a ChargeItem resource resourceType;
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
  List<String> definitionUri;
  List<Element> _definitionUri;
  List<String> definitionCanonical;
  enum: plannedbillablenot-billableabortedbilledentered-in-errorunknown status;
  Element _status;
  List<Reference> partOf;
  CodeableConcept code;
  Reference subject;
  Reference context;
  String occurrenceDateTime;
  Element _occurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  List<ChargeItem_Performer> performer;
  Reference performingOrganization;
  Reference requestingOrganization;
  Reference costCenter;
  Quantity quantity;
  List<CodeableConcept> bodysite;
  double factorOverride;
  Element _factorOverride;
  Money priceOverride;
  String overrideReason;
  Element _overrideReason;
  Reference enterer;
  StringTime enteredDate;
  Element _enteredDate;
  List<CodeableConcept> reason;
  List<Reference> service;
  Reference productReference;
  CodeableConcept productCodeableConcept;
  List<Reference> account;
  List<Annotation> note;
  List<Reference> supportingInformation;


ChargeItem(
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
this.definitionUri,
this._definitionUri,
this.definitionCanonical,
this.status,
this._status,
this.partOf,
this.code,
this.subject,
this.context,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.performer,
this.performingOrganization,
this.requestingOrganization,
this.costCenter,
this.quantity,
this.bodysite,
this.factorOverride,
this._factorOverride,
this.priceOverride,
this.overrideReason,
this._overrideReason,
this.enterer,
this.enteredDate,
this._enteredDate,
this.reason,
this.service,
this.productReference,
this.productCodeableConcept,
this.account,
this.note,
this.supportingInformation});

  factory ChargeItem.fromJson(Map<String, dynamic> json) => _$ChargeItemFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemToJson(this);
}