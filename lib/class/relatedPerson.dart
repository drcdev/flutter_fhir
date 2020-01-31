import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'relatedPerson.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedPerson {

  //  This is a RelatedPerson resource
  final String resourceType= 'RelatedPerson';

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

  //  Identifier for a person within a particular scope.
  List<Identifier> identifier;

  //  Whether this related person record is in active use.
  bool active;

  //  Extensions for active
  Element element_active;

  //  The patient this person is related to.
  Reference patient;

  //  The nature of the relationship between a patient and the related
  // person.
  List<CodeableConcept> relationship;

  //  A name associated with the person.
  List<HumanName> name;

  //  A contact detail for the person, e.g. a telephone number or an email
  // address.
  List<ContactPoint> telecom;

  //  Administrative Gender - the gender that the person is considered to
  // have for administration and record keeping purposes.
  String gender; // <code> enum: male/female/other/unknown;

  //  Extensions for gender
  Element element_gender;

  //  The date on which the related person was born.
  String birthDate;

  //  Extensions for birthDate
  Element element_birthDate;

  //  Address where the related person can be contacted or visited.
  List<Address> address;

  //  Image of the person.
  List<Attachment> photo;

  //  The period of time during which this relationship is or was active. If
  // there are no dates defined, then the interval is unknown.
  Period period;

  //  A language which may be used to communicate with about the patient's
  // health.
  List<RelatedPerson_Communication> communication;

RelatedPerson(
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
    this.active,
    this.element_active,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.element_gender,
    this.birthDate,
    this.element_birthDate,
    this.address,
    this.photo,
    this.period,
    this.communication
    });

  factory RelatedPerson.fromJson(Map<String, dynamic> json) => _$RelatedPersonFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RelatedPerson_Communication {

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

  //  The ISO-639-1 alpha 2 code in lower case for the language, optionally
  // followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in
  // upper case; e.g. "en" for English, or "en-US" for American English
  // versus "en-EN" for England English.
  CodeableConcept language;

  //  Indicates whether or not the patient prefers this language (over other
  // languages he masters up a certain level).
  bool preferred;

  //  Extensions for preferred
  Element element_preferred;

RelatedPerson_Communication(
  this.language,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.preferred,
    this.element_preferred
    });

  factory RelatedPerson_Communication.fromJson(Map<String, dynamic> json) => _$RelatedPerson_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPerson_CommunicationToJson(this);
}

