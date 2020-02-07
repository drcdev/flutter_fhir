import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'adverseEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent {

  //  This is a AdverseEvent resource
  final String resourceType= 'AdverseEvent';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Business identifiers assigned to this adverse event by the performer
  // or other systems which remain constant as the resource is updated and
  // propagates from server to server.
  Identifier identifier;

  //  Whether the event actually happened, or just had the potential to.
  // Note that this is independent of whether anyone was affected or harmed
  // or how severely.
  String actuality; // <code> enum: actual/potential;

  //  Extensions for actuality
  Element elementActuality;

  //  The overall type of event, intended for search and filtering purposes.
  List<CodeableConcept> category;

  //  This element defines the specific type of event that occurred or that
  // was prevented from occurring.
  CodeableConcept event;

  //  This subject or group impacted by the event.
  Reference subject;

  //  The Encounter during which AdverseEvent was created or to which the
  // creation of this record is tightly associated.
  Reference encounter;

  //  The date (and perhaps time) when the adverse event occurred.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  Estimated or actual date the AdverseEvent began, in the opinion of the
  // reporter.
  DateTime detected;

  //  Extensions for detected
  Element elementDetected;

  //  The date on which the existence of the AdverseEvent was first
  // recorded.
  DateTime recordedDate;

  //  Extensions for recordedDate
  Element elementRecordedDate;

  //  Includes information about the reaction that occurred as a result of
  // exposure to a substance (for example, a drug or a chemical).
  List<Reference> resultingCondition;

  //  The information about where the adverse event occurred.
  Reference location;

  //  Assessment whether this event was of real importance.
  CodeableConcept seriousness;

  //  Describes the severity of the adverse event, in relation to the
  // subject. Contrast to AdverseEvent.seriousness - a severe rash might not
  // be serious, but a mild heart problem is.
  CodeableConcept severity;

  //  Describes the type of outcome from the adverse event.
  CodeableConcept outcome;

  //  Information on who recorded the adverse event.  May be the patient or
  // a practitioner.
  Reference recorder;

  //  Parties that may or should contribute or have contributed information
  // to the adverse event, which can consist of one or more activities. 
  // Such information includes information leading to the decision to
  // perform the activity and how to perform the activity (e.g. consultant),
  // information that the activity itself seeks to reveal (e.g. informant of
  // clinical history), or information about what activity was performed
  // (e.g. informant witness).
  List<Reference> contributor;

  //  Describes the entity that is suspected to have caused the adverse
  // event.
  List<AdverseEvent_SuspectEntity> suspectEntity;

  //  AdverseEvent.subjectMedicalHistory.
  List<Reference> subjectMedicalHistory;

  //  AdverseEvent.referenceDocument.
  List<Reference> referenceDocument;

  //  AdverseEvent.study.
  List<Reference> study;

AdverseEvent(
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
    this.actuality,
    this.elementActuality,
    this.category,
    this.event,
    this.encounter,
    this.date,
    this.elementDate,
    this.detected,
    this.elementDetected,
    this.recordedDate,
    this.elementRecordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study
    });

  factory AdverseEvent.fromJson(Map<String, dynamic> json) => _$AdverseEventFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_SuspectEntity {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Identifies the actual instance of what caused the adverse event.  May
  // be a substance, medication, medication administration, medication
  // statement or a device.
  Reference instance;

  //  Information on the possible cause of the event.
  List<AdverseEvent_Causality> causality;

AdverseEvent_SuspectEntity(
  this.instance,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.causality
    });

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) => _$AdverseEvent_SuspectEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_SuspectEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_Causality {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Assessment of if the entity caused the event.
  CodeableConcept assessment;

  //  AdverseEvent.suspectEntity.causalityProductRelatedness.
  String productRelatedness;

  //  Extensions for productRelatedness
  Element elementProductRelatedness;

  //  AdverseEvent.suspectEntity.causalityAuthor.
  Reference author;

  //  ProbabilityScale | Bayesian | Checklist.
  CodeableConcept method;

AdverseEvent_Causality(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.elementProductRelatedness,
    this.author,
    this.method
    });

  factory AdverseEvent_Causality.fromJson(Map<String, dynamic> json) => _$AdverseEvent_CausalityFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEvent_CausalityToJson(this);
}

