

part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {

  This is a Patient resource resourceType;
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
  enum: malefemaleotherunknown gender;
  Element _gender;
  String birthDate;
  Element _birthDate;
  bool deceasedBoolean;
  Element _deceasedBoolean;
  String deceasedDateTime;
  Element _deceasedDateTime;
  List<Address> address;
  CodeableConcept maritalStatus;
  bool multipleBirthBoolean;
  Element _multipleBirthBoolean;
  number multipleBirthInteger;
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
this.link});

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}