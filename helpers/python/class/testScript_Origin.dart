

part 'testScript_Origin.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Origin {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int index;
  Element _index;
  Coding profile;


TestScript_Origin(
      {this.id,
this.extension,
this.modifierExtension,
this.index,
this._index,
this.profile});

  factory TestScript_Origin.fromJson(Map<String, dynamic> json) => _$TestScript_OriginFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OriginToJson(this);
}