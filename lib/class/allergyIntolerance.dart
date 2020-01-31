import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/age.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'allergyIntolerance.g.dart';

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance {

  //  This is a AllergyIntolerance resource
  final String resourceType= 'AllergyIntolerance';

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

  //  Business identifiers assigned to this AllergyIntolerance by the
  // performer or other systems which remain constant as the resource is
  // updated and propagates from server to server.
  List<Identifier> identifier;

  //  The clinical status of the allergy or intolerance.
  CodeableConcept clinicalStatus;

  //  Assertion about certainty associated with the propensity, or potential
  // risk, of a reaction to the identified substance (including
  // pharmaceutical product).
  CodeableConcept verificationStatus;

  //  Identification of the underlying physiological mechanism for the
  // reaction risk.
  String type; // <code> enum: allergy/intolerance;

  //  Extensions for type
  Element element_type;

  //  Category of the identified substance.
  List<String> category; // <code> enum: food/medication/environment/biologic> category;

  //  Extensions for category
  List<Element> element_category;

  //  Estimate of the potential clinical harm, or seriousness, of the
  // reaction to the identified substance.
  String criticality; // <code> enum: low/high/unable-to-assess;

  //  Extensions for criticality
  Element element_criticality;

  //  Code for an allergy or intolerance statement (either a positive or a
  // negated/excluded statement).  This may be a code for a substance or
  // pharmaceutical product that is considered to be responsible for the
  // adverse reaction risk (e.g., "Latex"), an allergy or intolerance
  // condition (e.g., "Latex allergy"), or a negated/excluded code for a
  // specific substance or class (e.g., "No latex allergy") or a general or
  // categorical negated statement (e.g.,  "No known allergy", "No known
  // drug allergies").  Note: the substance for a specific reaction may be
  // different from the substance identified as the cause of the risk, but
  // it must be consistent with it. For instance, it may be a more specific
  // substance (e.g. a brand medication) or a composite product that
  // includes the identified substance. It must be clinically safe to only
  // process the 'code' and ignore the 'reaction.substance'.  If a receiving
  // system is unable to confirm that AllergyIntolerance.reaction.substance
  // falls within the semantic scope of AllergyIntolerance.code, then the
  // receiving system should ignore AllergyIntolerance.reaction.substance.
  CodeableConcept code;

  //  The patient who has the allergy or intolerance.
  Reference patient;

  //  The encounter when the allergy or intolerance was asserted.
  Reference encounter;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for onsetDateTime
  Element element_onsetDateTime;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  Age onsetAge;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  Period onsetPeriod;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  Range onsetRange;

  //  Estimated or actual date,  date-time, or age when allergy or
  // intolerance was identified.
  String onsetString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for onsetString
  Element element_onsetString;

  //  The recordedDate represents when this particular AllergyIntolerance
  // record was created in the system, which is often a system-generated
  // date.
  DateTime recordedDate;

  //  Extensions for recordedDate
  Element element_recordedDate;

  //  Individual who recorded the record and takes responsibility for its
  // content.
  Reference recorder;

  //  The source of the information about the allergy that is recorded.
  Reference asserter;

  //  Represents the date and/or time of the last known occurrence of a
  // reaction event.
  DateTime lastOccurrence;

  //  Extensions for lastOccurrence
  Element element_lastOccurrence;

  //  Additional narrative about the propensity for the Adverse Reaction,
  // not captured in other fields.
  List<Annotation> note;

  //  Details about each adverse reaction event linked to exposure to the
  // identified substance.
  List<AllergyIntolerance_Reaction> reaction;

AllergyIntolerance(
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.element_type,
    this.category,
    this.element_category,
    this.criticality,
    this.element_criticality,
    this.code,
    this.encounter,
    this.onsetDateTime,
    this.element_onsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.element_onsetString,
    this.recordedDate,
    this.element_recordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.element_lastOccurrence,
    this.note,
    this.reaction
    });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) => _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {

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

  //  Identification of the specific substance (or pharmaceutical product)
  // considered to be responsible for the Adverse Reaction event. Note: the
  // substance for a specific reaction may be different from the substance
  // identified as the cause of the risk, but it must be consistent with it.
  // For instance, it may be a more specific substance (e.g. a brand
  // medication) or a composite product that includes the identified
  // substance. It must be clinically safe to only process the 'code' and
  // ignore the 'reaction.substance'.  If a receiving system is unable to
  // confirm that AllergyIntolerance.reaction.substance falls within the
  // semantic scope of AllergyIntolerance.code, then the receiving system
  // should ignore AllergyIntolerance.reaction.substance.
  CodeableConcept substance;

  //  Clinical symptoms and/or signs that are observed or associated with
  // the adverse reaction event.
  List<CodeableConcept> manifestation;

  //  Text description about the reaction as a whole, including details of
  // the manifestation if required.
  String description;

  //  Extensions for description
  Element element_description;

  //  Record of the date and/or time of the onset of the Reaction.
  DateTime onset;

  //  Extensions for onset
  Element element_onset;

  //  Clinical assessment of the severity of the reaction event as a whole,
  // potentially considering multiple different manifestations.
  String severity; // <code> enum: mild/moderate/severe;

  //  Extensions for severity
  Element element_severity;

  //  Identification of the route by which the subject was exposed to the
  // substance.
  CodeableConcept exposureRoute;

  //  Additional text about the adverse reaction event not captured in other
  // fields.
  List<Annotation> note;

AllergyIntolerance_Reaction(
  this.manifestation,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    this.description,
    this.element_description,
    this.onset,
    this.element_onset,
    this.severity,
    this.element_severity,
    this.exposureRoute,
    this.note
    });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) => _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntolerance_ReactionToJson(this);
}

