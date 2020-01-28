part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person {

Person resourceType;
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
String gender; // <code> enum: male/female/other/unknown;
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
      this.link,
      });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() _$PersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Person_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference target;
String assurance; // <code> enum: level1/level2/level3/level4;
Element _assurance;

Person_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.target,
      this.assurance,
      this._assurance,
      });

  factory Person_Link.fromJson(Map<String, dynamic> json) => _$Person_LinkFromJson(json);
  Map<String, dynamic> toJson() _$Person_LinkToJson(this);
}

