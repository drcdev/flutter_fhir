

part 'person_Link.g.dart';

@JsonSerializable(explicitToJson: true)
class Person_Link {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference target;
  enum: level1level2level3level4 assurance;
  Element _assurance;


Person_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.target,
this.assurance,
this._assurance});

  factory Person_Link.fromJson(Map<String, dynamic> json) => _$Person_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Person_LinkToJson(this);
}