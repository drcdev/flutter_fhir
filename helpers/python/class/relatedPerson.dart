

part 'relatedPerson.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedPerson {

  This is a RelatedPerson resource resourceType;
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
  Reference patient;
  List<CodeableConcept> relationship;
  List<HumanName> name;
  List<ContactPoint> telecom;
  enum: malefemaleotherunknown gender;
  Element _gender;
  String birthDate;
  Element _birthDate;
  List<Address> address;
  List<Attachment> photo;
  Period period;
  List<RelatedPerson_Communication> communication;


RelatedPerson(
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
this.patient,
this.relationship,
this.name,
this.telecom,
this.gender,
this._gender,
this.birthDate,
this._birthDate,
this.address,
this.photo,
this.period,
this.communication});

  factory RelatedPerson.fromJson(Map<String, dynamic> json) => _$RelatedPersonFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPersonToJson(this);
}