import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class MedicationDispense {
  static Future<MedicationDispense> newInstance({
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
    List<Reference> partOf,
    String status,
    Element elementStatus,
    CodeableConcept statusReasonCodeableConcept,
    Reference statusReasonReference,
    CodeableConcept category,
    CodeableConcept medicationCodeableConcept,
    Reference medicationReference,
    Reference subject,
    Reference context,
    List<Reference> supportingInformation,
    List<MedicationDispense_Performer> performer,
    Reference location,
    List<Reference> authorizingPrescription,
    CodeableConcept type,
    Quantity quantity,
    Quantity daysSupply,
    DateTime whenPrepared,
    Element elementWhenPrepared,
    DateTime whenHandedOver,
    Element elementWhenHandedOver,
    Reference destination,
    List<Reference> receiver,
    List<Annotation> note,
    List<Dosage> dosageInstruction,
    MedicationDispense_Substitution substitution,
    List<Reference> detectedIssue,
    List<Reference> eventHistory,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationDispense newMedicationDispense = new MedicationDispense(
      resourceType: 'MedicationDispense',
      id: id ?? await fhirDb.newResourceId('MedicationDispense'),
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
      partOf: partOf,
      status: status,
      elementStatus: elementStatus,
      statusReasonCodeableConcept: statusReasonCodeableConcept,
      statusReasonReference: statusReasonReference,
      category: category,
      medicationCodeableConcept: medicationCodeableConcept,
      medicationReference: medicationReference,
      subject: subject,
      context: context,
      supportingInformation: supportingInformation,
      performer: performer,
      location: location,
      authorizingPrescription: authorizingPrescription,
      type: type,
      quantity: quantity,
      daysSupply: daysSupply,
      whenPrepared: whenPrepared,
      elementWhenPrepared: elementWhenPrepared,
      whenHandedOver: whenHandedOver,
      elementWhenHandedOver: elementWhenHandedOver,
      destination: destination,
      receiver: receiver,
      note: note,
      dosageInstruction: dosageInstruction,
      substitution: substitution,
      detectedIssue: detectedIssue,
      eventHistory: eventHistory,
    );
    newMedicationDispense.meta.createdAt = DateTime.now();
    newMedicationDispense.meta.lastUpdated =
        newMedicationDispense.meta.createdAt;
    int saved = await fhirDb.saveResource(newMedicationDispense);
    return newMedicationDispense;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'MedicationDispense';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  List<Reference> partOf;
  String status;
  Element elementStatus;
  CodeableConcept statusReasonCodeableConcept;
  Reference statusReasonReference;
  CodeableConcept category;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;
  Reference subject;
  Reference context;
  List<Reference> supportingInformation;
  List<MedicationDispense_Performer> performer;
  Reference location;
  List<Reference> authorizingPrescription;
  CodeableConcept type;
  Quantity quantity;
  Quantity daysSupply;
  DateTime whenPrepared;
  Element elementWhenPrepared;
  DateTime whenHandedOver;
  Element elementWhenHandedOver;
  Reference destination;
  List<Reference> receiver;
  List<Annotation> note;
  List<Dosage> dosageInstruction;
  MedicationDispense_Substitution substitution;
  List<Reference> detectedIssue;
  List<Reference> eventHistory;

  MedicationDispense({
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
    this.partOf,
    this.status,
    this.elementStatus,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.elementWhenPrepared,
    this.whenHandedOver,
    this.elementWhenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory,
  });

  factory MedicationDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispenseFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispenseToJson(this);
}

class MedicationDispense_Performer {
  static Future<MedicationDispense_Performer> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept function,
    Reference actor,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationDispense_Performer newMedicationDispense_Performer =
        new MedicationDispense_Performer(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      function: function,
      actor: actor,
    );
    return newMedicationDispense_Performer;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept function;
  Reference actor;

  MedicationDispense_Performer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    @required this.actor,
  });

  factory MedicationDispense_Performer.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispense_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$MedicationDispense_PerformerToJson(this);
}

class MedicationDispense_Substitution {
  static Future<MedicationDispense_Substitution> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool wasSubstituted,
    Element elementWasSubstituted,
    CodeableConcept type,
    List<CodeableConcept> reason,
    List<Reference> responsibleParty,
  }) async {
    var fhirDb = new DatabaseHelper();
    MedicationDispense_Substitution newMedicationDispense_Substitution =
        new MedicationDispense_Substitution(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      wasSubstituted: wasSubstituted,
      elementWasSubstituted: elementWasSubstituted,
      type: type,
      reason: reason,
      responsibleParty: responsibleParty,
    );
    return newMedicationDispense_Substitution;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool wasSubstituted;
  Element elementWasSubstituted;
  CodeableConcept type;
  List<CodeableConcept> reason;
  List<Reference> responsibleParty;

  MedicationDispense_Substitution({
    this.id,
    this.extension,
    this.modifierExtension,
    this.wasSubstituted,
    this.elementWasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
  });

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispense_SubstitutionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$MedicationDispense_SubstitutionToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationDispense _$MedicationDispenseFromJson(Map<String, dynamic> json) {
  return MedicationDispense(
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
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReasonCodeableConcept: json['statusReasonCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReasonCodeableConcept'] as Map<String, dynamic>),
    statusReasonReference: json['statusReasonReference'] == null
        ? null
        : Reference.fromJson(
            json['statusReasonReference'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
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
    context: json['context'] == null
        ? null
        : Reference.fromJson(json['context'] as Map<String, dynamic>),
    supportingInformation: (json['supportingInformation'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationDispense_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    authorizingPrescription: (json['authorizingPrescription'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    daysSupply: json['daysSupply'] == null
        ? null
        : Quantity.fromJson(json['daysSupply'] as Map<String, dynamic>),
    whenPrepared: json['whenPrepared'] == null
        ? null
        : DateTime.parse(json['whenPrepared'] as String),
    elementWhenPrepared: json['elementWhenPrepared'] == null
        ? null
        : Element.fromJson(json['elementWhenPrepared'] as Map<String, dynamic>),
    whenHandedOver: json['whenHandedOver'] == null
        ? null
        : DateTime.parse(json['whenHandedOver'] as String),
    elementWhenHandedOver: json['elementWhenHandedOver'] == null
        ? null
        : Element.fromJson(
            json['elementWhenHandedOver'] as Map<String, dynamic>),
    destination: json['destination'] == null
        ? null
        : Reference.fromJson(json['destination'] as Map<String, dynamic>),
    receiver: (json['receiver'] as List)
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
    substitution: json['substitution'] == null
        ? null
        : MedicationDispense_Substitution.fromJson(
            json['substitution'] as Map<String, dynamic>),
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

Map<String, dynamic> _$MedicationDispenseToJson(MedicationDispense instance) {
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
  writeNotNull('partOf', instance.partOf?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('statusReasonCodeableConcept',
      instance.statusReasonCodeableConcept?.toJson());
  writeNotNull(
      'statusReasonReference', instance.statusReasonReference?.toJson());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('medicationCodeableConcept',
      instance.medicationCodeableConcept?.toJson());
  writeNotNull('medicationReference', instance.medicationReference?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('context', instance.context?.toJson());
  writeNotNull('supportingInformation',
      instance.supportingInformation?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'performer', instance.performer?.map((e) => e?.toJson())?.toList());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('authorizingPrescription',
      instance.authorizingPrescription?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('daysSupply', instance.daysSupply?.toJson());
  writeNotNull('whenPrepared', instance.whenPrepared?.toIso8601String());
  writeNotNull('elementWhenPrepared', instance.elementWhenPrepared?.toJson());
  writeNotNull('whenHandedOver', instance.whenHandedOver?.toIso8601String());
  writeNotNull(
      'elementWhenHandedOver', instance.elementWhenHandedOver?.toJson());
  writeNotNull('destination', instance.destination?.toJson());
  writeNotNull(
      'receiver', instance.receiver?.map((e) => e?.toJson())?.toList());
  writeNotNull('note', instance.note?.map((e) => e?.toJson())?.toList());
  writeNotNull('dosageInstruction',
      instance.dosageInstruction?.map((e) => e?.toJson())?.toList());
  writeNotNull('substitution', instance.substitution?.toJson());
  writeNotNull('detectedIssue',
      instance.detectedIssue?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'eventHistory', instance.eventHistory?.map((e) => e?.toJson())?.toList());
  return val;
}

MedicationDispense_Performer _$MedicationDispense_PerformerFromJson(
    Map<String, dynamic> json) {
  return MedicationDispense_Performer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    function: json['function'] == null
        ? null
        : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
    actor: json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationDispense_PerformerToJson(
    MedicationDispense_Performer instance) {
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
  writeNotNull('function', instance.function?.toJson());
  writeNotNull('actor', instance.actor?.toJson());
  return val;
}

MedicationDispense_Substitution _$MedicationDispense_SubstitutionFromJson(
    Map<String, dynamic> json) {
  return MedicationDispense_Substitution(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wasSubstituted: json['wasSubstituted'] as bool,
    elementWasSubstituted: json['elementWasSubstituted'] == null
        ? null
        : Element.fromJson(
            json['elementWasSubstituted'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    reason: (json['reason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responsibleParty: (json['responsibleParty'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationDispense_SubstitutionToJson(
    MedicationDispense_Substitution instance) {
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
  writeNotNull('wasSubstituted', instance.wasSubstituted);
  writeNotNull(
      'elementWasSubstituted', instance.elementWasSubstituted?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('reason', instance.reason?.map((e) => e?.toJson())?.toList());
  writeNotNull('responsibleParty',
      instance.responsibleParty?.map((e) => e?.toJson())?.toList());
  return val;
}
