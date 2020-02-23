import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicationRequest {
  static Future<MedicationRequest> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    String status,
    Element elementStatus,
    CodeableConcept statusReason,
    String intent,
    Element elementIntent,
    List<CodeableConcept> category,
    String priority,
    Element elementPriority,
    bool doNotPerform,
    Element elementDoNotPerform,
    bool reportedBoolean,
    Element elementReportedBoolean,
    Reference reportedReference,
    CodeableConcept medicationCodeableConcept,
    Reference medicationReference,
    Reference subject,
    Reference encounter,
    List<Reference> supportingInformation,
    DateTime authoredOn,
    Element elementAuthoredOn,
    Reference requester,
    Reference performer,
    CodeableConcept performerType,
    Reference recorder,
    List<CodeableConcept> reasonCode,
    List<Reference> reasonReference,
    List<String> instantiatesCanonical,
    List<Element> elementInstantiatesCanonical,
    List<String> instantiatesUri,
    List<Element> elementInstantiatesUri,
    List<Reference> basedOn,
    Identifier groupIdentifier,
    CodeableConcept courseOfTherapyType,
    List<Reference> insurance,
    List<Annotation> note,
    List<Dosage> dosageInstruction,
    MedicationRequest_DispenseRequest dispenseRequest,
    MedicationRequest_Substitution substitution,
    Reference priorPrescription,
    List<Reference> detectedIssue,
    List<Reference> eventHistory,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationRequest newMedicationRequest = new MedicationRequest(
      resourceType: 'MedicationRequest',
      id: id ?? await fhirDb.newResourceId('MedicationRequest'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      status: status,
      elementStatus: elementStatus,
      statusReason: statusReason,
      intent: intent,
      elementIntent: elementIntent,
      category: category,
      priority: priority,
      elementPriority: elementPriority,
      doNotPerform: doNotPerform,
      elementDoNotPerform: elementDoNotPerform,
      reportedBoolean: reportedBoolean,
      elementReportedBoolean: elementReportedBoolean,
      reportedReference: reportedReference,
      medicationCodeableConcept: medicationCodeableConcept,
      medicationReference: medicationReference,
      subject: subject,
      encounter: encounter,
      supportingInformation: supportingInformation,
      authoredOn: authoredOn,
      elementAuthoredOn: elementAuthoredOn,
      requester: requester,
      performer: performer,
      performerType: performerType,
      recorder: recorder,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      instantiatesCanonical: instantiatesCanonical,
      elementInstantiatesCanonical: elementInstantiatesCanonical,
      instantiatesUri: instantiatesUri,
      elementInstantiatesUri: elementInstantiatesUri,
      basedOn: basedOn,
      groupIdentifier: groupIdentifier,
      courseOfTherapyType: courseOfTherapyType,
      insurance: insurance,
      note: note,
      dosageInstruction: dosageInstruction,
      dispenseRequest: dispenseRequest,
      substitution: substitution,
      priorPrescription: priorPrescription,
      detectedIssue: detectedIssue,
      eventHistory: eventHistory,
    );
    newMedicationRequest.meta.createdAt = DateTime.now();
    newMedicationRequest.meta.lastUpdated = newMedicationRequest.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicationRequest);
    return newMedicationRequest;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'MedicationRequest';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  CodeableConcept statusReason;
  @HiveField(15)
  String intent;
  @HiveField(16)
  Element elementIntent;
  @HiveField(17)
  List<CodeableConcept> category;
  @HiveField(18)
  String priority;
  @HiveField(19)
  Element elementPriority;
  @HiveField(20)
  bool doNotPerform;
  @HiveField(21)
  Element elementDoNotPerform;
  @HiveField(22)
  bool reportedBoolean;
  @HiveField(23)
  Element elementReportedBoolean;
  @HiveField(24)
  Reference reportedReference;
  @HiveField(25)
  CodeableConcept medicationCodeableConcept;
  @HiveField(26)
  Reference medicationReference;
  @HiveField(27)
  Reference subject;
  @HiveField(28)
  Reference encounter;
  @HiveField(29)
  List<Reference> supportingInformation;
  @HiveField(30)
  DateTime authoredOn;
  @HiveField(31)
  Element elementAuthoredOn;
  @HiveField(32)
  Reference requester;
  @HiveField(33)
  Reference performer;
  @HiveField(34)
  CodeableConcept performerType;
  @HiveField(35)
  Reference recorder;
  @HiveField(36)
  List<CodeableConcept> reasonCode;
  @HiveField(37)
  List<Reference> reasonReference;
  @HiveField(38)
  List<String> instantiatesCanonical;
  @HiveField(39)
  List<Element> elementInstantiatesCanonical;
  @HiveField(40)
  List<String> instantiatesUri;
  @HiveField(41)
  List<Element> elementInstantiatesUri;
  @HiveField(42)
  List<Reference> basedOn;
  @HiveField(43)
  Identifier groupIdentifier;
  @HiveField(44)
  CodeableConcept courseOfTherapyType;
  @HiveField(45)
  List<Reference> insurance;
  @HiveField(46)
  List<Annotation> note;
  @HiveField(47)
  List<Dosage> dosageInstruction;
  @HiveField(48)
  MedicationRequest_DispenseRequest dispenseRequest;
  @HiveField(49)
  MedicationRequest_Substitution substitution;
  @HiveField(50)
  Reference priorPrescription;
  @HiveField(51)
  List<Reference> detectedIssue;
  @HiveField(52)
  List<Reference> eventHistory;

  MedicationRequest({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.intent,
    this.elementIntent,
    this.category,
    this.priority,
    this.elementPriority,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.reportedBoolean,
    this.elementReportedBoolean,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
    @required this.subject,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.elementInstantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.courseOfTherapyType,
    this.insurance,
    this.note,
    this.dosageInstruction,
    this.dispenseRequest,
    this.substitution,
    this.priorPrescription,
    this.detectedIssue,
    this.eventHistory,
  });

  factory MedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequestToJson(this);
}

class MedicationRequest_DispenseRequest {
  static Future<MedicationRequest_DispenseRequest> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    MedicationRequest_InitialFill initialFill,
    Duration dispenseInterval,
    Period validityPeriod,
    int numberOfRepeatsAllowed,
    Element elementNumberOfRepeatsAllowed,
    Quantity quantity,
    Duration expectedSupplyDuration,
    Reference performer,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationRequest_DispenseRequest newMedicationRequest_DispenseRequest =
        new MedicationRequest_DispenseRequest(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      initialFill: initialFill,
      dispenseInterval: dispenseInterval,
      validityPeriod: validityPeriod,
      numberOfRepeatsAllowed: numberOfRepeatsAllowed,
      elementNumberOfRepeatsAllowed: elementNumberOfRepeatsAllowed,
      quantity: quantity,
      expectedSupplyDuration: expectedSupplyDuration,
      performer: performer,
    );
    return newMedicationRequest_DispenseRequest;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  MedicationRequest_InitialFill initialFill;
  @HiveField(4)
  Duration dispenseInterval;
  @HiveField(5)
  Period validityPeriod;
  @HiveField(6)
  int numberOfRepeatsAllowed;
  @HiveField(7)
  Element elementNumberOfRepeatsAllowed;
  @HiveField(8)
  Quantity quantity;
  @HiveField(9)
  Duration expectedSupplyDuration;
  @HiveField(10)
  Reference performer;

  MedicationRequest_DispenseRequest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.elementNumberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer,
  });

  factory MedicationRequest_DispenseRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationRequest_DispenseRequestFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationRequest_DispenseRequestToJson(this);
}

class MedicationRequest_InitialFill {
  static Future<MedicationRequest_InitialFill> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Quantity quantity,
    Duration duration,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationRequest_InitialFill newMedicationRequest_InitialFill =
        new MedicationRequest_InitialFill(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      quantity: quantity,
      duration: duration,
    );
    return newMedicationRequest_InitialFill;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Quantity quantity;
  @HiveField(4)
  Duration duration;

  MedicationRequest_InitialFill({
    this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.duration,
  });

  factory MedicationRequest_InitialFill.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequest_InitialFillFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_InitialFillToJson(this);
}

class MedicationRequest_Substitution {
  static Future<MedicationRequest_Substitution> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool allowedBoolean,
    Element elementAllowedBoolean,
    CodeableConcept allowedCodeableConcept,
    CodeableConcept reason,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationRequest_Substitution newMedicationRequest_Substitution =
        new MedicationRequest_Substitution(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      allowedBoolean: allowedBoolean,
      elementAllowedBoolean: elementAllowedBoolean,
      allowedCodeableConcept: allowedCodeableConcept,
      reason: reason,
    );
    return newMedicationRequest_Substitution;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool allowedBoolean;
  @HiveField(4)
  Element elementAllowedBoolean;
  @HiveField(5)
  CodeableConcept allowedCodeableConcept;
  @HiveField(6)
  CodeableConcept reason;

  MedicationRequest_Substitution({
    this.id,
    this.extension,
    this.modifierExtension,
    this.allowedBoolean,
    this.elementAllowedBoolean,
    this.allowedCodeableConcept,
    this.reason,
  });

  factory MedicationRequest_Substitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequest_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationRequest_SubstitutionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationRequest _$MedicationRequestFromJson(Map<String, dynamic> json) {
  return MedicationRequest(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    reportedBoolean: json['reportedBoolean'] as bool,
    elementReportedBoolean: json['elementReportedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementReportedBoolean'] as Map<String, dynamic>),
    reportedReference: json['reportedReference'] == null
        ? null
        : Reference.fromJson(json['reportedReference'] as Map<String, dynamic>),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    performerType: json['performerType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['performerType'] as Map<String, dynamic>),
    recorder: json['recorder'] == null
        ? null
        : Reference.fromJson(json['recorder'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    elementInstantiatesCanonical: (json['elementInstantiatesCanonical'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    groupIdentifier: json['groupIdentifier'] == null
        ? null
        : Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>),
    courseOfTherapyType: json['courseOfTherapyType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['courseOfTherapyType'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosageInstruction: (json['dosageInstruction'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dispenseRequest: json['dispenseRequest'] == null
        ? null
        : MedicationRequest_DispenseRequest.fromJson(
            json['dispenseRequest'] as Map<String, dynamic>),
    substitution: json['substitution'] == null
        ? null
        : MedicationRequest_Substitution.fromJson(
            json['substitution'] as Map<String, dynamic>),
    priorPrescription: json['priorPrescription'] == null
        ? null
        : Reference.fromJson(json['priorPrescription'] as Map<String, dynamic>),
    detectedIssue: (json['detectedIssue'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    eventHistory: (json['eventHistory'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationRequestToJson(MedicationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('intent', instance.intent);
  writeNotNull('elementIntent', instance.elementIntent?.toJson());
  writeNotNull(
      'category', instance.category?.map((e) => e?.toJson())?.toList());
  writeNotNull('priority', instance.priority);
  writeNotNull('elementPriority', instance.elementPriority?.toJson());
  writeNotNull('doNotPerform', instance.doNotPerform);
  writeNotNull('elementDoNotPerform', instance.elementDoNotPerform?.toJson());
  writeNotNull('reportedBoolean', instance.reportedBoolean);
  writeNotNull(
      'elementReportedBoolean', instance.elementReportedBoolean?.toJson());
  writeNotNull('reportedReference', instance.reportedReference?.toJson());
  writeNotNull('medicationCodeableConcept',
      instance.medicationCodeableConcept?.toJson());
  writeNotNull('medicationReference', instance.medicationReference?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('supportingInformation',
      instance.supportingInformation?.map((e) => e?.toJson())?.toList());
  writeNotNull('authoredOn', instance.authoredOn?.toIso8601String());
  writeNotNull('elementAuthoredOn', instance.elementAuthoredOn?.toJson());
  writeNotNull('requester', instance.requester?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  writeNotNull('performerType', instance.performerType?.toJson());
  writeNotNull('recorder', instance.recorder?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiatesCanonical', instance.instantiatesCanonical);
  writeNotNull('elementInstantiatesCanonical',
      instance.elementInstantiatesCanonical?.map((e) => e?.toJson())?.toList());
  writeNotNull('instantiatesUri', instance.instantiatesUri);
  writeNotNull('elementInstantiatesUri',
      instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e?.toJson())?.toList());
  writeNotNull('groupIdentifier', instance.groupIdentifier?.toJson());
  writeNotNull('courseOfTherapyType', instance.courseOfTherapyType?.toJson());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('dosageInstruction',
      instance.dosageInstruction?.map((e) => e?.toJson())?.toList());
  writeNotNull('dispenseRequest', instance.dispenseRequest?.toJson());
  writeNotNull('substitution', instance.substitution?.toJson());
  writeNotNull('priorPrescription', instance.priorPrescription?.toJson());
  writeNotNull('detectedIssue',
      instance.detectedIssue?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'eventHistory', instance.eventHistory?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicationRequest_DispenseRequest _$MedicationRequest_DispenseRequestFromJson(
    Map<String, dynamic> json) {
  return MedicationRequest_DispenseRequest(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    initialFill: json['initialFill'] == null
        ? null
        : MedicationRequest_InitialFill.fromJson(
            json['initialFill'] as Map<String, dynamic>),
    dispenseInterval: json['dispenseInterval'] == null
        ? null
        : Duration.fromJson(json['dispenseInterval'] as Map<String, dynamic>),
    validityPeriod: json['validityPeriod'] == null
        ? null
        : Period.fromJson(json['validityPeriod'] as Map<String, dynamic>),
    numberOfRepeatsAllowed: json['numberOfRepeatsAllowed'] as int,
    elementNumberOfRepeatsAllowed: json['elementNumberOfRepeatsAllowed'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfRepeatsAllowed'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    expectedSupplyDuration: json['expectedSupplyDuration'] == null
        ? null
        : Duration.fromJson(
            json['expectedSupplyDuration'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationRequest_DispenseRequestToJson(
    MedicationRequest_DispenseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('initialFill', instance.initialFill?.toJson());
  writeNotNull('dispenseInterval', instance.dispenseInterval?.toJson());
  writeNotNull('validityPeriod', instance.validityPeriod?.toJson());
  writeNotNull('numberOfRepeatsAllowed', instance.numberOfRepeatsAllowed);
  writeNotNull('elementNumberOfRepeatsAllowed',
      instance.elementNumberOfRepeatsAllowed?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull(
      'expectedSupplyDuration', instance.expectedSupplyDuration?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  return val;
}

MedicationRequest_InitialFill _$MedicationRequest_InitialFillFromJson(
    Map<String, dynamic> json) {
  return MedicationRequest_InitialFill(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Duration.fromJson(json['duration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationRequest_InitialFillToJson(
    MedicationRequest_InitialFill instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  return val;
}

MedicationRequest_Substitution _$MedicationRequest_SubstitutionFromJson(
    Map<String, dynamic> json) {
  return MedicationRequest_Substitution(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowedBoolean: json['allowedBoolean'] as bool,
    elementAllowedBoolean: json['elementAllowedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedBoolean'] as Map<String, dynamic>),
    allowedCodeableConcept: json['allowedCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['allowedCodeableConcept'] as Map<String, dynamic>),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationRequest_SubstitutionToJson(
    MedicationRequest_Substitution instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('allowedBoolean', instance.allowedBoolean);
  writeNotNull(
      'elementAllowedBoolean', instance.elementAllowedBoolean?.toJson());
  writeNotNull(
      'allowedCodeableConcept', instance.allowedCodeableConcept?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationRequestAdapter extends TypeAdapter<MedicationRequest> {
  @override
  MedicationRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest(
      resourceType: fields[0] as String,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusReason: fields[14] as CodeableConcept,
      intent: fields[15] as String,
      elementIntent: fields[16] as Element,
      category: (fields[17] as List)?.cast<CodeableConcept>(),
      priority: fields[18] as String,
      elementPriority: fields[19] as Element,
      doNotPerform: fields[20] as bool,
      elementDoNotPerform: fields[21] as Element,
      reportedBoolean: fields[22] as bool,
      elementReportedBoolean: fields[23] as Element,
      reportedReference: fields[24] as Reference,
      medicationCodeableConcept: fields[25] as CodeableConcept,
      medicationReference: fields[26] as Reference,
      subject: fields[27] as Reference,
      encounter: fields[28] as Reference,
      supportingInformation: (fields[29] as List)?.cast<Reference>(),
      authoredOn: fields[30] as DateTime,
      elementAuthoredOn: fields[31] as Element,
      requester: fields[32] as Reference,
      performer: fields[33] as Reference,
      performerType: fields[34] as CodeableConcept,
      recorder: fields[35] as Reference,
      reasonCode: (fields[36] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[37] as List)?.cast<Reference>(),
      instantiatesCanonical: (fields[38] as List)?.cast<String>(),
      elementInstantiatesCanonical: (fields[39] as List)?.cast<Element>(),
      instantiatesUri: (fields[40] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[41] as List)?.cast<Element>(),
      basedOn: (fields[42] as List)?.cast<Reference>(),
      groupIdentifier: fields[43] as Identifier,
      courseOfTherapyType: fields[44] as CodeableConcept,
      insurance: (fields[45] as List)?.cast<Reference>(),
      note: (fields[46] as List)?.cast<Annotation>(),
      dosageInstruction: (fields[47] as List)?.cast<Dosage>(),
      dispenseRequest: fields[48] as MedicationRequest_DispenseRequest,
      substitution: fields[49] as MedicationRequest_Substitution,
      priorPrescription: fields[50] as Reference,
      detectedIssue: (fields[51] as List)?.cast<Reference>(),
      eventHistory: (fields[52] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest obj) {
    writer
      ..writeByte(53)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.intent)
      ..writeByte(16)
      ..write(obj.elementIntent)
      ..writeByte(17)
      ..write(obj.category)
      ..writeByte(18)
      ..write(obj.priority)
      ..writeByte(19)
      ..write(obj.elementPriority)
      ..writeByte(20)
      ..write(obj.doNotPerform)
      ..writeByte(21)
      ..write(obj.elementDoNotPerform)
      ..writeByte(22)
      ..write(obj.reportedBoolean)
      ..writeByte(23)
      ..write(obj.elementReportedBoolean)
      ..writeByte(24)
      ..write(obj.reportedReference)
      ..writeByte(25)
      ..write(obj.medicationCodeableConcept)
      ..writeByte(26)
      ..write(obj.medicationReference)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.encounter)
      ..writeByte(29)
      ..write(obj.supportingInformation)
      ..writeByte(30)
      ..write(obj.authoredOn)
      ..writeByte(31)
      ..write(obj.elementAuthoredOn)
      ..writeByte(32)
      ..write(obj.requester)
      ..writeByte(33)
      ..write(obj.performer)
      ..writeByte(34)
      ..write(obj.performerType)
      ..writeByte(35)
      ..write(obj.recorder)
      ..writeByte(36)
      ..write(obj.reasonCode)
      ..writeByte(37)
      ..write(obj.reasonReference)
      ..writeByte(38)
      ..write(obj.instantiatesCanonical)
      ..writeByte(39)
      ..write(obj.elementInstantiatesCanonical)
      ..writeByte(40)
      ..write(obj.instantiatesUri)
      ..writeByte(41)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(42)
      ..write(obj.basedOn)
      ..writeByte(43)
      ..write(obj.groupIdentifier)
      ..writeByte(44)
      ..write(obj.courseOfTherapyType)
      ..writeByte(45)
      ..write(obj.insurance)
      ..writeByte(46)
      ..write(obj.note)
      ..writeByte(47)
      ..write(obj.dosageInstruction)
      ..writeByte(48)
      ..write(obj.dispenseRequest)
      ..writeByte(49)
      ..write(obj.substitution)
      ..writeByte(50)
      ..write(obj.priorPrescription)
      ..writeByte(51)
      ..write(obj.detectedIssue)
      ..writeByte(52)
      ..write(obj.eventHistory);
  }
}

class MedicationRequest_DispenseRequestAdapter
    extends TypeAdapter<MedicationRequest_DispenseRequest> {
  @override
  MedicationRequest_DispenseRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest_DispenseRequest(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      initialFill: fields[3] as MedicationRequest_InitialFill,
      dispenseInterval: fields[4] as Duration,
      validityPeriod: fields[5] as Period,
      numberOfRepeatsAllowed: fields[6] as int,
      elementNumberOfRepeatsAllowed: fields[7] as Element,
      quantity: fields[8] as Quantity,
      expectedSupplyDuration: fields[9] as Duration,
      performer: fields[10] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest_DispenseRequest obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.initialFill)
      ..writeByte(4)
      ..write(obj.dispenseInterval)
      ..writeByte(5)
      ..write(obj.validityPeriod)
      ..writeByte(6)
      ..write(obj.numberOfRepeatsAllowed)
      ..writeByte(7)
      ..write(obj.elementNumberOfRepeatsAllowed)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.expectedSupplyDuration)
      ..writeByte(10)
      ..write(obj.performer);
  }
}

class MedicationRequest_InitialFillAdapter
    extends TypeAdapter<MedicationRequest_InitialFill> {
  @override
  MedicationRequest_InitialFill read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest_InitialFill(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      quantity: fields[3] as Quantity,
      duration: fields[4] as Duration,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest_InitialFill obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.duration);
  }
}

class MedicationRequest_SubstitutionAdapter
    extends TypeAdapter<MedicationRequest_Substitution> {
  @override
  MedicationRequest_Substitution read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicationRequest_Substitution(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      allowedBoolean: fields[3] as bool,
      elementAllowedBoolean: fields[4] as Element,
      allowedCodeableConcept: fields[5] as CodeableConcept,
      reason: fields[6] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, MedicationRequest_Substitution obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.allowedBoolean)
      ..writeByte(4)
      ..write(obj.elementAllowedBoolean)
      ..writeByte(5)
      ..write(obj.allowedCodeableConcept)
      ..writeByte(6)
      ..write(obj.reason);
  }
}
