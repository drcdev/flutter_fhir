

part 'contactDetail.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactDetail {

  String id;
  List<Extension> extension;
  String name;
  Element _name;
  List<ContactPoint> telecom;


ContactDetail(
      {this.id,
this.extension,
this.name,
this._name,
this.telecom});

  factory ContactDetail.fromJson(Map<String, dynamic> json) => _$ContactDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ContactDetailToJson(this);
}