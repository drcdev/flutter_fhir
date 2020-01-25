

part 'bundle_Link.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle_Link {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String relation;
  Element _relation;
  String url;
  Element _url;


Bundle_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.relation,
this._relation,
this.url,
this._url});

  factory Bundle_Link.fromJson(Map<String, dynamic> json) => _$Bundle_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_LinkToJson(this);
}