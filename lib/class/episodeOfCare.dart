import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'episodeOfCare.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare {

  //  This is a EpisodeOfCare resource
  final String resourceType= 'EpisodeOfCare';

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
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

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
  List<ResourceList> contained;

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

  //  The EpisodeOfCare may be known by different identifiers for different
  // contexts of use, such as when an external agency is tracking the
  // Episode for funding purposes.
  List<Identifier> identifier;

  //  planned | waitlist | active | onhold | finished | cancelled.
  String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;

  //  Extensions for status
  Element element_status;

  //  The history of statuses that the EpisodeOfCare has been through
  // (without requiring processing the history of the resource).
  List<EpisodeOfCare_StatusHistory> statusHistory;

  //  A classification of the type of episode of care; e.g. specialist
  // referral, disease management, type of funded care.
  List<CodeableConcept> type;

  //  The list of diagnosis relevant to this episode of care.
  List<EpisodeOfCare_Diagnosis> diagnosis;

  //  The patient who is the focus of this episode of care.
  Reference patient;

  //  The organization that has assumed the specific responsibilities for
  // the specified duration.
  Reference managingOrganization;

  //  The interval during which the managing organization assumes the
  // defined responsibility.
  Period period;

  //  Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming
  // referrals.
  List<Reference> referralRequest;

  //  The practitioner that is the care manager/care coordinator for this
  // patient.
  Reference careManager;

  //  The list of practitioners that may be facilitating this episode of
  // care for specific purposes.
  List<Reference> team;

  //  The set of accounts that may be used for billing for this
  // EpisodeOfCare.
  List<Reference> account;

EpisodeOfCare(
  this.patient,
    {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.statusHistory,
    this.type,
    this.diagnosis,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account
    });

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) => _$EpisodeOfCareFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_StatusHistory {

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

  //  planned | waitlist | active | onhold | finished | cancelled.
  String status; // <code> enum: planned/waitlist/active/onhold/finished/cancelled/entered-in-error;

  //  Extensions for status
  Element element_status;

  //  The period during this EpisodeOfCare that the specific status applied.
  Period period;

EpisodeOfCare_StatusHistory(
  this.period,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.element_status
    });

  factory EpisodeOfCare_StatusHistory.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_StatusHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_StatusHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EpisodeOfCare_Diagnosis {

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

  //  A list of conditions/problems/diagnoses that this episode of care is
  // intended to be providing care for.
  Reference condition;

  //  Role that this diagnosis has within the episode of care (e.g.
  // admission, billing, discharge …).
  CodeableConcept role;

  //  Ranking of the diagnosis (for each role type).
  int rank;

  //  Extensions for rank
  Element element_rank;

EpisodeOfCare_Diagnosis(
  this.condition,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.rank,
    this.element_rank
    });

  factory EpisodeOfCare_Diagnosis.fromJson(Map<String, dynamic> json) => _$EpisodeOfCare_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeOfCare_DiagnosisToJson(this);
}

