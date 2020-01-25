

part 'documentManifest_Related.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentManifest_Related {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Identifier identifier;
  Reference ref;


DocumentManifest_Related(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.ref});

  factory DocumentManifest_Related.fromJson(Map<String, dynamic> json) => _$DocumentManifest_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentManifest_RelatedToJson(this);
}