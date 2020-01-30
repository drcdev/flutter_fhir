import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'documentReference.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference {

//  This is a DocumentReference resource
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

//  Document identifier as assigned by the source of the document. This
// identifier is specific to this version of the document. This unique
// identifier may be used elsewhere to identify this version of the
// document.
Identifier masterIdentifier;

//  Other identifiers associated with the document, including version
// independent identifiers.
List<Identifier> identifier;

//  The status of this document reference.
String status; // <code> enum: current/superseded/entered-in-error;

//  Extensions for status
Element element_status;

//  The status of the underlying document.
String docStatus;

//  Extensions for docStatus
Element element_docStatus;

//  Specifies the particular kind of document referenced  (e.g. History
// and Physical, Discharge Summary, Progress Note). This usually equates
// to the purpose of making the document referenced.
CodeableConcept type;

//  A categorization for the type of document referenced - helps for
// indexing and searching. This may be implied by or derived from the code
// specified in the DocumentReference.type.
List<CodeableConcept> category;

//  Who or what the document is about. The document can be about a person,
// (patient or healthcare practitioner), a device (e.g. a machine) or even
// a group of subjects (such as a document about a herd of farm animals,
// or a set of patients that share a common exposure).
Reference subject;

//  When the document reference was created.
DateTime date;

//  Extensions for date
Element element_date;

//  Identifies who is responsible for adding the information to the
// document.
List<Reference> author;

//  Which person or organization authenticates that this document is
// valid.
Reference authenticator;

//  Identifies the organization or group who is responsible for ongoing
// maintenance of and access to the document.
Reference custodian;

//  Relationships that this document has with other document references
// that already exist.
List<DocumentReference_RelatesTo> relatesTo;

//  Human-readable description of the source document.
String description;

//  Extensions for description
Element element_description;

//  A set of Security-Tag codes specifying the level of privacy/security
// of the Document. Note that DocumentReference.meta.security contains the
// security labels of the "reference" to the document, while
// DocumentReference.securityLabel contains a snapshot of the security
// labels on the document the reference refers to.
List<CodeableConcept> securityLabel;

//  The document and format referenced. There may be multiple content
// element repetitions, each with a different format.
List<DocumentReference_Content> content;

//  The clinical context in which the document was prepared.
DocumentReference_Context context;

DocumentReference(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    this.status,
    this.element_status,
    this.docStatus,
    this.element_docStatus,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.element_date,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.element_description,
    this.securityLabel,
    this.content,
    this.context
    });

  factory DocumentReference.fromJson(Map<String, dynamic> json) => _$DocumentReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReferenceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_RelatesTo {

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

//  The type of relationship that this document has with anther document.
String code; // <code> enum: replaces/transforms/signs/appends;

//  Extensions for code
Element element_code;

//  The target document of this relationship.
Reference target;

DocumentReference_RelatesTo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.element_code,
    this.target
    });

  factory DocumentReference_RelatesTo.fromJson(Map<String, dynamic> json) => _$DocumentReference_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

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

//  The document or URL of the document along with critical metadata to
// prove content has integrity.
Attachment attachment;

//  An identifier of the document encoding, structure, and template that
// the document conforms to beyond the base format indicated in the
// mimeType.
Coding format;

DocumentReference_Content(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.attachment,
    this.format
    });

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentReference_Context {

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

//  Describes the clinical encounter or type of care that the document
// content is associated with.
List<Reference> encounter;

//  This list of codes represents the main clinical acts, such as a
// colonoscopy or an appendectomy, being documented. In some cases, the
// event is inherent in the type Code, such as a "History and Physical
// Report" in which the procedure being documented is necessarily a
// "History and Physical" act.
List<CodeableConcept> event;

//  The time period over which the service that is described by the
// document was provided.
Period period;

//  The kind of facility where the patient was seen.
CodeableConcept facilityType;

//  This property may convey specifics about the practice setting where
// the content was created, often reflecting the clinical specialty.
CodeableConcept practiceSetting;

//  The Patient Information as known when the document was published. May
// be a reference to a version specific, or contained.
Reference sourcePatientInfo;

//  Related identifiers or resources associated with the
// DocumentReference.
List<Reference> related;

DocumentReference_Context(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related
    });

  factory DocumentReference_Context.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContextToJson(this);
}

