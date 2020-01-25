

part 'specimen.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen {

  This is a Specimen resource resourceType;
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
  Identifier accessionIdentifier;
  enum: availableunavailableunsatisfactoryentered-in-error status;
  Element _status;
  CodeableConcept type;
  Reference subject;
  StringTime receivedTime;
  Element _receivedTime;
  List<Reference> parent;
  List<Reference> request;
  Specimen_Collection collection;
  List<Specimen_Processing> processing;
  List<Specimen_Container> container;
  List<CodeableConcept> condition;
  List<Annotation> note;


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