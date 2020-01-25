

part 'implementationGuide_Resource1.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Resource1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  bool exampleBoolean;
  Element _exampleBoolean;
  String exampleCanonical;
  Element _exampleCanonical;
  String relativePath;
  Element _relativePath;


ImplementationGuide_Resource1(
      {this.id,
this.extension,
this.modifierExtension,
this.reference,
this.exampleBoolean,
this._exampleBoolean,
this.exampleCanonical,
this._exampleCanonical,
this.relativePath,
this._relativePath});

  factory ImplementationGuide_Resource1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Resource1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Resource1ToJson(this);
}