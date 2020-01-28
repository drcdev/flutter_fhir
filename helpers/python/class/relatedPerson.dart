part 'relatedPerson.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedPerson {

RelatedPerson resourceType;
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
String gender; // <code> enum: male/female/other/unknown;
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
      this.communication,
      });

  factory RelatedPerson.fromJson(Map<String, dynamic> json) => _$RelatedPersonFromJson(json);
  Map<String, dynamic> toJson() _$RelatedPersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RelatedPerson_Communication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept language;
bool preferred;
Element _preferred;

RelatedPerson_Communication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this.preferred,
      this._preferred,
      });

  factory RelatedPerson_Communication.fromJson(Map<String, dynamic> json) => _$RelatedPerson_CommunicationFromJson(json);
  Map<String, dynamic> toJson() _$RelatedPerson_CommunicationToJson(this);
}

