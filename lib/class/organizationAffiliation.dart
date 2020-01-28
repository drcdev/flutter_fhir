import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'organizationAffiliation.g.dart';

@JsonSerializable(explicitToJson: true)
class OrganizationAffiliation {

//  This is a OrganizationAffiliation resource
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

//  Business identifiers that are specific to this role.
List<Identifier> identifier;

//  Whether this organization affiliation record is in active use.
bool active;

//  The period during which the participatingOrganization is affiliated
// with the primary organization.
Period period;

//  Organization where the role is available (primary organization/has
// members).
Reference organization;

//  The Participating Organization provides/performs the role(s) defined
// by the code to the Primary Organization (e.g. providing services or is
// a member of).
Reference participatingOrganization;

//  Health insurance provider network in which the
// participatingOrganization provides the role's services (if defined) at
// the indicated locations (if defined).
List<Reference> network;

//  Definition of the role the participatingOrganization plays in the
// association.
List<CodeableConcept> code;

//  Specific specialty of the participatingOrganization in the context of
// the role.
List<CodeableConcept> specialty;

//  The location(s) at which the role occurs.
List<Reference> location;

//  Healthcare services provided through the role.
List<Reference> healthcareService;

//  Contact details at the participatingOrganization relevant to this
// Affiliation.
List<ContactPoint> telecom;

//  Technical endpoints providing access to services operated for this
// role.
List<Reference> endpoint;

OrganizationAffiliation(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.endpoint
    });

  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) => _$OrganizationAffiliationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationAffiliationToJson(this);
}

