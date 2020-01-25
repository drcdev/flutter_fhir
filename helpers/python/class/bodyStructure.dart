

part 'bodyStructure.g.dart';

@JsonSerializable(explicitToJson: true)
class BodyStructure {

  This is a BodyStructure resource resourceType;
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
  bool active;
  Element _active;
  CodeableConcept morphology;
  CodeableConcept location;
  List<CodeableConcept> locationQualifier;
  String description;
  Element _description;
  List<Attachment> image;
  Reference patient;


BodyStructure(
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
this.active,
this._active,
this.morphology,
this.location,
this.locationQualifier,
this.description,
this._description,
this.image,
this.patient});

  factory BodyStructure.fromJson(Map<String, dynamic> json) => _$BodyStructureFromJson(json);
  Map<String, dynamic> toJson() => _$BodyStructureToJson(this);
}