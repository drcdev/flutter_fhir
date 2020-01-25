

part 'patient_Contact.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient_Contact {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CodeableConcept> relationship;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;
  enum: malefemaleotherunknown gender;
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
this.period});

  factory Patient_Contact.fromJson(Map<String, dynamic> json) => _$Patient_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_ContactToJson(this);
}