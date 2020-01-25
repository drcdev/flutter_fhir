

part 'elementDefinition_Discriminator.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Discriminator {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: valueexistspatterntypeprofile type;
  Element _type;
  String path;
  Element _path;


ElementDefinition_Discriminator(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.path,
this._path});

  factory ElementDefinition_Discriminator.fromJson(Map<String, dynamic> json) => _$ElementDefinition_DiscriminatorFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_DiscriminatorToJson(this);
}