

part 'implementationGuide_Global.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Global {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element _type;
  String profile;


ImplementationGuide_Global(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.profile});

  factory ImplementationGuide_Global.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GlobalFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GlobalToJson(this);
}