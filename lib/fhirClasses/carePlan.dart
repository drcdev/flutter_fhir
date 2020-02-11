import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 102)
class CarePlan {

  //  This is a CarePlan resource
  @HiveField(0)
  final String resourceType= 'CarePlan';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  Business identifiers assigned to this care plan by the performer or
  // other systems which remain constant as the resource is updated and
  // propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  // or other definition that is adhered to in whole or in part by this
  // CarePlan.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // questionnaire or other definition that is adhered to in whole or in
  // part by this CarePlan.
  @HiveField(13)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  List<Element> elementInstantiatesUri;

  //  A care plan that is fulfilled in whole or in part by this care plan.
  @HiveField(15)
  List<Reference> basedOn;

  //  Completed or terminated care plan whose function is taken by this new
  // care plan.
  @HiveField(16)
  List<Reference> replaces;

  //  A larger care plan of which this particular care plan is a component
  // or step.
  @HiveField(17)
  List<Reference> partOf;

  //  Indicates whether the plan is currently being acted upon, represents
  // future intentions or is now a historical record.
  @HiveField(18)
  String status;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  Indicates the level of authority/intentionality associated with the
  // care plan and where the care plan fits into the workflow chain.
  @HiveField(20)
  String intent;

  //  Extensions for intent
  @HiveField(21)
  Element elementIntent;

  //  Identifies what "kind" of plan this is to support differentiation
  // between multiple co-existing plans; e.g. "Home health", "psychiatric",
  // "asthma", "disease management", "wellness plan", etc.
  @HiveField(22)
  List<CodeableConcept> category;

  //  Human-friendly name for the care plan.
  @HiveField(23)
  String title;

  //  Extensions for title
  @HiveField(24)
  Element elementTitle;

  //  A description of the scope and nature of the plan.
  @HiveField(25)
  String description;

  //  Extensions for description
  @HiveField(26)
  Element elementDescription;

  //  Identifies the patient or group whose intended care is described by
  // the plan.
  @HiveField(27)
  Reference subject;

  //  The Encounter during which this CarePlan was created or to which the
  // creation of this record is tightly associated.
  @HiveField(28)
  Reference encounter;

  //  Indicates when the plan did (or is intended to) come into effect and
  // end.
  @HiveField(29)
  Period period;

  //  Represents when this particular CarePlan record was created in the
  // system, which is often a system-generated date.
  @HiveField(30)
  DateTime created;

  //  Extensions for created
  @HiveField(31)
  Element elementCreated;

  //  When populated, the author is responsible for the care plan.  The care
  // plan is attributed to the author.
  @HiveField(32)
  Reference author;

  //  Identifies the individual(s) or organization who provided the contents
  // of the care plan.
  @HiveField(33)
  List<Reference> contributor;

  //  Identifies all people and organizations who are expected to be
  // involved in the care envisioned by this plan.
  @HiveField(34)
  List<Reference> careTeam;

  //  Identifies the conditions/problems/concerns/diagnoses/etc. whose
  // management and/or mitigation are handled by this plan.
  @HiveField(35)
  List<Reference> addresses;

  //  Identifies portions of the patient's record that specifically
  // influenced the formation of the plan.  These might include
  // comorbidities, recent procedures, limitations, recent assessments, etc.
  @HiveField(36)
  List<Reference> supportingInfo;

  //  Describes the intended objective(s) of carrying out the care plan.
  @HiveField(37)
  List<Reference> goal;

  //  Identifies a planned action to occur as part of the plan.  For
  // example, a medication to be used, lab tests to perform,
  // self-monitoring, education, etc.
  @HiveField(38)
  List<CarePlan_Activity> activity;

  //  General notes about the care plan not covered elsewhere.
  @HiveField(39)
  List<Annotation> note;

CarePlan(
  this.subject,
    {this.id,
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
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.basedOn,
    this.replaces,
    this.partOf,
    this.status,
    this.elementStatus,
    this.intent,
    this.elementIntent,
    this.category,
    this.title,
    this.elementTitle,
    this.description,
    this.elementDescription,
    this.encounter,
    this.period,
    this.created,
    this.elementCreated,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note
    });

  factory CarePlan.fromJson(Map<String, dynamic> json) => _$CarePlanFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 103)
class CarePlan_Activity {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Identifies the outcome at the point when the status of the activity is
  // assessed.  For example, the outcome of an education activity could be
  // patient understands (or not).
  @HiveField(3)
  List<CodeableConcept> outcomeCodeableConcept;

  //  Details of the outcome or action resulting from the activity.  The
  // reference to an "event" resource, such as Procedure or Encounter or
  // Observation, is the result/outcome of the activity itself.  The
  // activity can be conveyed using CarePlan.activity.detail OR using the
  // CarePlan.activity.reference (a reference to a “request” resource).
  @HiveField(4)
  List<Reference> outcomeReference;

  //  Notes about the adherence/status/progress of the activity.
  @HiveField(5)
  List<Annotation> progress;

  //  The details of the proposed activity represented in a specific
  // resource.
  @HiveField(6)
  Reference reference;

  //  A simple summary of a planned activity suitable for a general care
  // plan system (e.g. form driven) that doesn't know about specific
  // resources such as procedure etc.
  @HiveField(7)
  CarePlan_Detail detail;

CarePlan_Activity(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail
    });

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) => _$CarePlan_ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_ActivityToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 104)
class CarePlan_Detail {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A description of the kind of resource the in-line definition of a care
  // plan activity is representing.  The CarePlan.activity.detail is an
  // in-line definition when a resource is not referenced using
  // CarePlan.activity.reference.  For example, a MedicationRequest, a
  // ServiceRequest, or a CommunicationRequest.
  @HiveField(3)
  String kind;

  //  Extensions for kind
  @HiveField(4)
  Element elementKind;

  //  The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  // or other definition that is adhered to in whole or in part by this
  // CarePlan activity.
  @HiveField(5)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // questionnaire or other definition that is adhered to in whole or in
  // part by this CarePlan activity.
  @HiveField(6)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(7)
  List<Element> elementInstantiatesUri;

  //  Detailed description of the type of planned activity; e.g. what lab
  // test, what procedure, what kind of encounter.
  @HiveField(8)
  CodeableConcept code;

  //  Provides the rationale that drove the inclusion of this particular
  // activity as part of the plan or the reason why the activity was
  // prohibited.
  @HiveField(9)
  List<CodeableConcept> reasonCode;

  //  Indicates another resource, such as the health condition(s), whose
  // existence justifies this request and drove the inclusion of this
  // particular activity as part of the plan.
  @HiveField(10)
  List<Reference> reasonReference;

  //  Internal reference that identifies the goals that this activity is
  // intended to contribute towards meeting.
  @HiveField(11)
  List<Reference> goal;

  //  Identifies what progress is being made for the specific activity.
  @HiveField(12)
  String status; // <code> enum: not-started/scheduled/in-progress/on-hold/completed/cancelled/stopped/unknown/entered-in-error;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Provides reason why the activity isn't yet started, is on hold, was
  // cancelled, etc.
  @HiveField(14)
  CodeableConcept statusReason;

  //  If true, indicates that the described activity is one that must NOT be
  // engaged in when following the plan.  If false, or missing, indicates
  // that the described activity is one that should be engaged in when
  // following the plan.
  @HiveField(15)
  bool doNotPerform;

  //  Extensions for doNotPerform
  @HiveField(16)
  Element elementDoNotPerform;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(17)
  Timing scheduledTiming;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(18)
  Period scheduledPeriod;

  //  The period, timing or frequency upon which the described activity is
  // to occur.
  @HiveField(19)
  String scheduledString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for scheduledString
  @HiveField(20)
  Element elementScheduledString;

  //  Identifies the facility where the activity will occur; e.g. home,
  // hospital, specific clinic, etc.
  @HiveField(21)
  Reference location;

  //  Identifies who's expected to be involved in the activity.
  @HiveField(22)
  List<Reference> performer;

  //  Identifies the food, drug or other product to be consumed or supplied
  // in the activity.
  @HiveField(23)
  CodeableConcept productCodeableConcept;

  //  Identifies the food, drug or other product to be consumed or supplied
  // in the activity.
  @HiveField(24)
  Reference productReference;

  //  Identifies the quantity expected to be consumed in a given day.
  @HiveField(25)
  Quantity dailyAmount;

  //  Identifies the quantity expected to be supplied, administered or
  // consumed by the subject.
  @HiveField(26)
  Quantity quantity;

  //  This provides a textual description of constraints on the intended
  // activity occurrence, including relation to other activities.  It may
  // also include objectives, pre-conditions and end-conditions.  Finally,
  // it may convey specifics about the activity such as body site, method,
  // route, etc.
  @HiveField(27)
  String description;

  //  Extensions for description
  @HiveField(28)
  Element elementDescription;

CarePlan_Detail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.elementKind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    this.status,
    this.elementStatus,
    this.statusReason,
    this.doNotPerform,
    this.elementDoNotPerform,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.elementScheduledString,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    this.elementDescription
    });

  factory CarePlan_Detail.fromJson(Map<String, dynamic> json) => _$CarePlan_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$CarePlan_DetailToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarePlanAdapter extends TypeAdapter<CarePlan> {
  @override
  final typeId = 102;

  @override
  CarePlan read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarePlan(
      fields[27] as Reference,
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
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      basedOn: (fields[15] as List)?.cast<Reference>(),
      replaces: (fields[16] as List)?.cast<Reference>(),
      partOf: (fields[17] as List)?.cast<Reference>(),
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      intent: fields[20] as String,
      elementIntent: fields[21] as Element,
      category: (fields[22] as List)?.cast<CodeableConcept>(),
      title: fields[23] as String,
      elementTitle: fields[24] as Element,
      description: fields[25] as String,
      elementDescription: fields[26] as Element,
      encounter: fields[28] as Reference,
      period: fields[29] as Period,
      created: fields[30] as DateTime,
      elementCreated: fields[31] as Element,
      author: fields[32] as Reference,
      contributor: (fields[33] as List)?.cast<Reference>(),
      careTeam: (fields[34] as List)?.cast<Reference>(),
      addresses: (fields[35] as List)?.cast<Reference>(),
      supportingInfo: (fields[36] as List)?.cast<Reference>(),
      goal: (fields[37] as List)?.cast<Reference>(),
      activity: (fields[38] as List)?.cast<CarePlan_Activity>(),
      note: (fields[39] as List)?.cast<Annotation>(),
    );
  }

  @override
  void write(BinaryWriter writer, CarePlan obj) {
    writer
      ..writeByte(40)
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
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.basedOn)
      ..writeByte(16)
      ..write(obj.replaces)
      ..writeByte(17)
      ..write(obj.partOf)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.intent)
      ..writeByte(21)
      ..write(obj.elementIntent)
      ..writeByte(22)
      ..write(obj.category)
      ..writeByte(23)
      ..write(obj.title)
      ..writeByte(24)
      ..write(obj.elementTitle)
      ..writeByte(25)
      ..write(obj.description)
      ..writeByte(26)
      ..write(obj.elementDescription)
      ..writeByte(27)
      ..write(obj.subject)
      ..writeByte(28)
      ..write(obj.encounter)
      ..writeByte(29)
      ..write(obj.period)
      ..writeByte(30)
      ..write(obj.created)
      ..writeByte(31)
      ..write(obj.elementCreated)
      ..writeByte(32)
      ..write(obj.author)
      ..writeByte(33)
      ..write(obj.contributor)
      ..writeByte(34)
      ..write(obj.careTeam)
      ..writeByte(35)
      ..write(obj.addresses)
      ..writeByte(36)
      ..write(obj.supportingInfo)
      ..writeByte(37)
      ..write(obj.goal)
      ..writeByte(38)
      ..write(obj.activity)
      ..writeByte(39)
      ..write(obj.note);
  }
}

class CarePlan_ActivityAdapter extends TypeAdapter<CarePlan_Activity> {
  @override
  final typeId = 103;

  @override
  CarePlan_Activity read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarePlan_Activity(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      outcomeCodeableConcept: (fields[3] as List)?.cast<CodeableConcept>(),
      outcomeReference: (fields[4] as List)?.cast<Reference>(),
      progress: (fields[5] as List)?.cast<Annotation>(),
      reference: fields[6] as Reference,
      detail: fields[7] as CarePlan_Detail,
    );
  }

  @override
  void write(BinaryWriter writer, CarePlan_Activity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.outcomeCodeableConcept)
      ..writeByte(4)
      ..write(obj.outcomeReference)
      ..writeByte(5)
      ..write(obj.progress)
      ..writeByte(6)
      ..write(obj.reference)
      ..writeByte(7)
      ..write(obj.detail);
  }
}

class CarePlan_DetailAdapter extends TypeAdapter<CarePlan_Detail> {
  @override
  final typeId = 104;

  @override
  CarePlan_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CarePlan_Detail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      kind: fields[3] as String,
      elementKind: fields[4] as Element,
      instantiatesCanonical: (fields[5] as List)?.cast<String>(),
      instantiatesUri: (fields[6] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[7] as List)?.cast<Element>(),
      code: fields[8] as CodeableConcept,
      reasonCode: (fields[9] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[10] as List)?.cast<Reference>(),
      goal: (fields[11] as List)?.cast<Reference>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      statusReason: fields[14] as CodeableConcept,
      doNotPerform: fields[15] as bool,
      elementDoNotPerform: fields[16] as Element,
      scheduledTiming: fields[17] as Timing,
      scheduledPeriod: fields[18] as Period,
      scheduledString: fields[19] as String,
      elementScheduledString: fields[20] as Element,
      location: fields[21] as Reference,
      performer: (fields[22] as List)?.cast<Reference>(),
      productCodeableConcept: fields[23] as CodeableConcept,
      productReference: fields[24] as Reference,
      dailyAmount: fields[25] as Quantity,
      quantity: fields[26] as Quantity,
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, CarePlan_Detail obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.kind)
      ..writeByte(4)
      ..write(obj.elementKind)
      ..writeByte(5)
      ..write(obj.instantiatesCanonical)
      ..writeByte(6)
      ..write(obj.instantiatesUri)
      ..writeByte(7)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(8)
      ..write(obj.code)
      ..writeByte(9)
      ..write(obj.reasonCode)
      ..writeByte(10)
      ..write(obj.reasonReference)
      ..writeByte(11)
      ..write(obj.goal)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.statusReason)
      ..writeByte(15)
      ..write(obj.doNotPerform)
      ..writeByte(16)
      ..write(obj.elementDoNotPerform)
      ..writeByte(17)
      ..write(obj.scheduledTiming)
      ..writeByte(18)
      ..write(obj.scheduledPeriod)
      ..writeByte(19)
      ..write(obj.scheduledString)
      ..writeByte(20)
      ..write(obj.elementScheduledString)
      ..writeByte(21)
      ..write(obj.location)
      ..writeByte(22)
      ..write(obj.performer)
      ..writeByte(23)
      ..write(obj.productCodeableConcept)
      ..writeByte(24)
      ..write(obj.productReference)
      ..writeByte(25)
      ..write(obj.dailyAmount)
      ..writeByte(26)
      ..write(obj.quantity)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarePlan _$CarePlanFromJson(Map<String, dynamic> json) {
  return CarePlan(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
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
    replaces: (json['replaces'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    intent: json['intent'] as String,
    elementIntent: json['elementIntent'] == null
        ? null
        : Element.fromJson(json['elementIntent'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Reference.fromJson(json['author'] as Map<String, dynamic>),
    contributor: (json['contributor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careTeam: (json['careTeam'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addresses: (json['addresses'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goal: (json['goal'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activity: (json['activity'] as List)
        ?.map((e) => e == null
            ? null
            : CarePlan_Activity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CarePlanToJson(CarePlan instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'replaces': instance.replaces?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'intent': instance.intent,
      'elementIntent': instance.elementIntent?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'period': instance.period?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'author': instance.author?.toJson(),
      'contributor': instance.contributor?.map((e) => e?.toJson())?.toList(),
      'careTeam': instance.careTeam?.map((e) => e?.toJson())?.toList(),
      'addresses': instance.addresses?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'goal': instance.goal?.map((e) => e?.toJson())?.toList(),
      'activity': instance.activity?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };

CarePlan_Activity _$CarePlan_ActivityFromJson(Map<String, dynamic> json) {
  return CarePlan_Activity(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeCodeableConcept: (json['outcomeCodeableConcept'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcomeReference: (json['outcomeReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    progress: (json['progress'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] == null
        ? null
        : Reference.fromJson(json['reference'] as Map<String, dynamic>),
    detail: json['detail'] == null
        ? null
        : CarePlan_Detail.fromJson(json['detail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CarePlan_ActivityToJson(CarePlan_Activity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'outcomeCodeableConcept':
          instance.outcomeCodeableConcept?.map((e) => e?.toJson())?.toList(),
      'outcomeReference':
          instance.outcomeReference?.map((e) => e?.toJson())?.toList(),
      'progress': instance.progress?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference?.toJson(),
      'detail': instance.detail?.toJson(),
    };

CarePlan_Detail _$CarePlan_DetailFromJson(Map<String, dynamic> json) {
  return CarePlan_Detail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    goal: (json['goal'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    statusReason: json['statusReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['statusReason'] as Map<String, dynamic>),
    doNotPerform: json['doNotPerform'] as bool,
    elementDoNotPerform: json['elementDoNotPerform'] == null
        ? null
        : Element.fromJson(json['elementDoNotPerform'] as Map<String, dynamic>),
    scheduledTiming: json['scheduledTiming'] == null
        ? null
        : Timing.fromJson(json['scheduledTiming'] as Map<String, dynamic>),
    scheduledPeriod: json['scheduledPeriod'] == null
        ? null
        : Period.fromJson(json['scheduledPeriod'] as Map<String, dynamic>),
    scheduledString: json['scheduledString'] as String,
    elementScheduledString: json['elementScheduledString'] == null
        ? null
        : Element.fromJson(
            json['elementScheduledString'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productCodeableConcept: json['productCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productCodeableConcept'] as Map<String, dynamic>),
    productReference: json['productReference'] == null
        ? null
        : Reference.fromJson(json['productReference'] as Map<String, dynamic>),
    dailyAmount: json['dailyAmount'] == null
        ? null
        : Quantity.fromJson(json['dailyAmount'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CarePlan_DetailToJson(CarePlan_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'kind': instance.kind,
      'elementKind': instance.elementKind?.toJson(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'goal': instance.goal?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'statusReason': instance.statusReason?.toJson(),
      'doNotPerform': instance.doNotPerform,
      'elementDoNotPerform': instance.elementDoNotPerform?.toJson(),
      'scheduledTiming': instance.scheduledTiming?.toJson(),
      'scheduledPeriod': instance.scheduledPeriod?.toJson(),
      'scheduledString': instance.scheduledString,
      'elementScheduledString': instance.elementScheduledString?.toJson(),
      'location': instance.location?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'productCodeableConcept': instance.productCodeableConcept?.toJson(),
      'productReference': instance.productReference?.toJson(),
      'dailyAmount': instance.dailyAmount?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
    };
