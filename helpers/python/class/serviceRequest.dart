part 'serviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceRequest {

ServiceRequest resourceType;
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
List<Reference> replaces;
Identifier requisition;
String status;
Element _status;
String intent;
Element _intent;
List<CodeableConcept> category;
String priority;
Element _priority;
bool doNotPerform;
Element _doNotPerform;
CodeableConcept code;
List<CodeableConcept> orderDetail;
Quantity quantityQuantity;
Ratio quantityRatio;
Range quantityRange;
Reference subject;
Reference encounter;
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _occurrenceDateTime;
Period occurrencePeriod;
Timing occurrenceTiming;
bool asNeededBoolean; //  pattern: ^true|false$
Element _asNeededBoolean;
CodeableConcept asNeededCodeableConcept;
DateTime authoredOn;
Element _authoredOn;
Reference requester;
CodeableConcept performerType;
List<Reference> performer;
List<CodeableConcept> locationCode;
List<Reference> locationReference;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Reference> insurance;
List<Reference> supportingInfo;
List<Reference> specimen;
List<CodeableConcept> bodySite;
List<Annotation> note;
String patientInstruction;
Element _patientInstruction;
List<Reference> relevantHistory;

ServiceRequest(
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
      this.replaces,
      this.requisition,
      this.status,
      this._status,
      this.intent,
      this._intent,
      this.category,
      this.priority,
      this._priority,
      this.doNotPerform,
      this._doNotPerform,
      this.code,
      this.orderDetail,
      this.quantityQuantity,
      this.quantityRatio,
      this.quantityRange,
      this.subject,
      this.encounter,
      this.occurrenceDateTime,
      this._occurrenceDateTime,
      this.occurrencePeriod,
      this.occurrenceTiming,
      this.asNeededBoolean,
      this._asNeededBoolean,
      this.asNeededCodeableConcept,
      this.authoredOn,
      this._authoredOn,
      this.requester,
      this.performerType,
      this.performer,
      this.locationCode,
      this.locationReference,
      this.reasonCode,
      this.reasonReference,
      this.insurance,
      this.supportingInfo,
      this.specimen,
      this.bodySite,
      this.note,
      this.patientInstruction,
      this._patientInstruction,
      this.relevantHistory,
      });

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() _$ServiceRequestToJson(this);
}

