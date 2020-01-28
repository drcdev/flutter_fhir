part 'deviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRequest {

DeviceRequest resourceType;
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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
DateTime authoredOn;
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
      this.relevantHistory,
      });

  factory DeviceRequest.fromJson(Map<String, dynamic> json) => _$DeviceRequestFromJson(json);
  Map<String, dynamic> toJson() _$DeviceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceRequest_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
Quantity valueQuantity;
Range valueRange;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;

DeviceRequest_Parameter(
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

  factory DeviceRequest_Parameter.fromJson(Map<String, dynamic> json) => _$DeviceRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$DeviceRequest_ParameterToJson(this);
}

