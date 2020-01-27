
part 'specimen.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen {
  
  // This is a Specimen 
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

  // Id for specimen.
  List<Identifier identifier;

  // The identifier assigned by the lab when accessioning specimen(s). This is
  //  not necessarily the same as the specimen identifier, depending on local lab
  //  procedures.
  Identifier accessionIdentifier;

  // The availability of the specimen.Enum enum; //
  //  availableunavailableunsatisfactoryentered-in-error status;

  // Extensions for status
  Element _status;

  // The kind of material that forms the specimen.
  CodeableConcept type;

  // Where the specimen came from. This may be from patient(s), from a location
  //  (e.g., the source of an environmental sample), or a sampling of a substance or
  //  a device.
  Reference subject;

  // Time when specimen was received for processing or testing.
  StringTime receivedTime;

  // Extensions for receivedTime
  Element _receivedTime;

  // Reference to the parent (source) specimen which is used when the specimen
  //  was either derived from or a component of another specimen.
  List<Reference parent;

  // Details concerning a service request that required a specimen to be
  //  collected.
  List<Reference request;

  // Details concerning the specimen collection.
  Specimen_Collection collection;

  // Details concerning processing and processing steps for the specimen.
  List<Specimen_Processing processing;

  // The container holding the specimen.  The recursive nature of containers;
  //  i.e. blood in tube in tray in rack is not addressed here.
  List<Specimen_Container container;

  // A mode or state of being that describes the nature of the specimen.
  List<CodeableConcept condition;

  // To communicate any details or issues about the specimen or during the
  //  specimen collection. (for example: broken vial, sent with patient, frozen).
  List<Annotation note
Specimen(
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
this.identifier,
this.accessionIdentifier,
this.status,
this._status,
this.type,
this.subject,
this.receivedTime,
this._receivedTime,
this.parent,
this.request,
this.collection,
this.processing,
this.container,
this.condition,
this.note});

  factory Specimen.fromJson(Map<String, dynamic> json) => _$SpecimenFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenToJson(this);
}
