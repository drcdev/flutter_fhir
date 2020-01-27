
part 'contributor.g.dart';

@JsonSerializable(explicitToJson: true)
class Contributor {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // The type of contributor.Enum enum; // authoreditorreviewerendorser type;

  // Extensions for type
  Element _type;

  // The name of the individual or organization responsible for the
  //  contribution.
  String name;

  // Extensions for name
  Element _name;

  // Contact details to assist a user in finding and communicating with the
  //  contributor.
  List<ContactDetail contact
Contributor(
      {this.id,
this.extension,
this.type,
this._type,
this.name,
this._name,
this.contact});

  factory Contributor.fromJson(Map<String, dynamic> json) => _$ContributorFromJson(json);
  Map<String, dynamic> toJson() => _$ContributorToJson(this);
}
