import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'composition.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition {

//  This is a Composition resource
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

//  A version-independent identifier for the Composition. This identifier
// stays constant as the composition is changed over time.
Identifier identifier;

//  The workflow/clinical status of this composition. The status is a
// marker for the clinical standing of the document.
String status; // <code> enum: preliminary/final/amended/entered-in-error;

//  Specifies the particular kind of composition (e.g. History and
// Physical, Discharge Summary, Progress Note). This usually equates to
// the purpose of making the composition.
CodeableConcept type;

//  A categorization for the type of the composition - helps for indexing
// and searching. This may be implied by or derived from the code
// specified in the Composition Type.
List<CodeableConcept> category;

//  Who or what the composition is about. The composition can be about a
// person, (patient or healthcare practitioner), a device (e.g. a machine)
// or even a group of subjects (such as a document about a herd of
// livestock, or a set of patients that share a common exposure).
Reference subject;

//  Describes the clinical encounter or type of care this documentation is
// associated with.
Reference encounter;

//  The composition editing time, when the composition was last logically
// changed by the author.
DateTime date;

//  Identifies who is responsible for the information in the composition,
// not necessarily who typed it in.
List<Reference> author;

//  Official human-readable label for the composition.
String title;

//  The code specifying the level of confidentiality of the Composition.
String confidentiality;

//  A participant who has attested to the accuracy of the
// composition/document.
List<Composition_Attester> attester;

//  Identifies the organization or group who is responsible for ongoing
// maintenance of and access to the composition/document information.
Reference custodian;

//  Relationships that this composition has with other compositions or
// documents that already exist.
List<Composition_RelatesTo> relatesTo;

//  The clinical service, such as a colonoscopy or an appendectomy, being
// documented.
List<Composition_Event> event;

//  The root of the sections that make up the composition.
List<Composition_Section> section;

Composition(
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
    this.status,
    this.type,
    this.category,
    this.subject,
    this.encounter,
    this.date,
    this.author,
    this.title,
    this.confidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section
    });

  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Attester {

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

//  The type of attestation the authenticator offers.
String mode; // <code> enum: personal/professional/legal/official;

//  When the composition was attested by the party.
DateTime time;

//  Who attested the composition in the specified way.
Reference party;

Composition_Attester(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.time,
    this.party
    });

  factory Composition_Attester.fromJson(Map<String, dynamic> json) => _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_AttesterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_RelatesTo {

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

//  The type of relationship that this composition has with anther
// composition or document.
String code;

//  The target composition/document of this relationship.
Identifier targetIdentifier;

//  The target composition/document of this relationship.
Reference targetReference;

Composition_RelatesTo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.targetIdentifier,
    this.targetReference
    });

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) => _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Event {

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

//  This list of codes represents the main clinical acts, such as a
// colonoscopy or an appendectomy, being documented. In some cases, the
// event is inherent in the typeCode, such as a "History and Physical
// Report" in which the procedure being documented is necessarily a
// "History and Physical" act.
List<CodeableConcept> code;

//  The period of time covered by the documentation. There is no assertion
// that the documentation is a complete representation for this period,
// only that it documents events during this time.
Period period;

//  The description and/or reference of the event(s) being documented. For
// example, this could be used to document such a colonoscopy or an
// appendectomy.
List<Reference> detail;

Composition_Event(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail
    });

  factory Composition_Event.fromJson(Map<String, dynamic> json) => _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Section {

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

//  The label for this particular section.  This will be part of the
// rendered content for the document, and is often used to build a table
// of contents.
String title;

//  A code identifying the kind of content contained within the section.
// This must be consistent with the section title.
CodeableConcept code;

//  Identifies who is responsible for the information in this section, not
// necessarily who typed it in.
List<Reference> author;

//  The actual focus of the section when it is not the subject of the
// composition, but instead represents something or someone associated
// with the subject such as (for a patient subject) a spouse, parent,
// fetus, or donor. If not focus is specified, the focus is assumed to be
// focus of the parent section, or, for a section in the Composition
// itself, the subject of the composition. Sections with a focus SHALL
// only include resources where the logical subject (patient, subject,
// focus, etc.) matches the section focus, or the resources have no
// logical subject (few resources).
Reference focus;

//  A human-readable narrative that contains the attested content of the
// section, used to represent the content of the resource to a human. The
// narrative need not encode all the structured data, but is required to
// contain sufficient detail to make it "clinically safe" for a human to
// just read the narrative.
Narrative text;

//  How the entry list was prepared - whether it is a working list that is
// suitable for being maintained on an ongoing basis, or if it represents
// a snapshot of a list of items from another source, or whether it is a
// prepared list where items may be marked as added, modified or deleted.
String mode;

//  Specifies the order applied to the items in the section entries.
CodeableConcept orderedBy;

//  A reference to the actual resource from which the narrative in the
// section is derived.
List<Reference> entry;

//  If the section is empty, why the list is empty. An empty section
// typically has some text explaining the empty reason.
CodeableConcept emptyReason;

//  A nested sub-section within this section.
List<Composition_Section> section;

Composition_Section(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section
    });

  factory Composition_Section.fromJson(Map<String, dynamic> json) => _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_SectionToJson(this);
}

