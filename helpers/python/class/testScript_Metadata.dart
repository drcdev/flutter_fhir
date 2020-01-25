

part 'testScript_Metadata.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Metadata {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<TestScript_Link> link;
  List<TestScript_Capability> capability;


TestScript_Metadata(
      {this.id,
this.extension,
this.modifierExtension,
this.link,
this.capability});

  factory TestScript_Metadata.fromJson(Map<String, dynamic> json) => _$TestScript_MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_MetadataToJson(this);
}