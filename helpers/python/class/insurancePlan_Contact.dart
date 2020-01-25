

part 'insurancePlan_Contact.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Contact {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept purpose;
  HumanName name;
  List<ContactPoint> telecom;
  Address address;


InsurancePlan_Contact(
      {this.id,
this.extension,
this.modifierExtension,
this.purpose,
this.name,
this.telecom,
this.address});

  factory InsurancePlan_Contact.fromJson(Map<String, dynamic> json) => _$InsurancePlan_ContactFromJson(json);
  Map<String, dynamic> toJson() => _$InsurancePlan_ContactToJson(this);
}