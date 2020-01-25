

part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person {

  This is a Person resource resourceType;
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
  List<HumanName> name;
  List<ContactPoint> telecom;
  enum: malefemaleotherunknown gender;
  Element _gender;
  String birthDate;
  Element _birthDate;
  List<Address> address;
  Attachment photo;
  Reference managingOrganization;
  bool active;
  Element _active;
  List<Person_Link> link;


Person(
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
this.name,
this.telecom,
this.gender,
this._gender,
this.birthDate,
this._birthDate,
this.address,
this.photo,
this.managingOrganization,
this.active,
this._active,
this.link});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}