

part 'testScript_Fixture.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Fixture {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool autocreate;
  Element _autocreate;
  bool autodelete;
  Element _autodelete;
  Reference resource;


TestScript_Fixture(
      {this.id,
this.extension,
this.modifierExtension,
this.autocreate,
this._autocreate,
this.autodelete,
this._autodelete,
this.resource});

  factory TestScript_Fixture.fromJson(Map<String, dynamic> json) => _$TestScript_FixtureFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_FixtureToJson(this);
}