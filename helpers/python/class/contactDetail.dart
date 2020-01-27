
part 'contactDetail.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactDetail {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // The name of an individual to contact.
  String name;

  // Extensions for name
  Element _name;

  // The contact details for the individual (if a name was provided) or the
  //  organization.
  List<ContactPoint telecom
ContactDetail(
      {this.id,
this.extension,
this.name,
this._name,
this.telecom});

  factory ContactDetail.fromJson(Map<String, dynamic> json) => _$ContactDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ContactDetailToJson(this);
}
