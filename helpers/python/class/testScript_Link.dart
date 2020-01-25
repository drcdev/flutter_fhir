

part 'testScript_Link.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Link {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element _url;
  String description;
  Element _description;


TestScript_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.url,
this._url,
this.description,
this._description});

  factory TestScript_Link.fromJson(Map<String, dynamic> json) => _$TestScript_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_LinkToJson(this);
}