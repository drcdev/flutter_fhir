

part 'contributor.g.dart';

@JsonSerializable(explicitToJson: true)
class Contributor {

  String id;
  List<Extension> extension;
  enum: authoreditorreviewerendorser type;
  Element _type;
  String name;
  Element _name;
  List<ContactDetail> contact;


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