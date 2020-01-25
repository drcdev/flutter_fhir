

part 'implementationGuide_DependsOn.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_DependsOn {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String uri;
  String packageId;
  Element _packageId;
  String version;
  Element _version;


ImplementationGuide_DependsOn(
      {this.id,
this.extension,
this.modifierExtension,
this.uri,
this.packageId,
this._packageId,
this.version,
this._version});

  factory ImplementationGuide_DependsOn.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DependsOnFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DependsOnToJson(this);
}