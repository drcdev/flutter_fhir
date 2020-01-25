

part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class Address {

  String id;
  List<Extension> extension;
  enum: homeworktempoldbilling use;
  Element _use;
  enum: postalphysicalboth type;
  Element _type;
  String text;
  Element _text;
  List<String> line;
  List<Element> _line;
  String city;
  Element _city;
  String district;
  Element _district;
  String state;
  Element _state;
  String postalCode;
  Element _postalCode;
  String country;
  Element _country;
  Period period;


Address(
      {this.id,
this.extension,
this.use,
this._use,
this.type,
this._type,
this.text,
this._text,
this.line,
this._line,
this.city,
this._city,
this.district,
this._district,
this.state,
this._state,
this.postalCode,
this._postalCode,
this.country,
this._country,
this.period});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}