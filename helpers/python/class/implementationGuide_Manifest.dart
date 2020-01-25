

part 'implementationGuide_Manifest.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Manifest {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String rendering;
  Element _rendering;
  List<ImplementationGuide_Resource1> resource;
  List<ImplementationGuide_Page1> page;
  List<String> image;
  List<Element> _image;
  List<String> other;
  List<Element> _other;


ImplementationGuide_Manifest(
      {this.id,
this.extension,
this.modifierExtension,
this.rendering,
this._rendering,
this.resource,
this.page,
this.image,
this._image,
this.other,
this._other});

  factory ImplementationGuide_Manifest.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ManifestFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ManifestToJson(this);
}