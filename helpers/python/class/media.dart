
part 'media.g.dart';

@JsonSerializable(explicitToJson: true)
class Media {
  
  // This is a Media 
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

  // Identifiers associated with the image - these may include identifiers for
  //  the image itself, identifiers for the context of its collection (e.g. series
  //  ids) and context ids such as accession numbers or other workflow identifiers.
  List<Identifier identifier;

  // A procedure that is fulfilled in whole or in part by the creation of this
  //  media.
  List<Reference basedOn;

  // A larger event of which this particular event is a component or step.
  List<Reference partOf;

  // The current state of the {{title}}.
  String status;

  // Extensions for status
  Element _status;

  // A code that classifies whether the media is an image, video or audio
  //  recording or some other media category.
  CodeableConcept type;

  // Details of the type of the media - usually, how it was acquired (what type
  //  of device). If images sourced from a DICOM system, are wrapped in a Media
  //  resource, then this is the modality.
  CodeableConcept modality;

  // The name of the imaging view e.g. Lateral or Antero-posterior (AP).
  CodeableConcept view;

  // Who/What this Media is a record of.
  Reference subject;

  // The encounter that establishes the context for this media.
  Reference encounter;

  // The date and time(s) at which the media was collected. string
  //  createdDateTime;

  // Extensions for createdDateTime
  Element _createdDateTime;

  // The date and time(s) at which the media was collected.
  Period createdPeriod;

  // The date and time this version of the media was made available to
  //  providers, typically after having been reviewed.
  DateTime issued;

  // Extensions for issued
  Element _issued;

  // The person who administered the collection of the image.
  Reference operator;

  // Describes why the event occurred in coded or textual form.
  List<CodeableConcept reasonCode;

  // Indicates the site on the subject's body where the observation was made
  //  (i.e. the target site).
  CodeableConcept bodySite;

  // The name of the device / manufacturer of the device  that was used to make
  //  the recording.
  String deviceName;

  // Extensions for deviceName
  Element _deviceName;

  // The device used to collect the media.
  Reference device;

  // Height of the image in pixels (photo/video).
  int height;

  // Extensions for height
  Element _height;

  // Width of the image in pixels (photo/video).
  int width;

  // Extensions for width
  Element _width;

  // The number of frames in a photo. This is used with a multi-page fax, or an
  //  imaging acquisition context that takes multiple slices in a single image, or an
  //  animated gif. If there is more than one frame, this SHALL have a value in order
  //  to alert interface software that a multi-frame capable rendering widget is
  //  required.
  int frames;

  // Extensions for frames
  Element _frames;

  // The duration of the recording in seconds - for audio and video.
  double duration;

  // Extensions for duration
  Element _duration;

  // The actual content of the media - inline or by direct reference to the
  //  media source file.
  Attachment content;

  // Comments made about the media by the performer, subject or other
  //  participants.
  List<Annotation note
Media(
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
this.basedOn,
this.partOf,
this.status,
this._status,
this.type,
this.modality,
this.view,
this.subject,
this.encounter,
this.createdDateTime,
this._createdDateTime,
this.createdPeriod,
this.issued,
this._issued,
this.operator,
this.reasonCode,
this.bodySite,
this.deviceName,
this._deviceName,
this.device,
this.height,
this._height,
this.width,
this._width,
this.frames,
this._frames,
this.duration,
this._duration,
this.content,
this.note});

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
