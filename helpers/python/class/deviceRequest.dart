

part 'deviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRequest {

  This is a DeviceRequest resource resourceType;
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
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> _instantiatesUri;
  List<Reference> basedOn;
  List<Reference> priorRequest;
  Identifier groupIdentifier;
  String status;
  Element _status;
  String intent;
  Element _intent;
  String priority;
  Element _priority;
  Reference codeReference;
  CodeableConcept codeCodeableConcept;
  List<DeviceRequest_Parameter> parameter;
  Reference subject;
  Reference encounter;
  String occurrenceDateTime;
  Element _occurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  StringTime authoredOn;
  Element _authoredOn;
  Reference requester;
  CodeableConcept performerType;
  Reference performer;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<Reference> insurance;
  List<Reference> supportingInfo;
  List<Annotation> note;
  List<Reference> relevantHistory;


DeviceRequest(
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
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.basedOn,
this.priorRequest,
this.groupIdentifier,
this.status,
this._status,
this.intent,
this._intent,
this.priority,
this._priority,
this.codeReference,
this.codeCodeableConcept,
this.parameter,
this.subject,
this.encounter,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.authoredOn,
this._authoredOn,
this.requester,
this.performerType,
this.performer,
this.reasonCode,
this.reasonReference,
this.insurance,
this.supportingInfo,
this.note,
this.relevantHistory});

  factory DeviceRequest.fromJson(Map<String, dynamic> json) => _$DeviceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceRequestToJson(this);
}