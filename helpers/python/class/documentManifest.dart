
part 'documentManifest.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentManifest {
  
  // This is a DocumentManifest 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A single identifier that uniquely identifies this manifest. Principally
  //  used to refer to the manifest in non-FHIR contexts.
  Identifier masterIdentifier;

  // Other identifiers associated with the document manifest, including version
  //  independent  identifiers.
  List<Identifier identifier;

  // The status of this document manifest.Enum enum; //
  //  currentsupersededentered-in-error status;

  // Extensions for status
  Element _status;

  // The code specifying the type of clinical activity that resulted in placing
  //  the associated content into the DocumentManifest.
  CodeableConcept type;

  // Who or what the set of documents is about. The documents can be about a
  //  person, (patient or healthcare practitioner), a device (i.e. machine) or even a
  //  group of subjects (such as a document about a herd of farm animals, or a set of
  //  patients that share a common exposure). If the documents cross more than one
  //  subject, then more than one subject is allowed here (unusual use case).
  Reference subject;

  // When the document manifest was created for submission to the server (not
  //  necessarily the same thing as the actual resource last modified time, since it
  //  may be modified, replicated, etc.).
  StringTime created;

  // Extensions for created
  Element _created;

  // Identifies who is the author of the manifest. Manifest author is not
  //  necessarly the author of the references included.
  List<Reference author;

  // A patient, practitioner, or organization for which this set of documents is
  //  intended.
  List<Reference recipient;

  // Identifies the source system, application, or software that produced the
  //  document manifest.
  String source;

  // Extensions for source
  Element _source;

  // Human-readable description of the source document. This is sometimes known
  //  as the "title".
  String description;

  // Extensions for description
  Element _description;

  // The list of Resources that consist of the parts of this manifest.
  List<Reference content;

  // Related identifiers or resources associated with the DocumentManifest.
  List<DocumentManifest_Related related
DocumentManifest(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.masterIdentifier,
this.identifier,
this.status,
this._status,
this.type,
this.subject,
this.created,
this._created,
this.author,
this.recipient,
this.source,
this._source,
this.description,
this._description,
this.content,
this.related});

  factory DocumentManifest.fromJson(Map<String, dynamic> json) => _$DocumentManifestFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentManifest_Related {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Related identifier to this DocumentManifest.  For example, Order numbers,
  //  accession numbers, XDW workflow numbers.
  Identifier identifier;

  // Related Resource to this DocumentManifest. For example, Order,
  //  ServiceRequest,  Procedure, EligibilityRequest, etc.
  Reference ref
DocumentManifest_Related(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.ref});

  factory DocumentManifest_Related.fromJson(Map<String, dynamic> json) => _$DocumentManifest_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifest_RelatedToJson(this);
}