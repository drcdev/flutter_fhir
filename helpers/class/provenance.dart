import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/signature.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'provenance.g.dart';

@JsonSerializable(explicitToJson: true)
class Provenance {

//  This is a Provenance resource
String resourceType;

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

//  The base language in which the resource is written.
String language;

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

//  The Reference(s) that were generated or updated by  the activity
// described in this resource. A provenance can point to more than one
// target if multiple resources were created/updated by the same activity.
List<Reference> target;

//  The period during which the activity occurred.
Period occurredPeriod;

//  The period during which the activity occurred.
String occurredDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  The instant of time at which the activity was recorded.
DateTime recorded;

//  Policy or plan the activity was defined by. Typically, a single
// activity may have multiple applicable policy documents, such as patient
// consent, guarantor funding, etc.
List<String> policy;

//  Where the activity occurred, if relevant.
Reference location;

//  The reason that the activity was taking place.
List<CodeableConcept> reason;

//  An activity is something that occurs over a period of time and acts
// upon or with entities; it may include consuming, processing,
// transforming, modifying, relocating, using, or generating entities.
CodeableConcept activity;

//  An actor taking a role in an activity  for which it can be assigned
// some degree of responsibility for the activity taking place.
List<Provenance_Agent> agent;

//  An entity used in this activity.
List<Provenance_Entity> entity;

//  A digital signature on the target Reference(s). The signer should
// match a Provenance.agent. The purpose of the signature is indicated.
List<Signature> signature;

Provenance(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    this.recorded,
    this.policy,
    this.location,
    this.reason,
    this.activity,
    this.agent,
    this.entity,
    this.signature
    });

  factory Provenance.fromJson(Map<String, dynamic> json) => _$ProvenanceFromJson(json);
  Map<String, dynamic> toJson() => _$ProvenanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Agent {

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

//  The participation the agent had with respect to the activity.
CodeableConcept type;

//  The function of the agent with respect to the activity. The security
// role enabling the agent with respect to the activity.
List<CodeableConcept> role;

//  The individual, device or organization that participated in the event.
Reference who;

//  The individual, device, or organization for whom the change was made.
Reference onBehalfOf;

Provenance_Agent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.onBehalfOf
    });

  factory Provenance_Agent.fromJson(Map<String, dynamic> json) => _$Provenance_AgentFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_AgentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Provenance_Entity {

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

//  How the entity was used during the activity.
String role; // <code> enum: derivation/revision/quotation/source/removal;

//  Identity of the  Entity used. May be a logical or physical uri and
// maybe absolute or relative.
Reference what;

//  The entity is attributed to an agent to express the agent's
// responsibility for that entity, possibly along with other agents. This
// description can be understood as shorthand for saying that the agent
// was responsible for the activity which generated the entity.
List<Provenance_Agent> agent;

Provenance_Entity(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.what,
    this.agent
    });

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) => _$Provenance_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_EntityToJson(this);
}

