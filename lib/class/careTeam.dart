import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'careTeam.g.dart';

@JsonSerializable(explicitToJson: true)
class CareTeam {

  //  This is a CareTeam resource
  final String resourceType= 'CareTeam';

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

  //  Business identifiers assigned to this care team by the performer or
  // other systems which remain constant as the resource is updated and
  // propagates from server to server.
  List<Identifier> identifier;

  //  Indicates the current state of the care team.
  String status; // <code> enum: proposed/active/suspended/inactive/entered-in-error;

  //  Extensions for status
  Element elementStatus;

  //  Identifies what kind of team.  This is to support differentiation
  // between multiple co-existing teams, such as care plan team, episode of
  // care team, longitudinal care team.
  List<CodeableConcept> category;

  //  A label for human use intended to distinguish like teams.  E.g. the
  // "red" vs. "green" trauma teams.
  String name;

  //  Extensions for name
  Element elementName;

  //  Identifies the patient or group whose intended care is handled by the
  // team.
  Reference subject;

  //  The Encounter during which this CareTeam was created or to which the
  // creation of this record is tightly associated.
  Reference encounter;

  //  Indicates when the team did (or is intended to) come into effect and
  // end.
  Period period;

  //  Identifies all people and organizations who are expected to be
  // involved in the care team.
  List<CareTeam_Participant> participant;

  //  Describes why the care team exists.
  List<CodeableConcept> reasonCode;

  //  Condition(s) that this care team addresses.
  List<Reference> reasonReference;

  //  The organization responsible for the care team.
  List<Reference> managingOrganization;

  //  A central contact detail for the care team (that applies to all
  // members).
  List<ContactPoint> telecom;

  //  Comments made about the CareTeam.
  List<Annotation> note;

CareTeam(
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
    this.status,
    this.elementStatus,
    this.category,
    this.name,
    this.elementName,
    this.subject,
    this.encounter,
    this.period,
    this.participant,
    this.reasonCode,
    this.reasonReference,
    this.managingOrganization,
    this.telecom,
    this.note
    });

  factory CareTeam.fromJson(Map<String, dynamic> json) => _$CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CareTeam_Participant {

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

  //  Indicates specific responsibility of an individual within the care
  // team, such as "Primary care physician", "Trained social worker
  // counselor", "Caregiver", etc.
  List<CodeableConcept> role;

  //  The specific person or organization who is participating/expected to
  // participate in the care team.
  Reference member;

  //  The organization of the practitioner.
  Reference onBehalfOf;

  //  Indicates when the specific member or organization did (or is intended
  // to) come into effect and end.
  Period period;

CareTeam_Participant(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.member,
    this.onBehalfOf,
    this.period
    });

  factory CareTeam_Participant.fromJson(Map<String, dynamic> json) => _$CareTeam_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$CareTeam_ParticipantToJson(this);
}

