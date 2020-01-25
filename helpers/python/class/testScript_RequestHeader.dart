

part 'testScript_RequestHeader.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_RequestHeader {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String field;
  Element _field;
  String value;
  Element _value;


TestScript_RequestHeader(
      {this.id,
this.extension,
this.modifierExtension,
this.field,
this._field,
this.value,
this._value});

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) => _$TestScript_RequestHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_RequestHeaderToJson(this);
}