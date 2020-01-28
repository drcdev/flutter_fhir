part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {

Patient resourceType;
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
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
String birthDate;
Element _birthDate;
bool deceasedBoolean; //  pattern: ^true|false$
Element _deceasedBoolean;
String deceasedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _deceasedDateTime;
List<Address> address;
CodeableConcept maritalStatus;
bool multipleBirthBoolean; //  pattern: ^true|false$
Element _multipleBirthBoolean;
int multipleBirthInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _multipleBirthInteger;
List<Attachment> photo;
List<Patient_Contact> contact;
List<Patient_Communication> communication;
List<Reference> generalPractitioner;
Reference managingOrganization;
List<Patient_Link> link;

Patient(
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
      this.gender,
      this._gender,
      this.birthDate,
      this._birthDate,
      this.deceasedBoolean,
      this._deceasedBoolean,
      this.deceasedDateTime,
      this._deceasedDateTime,
      this.address,
      this.maritalStatus,
      this.multipleBirthBoolean,
      this._multipleBirthBoolean,
      this.multipleBirthInteger,
      this._multipleBirthInteger,
      this.photo,
      this.contact,
      this.communication,
      this.generalPractitioner,
      this.managingOrganization,
      this.link,
      });

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() _$PatientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Contact {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> relationship;
HumanName name;
List<ContactPoint> telecom;
Address address;
String gender; // <code> enum: male/female/other/unknown;
Element _gender;
Reference organization;
Period period;

Patient_Contact(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.relationship,
      this.name,
      this.telecom,
      this.address,
      this.gender,
      this._gender,
      this.organization,
      this.period,
      });

  factory Patient_Contact.fromJson(Map<String, dynamic> json) => _$Patient_ContactFromJson(json);
  Map<String, dynamic> toJson() _$Patient_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Communication {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept language;
bool preferred;
Element _preferred;

Patient_Communication(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this.preferred,
      this._preferred,
      });

  factory Patient_Communication.fromJson(Map<String, dynamic> json) => _$Patient_CommunicationFromJson(json);
  Map<String, dynamic> toJson() _$Patient_CommunicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Patient_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference other;
String type; // <code> enum: replaced-by/replaces/refer/seealso;
Element _type;

Patient_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.other,
      this.type,
      this._type,
      });

  factory Patient_Link.fromJson(Map<String, dynamic> json) => _$Patient_LinkFromJson(json);
  Map<String, dynamic> toJson() _$Patient_LinkToJson(this);
}

