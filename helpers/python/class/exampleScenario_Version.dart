

part 'exampleScenario_Version.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario_Version {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String versionId;
  Element _versionId;
  String description;
  Element _description;


ExampleScenario_Version(
      {this.id,
this.extension,
this.modifierExtension,
this.versionId,
this._versionId,
this.description,
this._description});

  factory ExampleScenario_Version.fromJson(Map<String, dynamic> json) => _$ExampleScenario_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenario_VersionToJson(this);
}