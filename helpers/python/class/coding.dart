

part 'coding.g.dart';

@JsonSerializable(explicitToJson: true)
class Coding {

  String id;
  List<Extension> extension;
  String system;
  Element _system;
  String version;
  Element _version;
  String code;
  Element _code;
  String display;
  Element _display;
  bool userSelected;
  Element _userSelected;


Coding(
      {this.id,
this.extension,
this.system,
this._system,
this.version,
this._version,
this.code,
this._code,
this.display,
this._display,
this.userSelected,
this._userSelected});

  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);
  Map<String, dynamic> toJson() => _$CodingToJson(this);
}