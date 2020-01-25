

part 'practitioner.g.dart';

@JsonSerializable(explicitToJson: true)
class Practitioner {

  This is a Practitioner resource resourceType;
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
  List<HumanName> name;
  List<ContactPoint> telecom;
  List<Address> address;
  enum: malefemaleotherunknown gender;
  Element _gender;
  String birthDate;
  Element _birthDate;
  List<Attachment> photo;
  List<Practitioner_Qualification> qualification;
  List<CodeableConcept> communication;


Practitioner(
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
this.name,
this.telecom,
this.address,
this.gender,
this._gender,
this.birthDate,
this._birthDate,
this.photo,
this.qualification,
this.communication});

  factory Practitioner.fromJson(Map<String, dynamic> json) => _$PractitionerFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerToJson(this);
}