

part 'media.g.dart';

@JsonSerializable(explicitToJson: true)
class Media {

  This is a Media resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  List<Reference> basedOn;
  List<Reference> partOf;
  String status;
  Element _status;
  CodeableConcept type;
  CodeableConcept modality;
  CodeableConcept view;
  Reference subject;
  Reference encounter;
  String createdDateTime;
  Element _createdDateTime;
  Period createdPeriod;
  DateTime issued;
  Element _issued;
  Reference operator;
  List<CodeableConcept> reasonCode;
  CodeableConcept bodySite;
  String deviceName;
  Element _deviceName;
  Reference device;
  int height;
  Element _height;
  int width;
  Element _width;
  int frames;
  Element _frames;
  double duration;
  Element _duration;
  Attachment content;
  List<Annotation> note;


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