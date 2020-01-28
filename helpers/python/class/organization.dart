part 'organization.g.dart';

@JsonSerializable(explicitToJson: true)
class Organization {

Organization resourceType;
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
List<CodeableConcept> type;
String name;
Element _name;
List<String> alias;
List<Element> _alias;
List<ContactPoint> telecom;
List<Address> address;
Reference partOf;
List<Organization_Contact> contact;
List<Reference> endpoint;

Organization(
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
      this.type,
      this.name,
      this._name,
      this.alias,
      this._alias,
      this.telecom,
      this.address,
      this.partOf,
      this.contact,
      this.endpoint,
      });

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
  Map<String, dynamic> toJson() _$OrganizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Organization_Contact {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept purpose;
HumanName name;
List<ContactPoint> telecom;
Address address;

Organization_Contact(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.purpose,
      this.name,
      this.telecom,
      this.address,
      });

  factory Organization_Contact.fromJson(Map<String, dynamic> json) => _$Organization_ContactFromJson(json);
  Map<String, dynamic> toJson() _$Organization_ContactToJson(this);
}

