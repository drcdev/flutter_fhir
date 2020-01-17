import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:json_annotation/json_annotation.dart';
part 'serviceRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceRequest {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  List<String> instantiatesCanonical; //ToDo: workout canonical
  List<String> instantiatesUri;
  List<Reference> basedOn;
  List<Reference> replaces;
  Identifier requisition;
  String status;
  String intent;
  List<CodeableConcept> category;
  String priority;
  bool doNotPerform;
  CodeableConcept code;
  List<CodeableConcept> orderDetail;
  Quantity quantityQuantity;
  Ratio quantityRatio;
  Range quantityRange;
  Reference subject;
  Reference encounter;
  DateTime occurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  bool asNeededBoolean;
  CodeableConcept asNeededCodeableConcept;
  DateTime authoredOn;
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
  List<Reference> relevantHistory;

  ServiceRequest(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.identifier,
        this.instantiatesCanonical,
        this.instantiatesUri,
        this.basedOn,
        this.replaces,
        this.requisition,
        this.status,
        this.intent,
        this.category,
        this.priority,
        this.doNotPerform,
        this.code,
        this.orderDetail,
        this.quantityQuantity,
        this.quantityRatio,
        this.quantityRange,
        this.subject,
        this.encounter,
        this.occurrenceDateTime,
        this.occurrencePeriod,
        this.occurrenceTiming,
        this.asNeededBoolean,
        this.asNeededCodeableConcept,
        this.authoredOn,
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
        this.relevantHistory});

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);
}