

part 'organization_Contact.g.dart';

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
this.address});

  factory Organization_Contact.fromJson(Map<String, dynamic> json) => _$Organization_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$Organization_ContactToJson(this);
}