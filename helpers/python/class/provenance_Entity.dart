

part 'provenance_Entity.g.dart';

@JsonSerializable(explicitToJson: true)
class Provenance_Entity {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: derivationrevisionquotationsourceremoval role;
  Element _role;
  Reference what;
  List<Provenance_Agent> agent;


Provenance_Entity(
      {this.id,
this.extension,
this.modifierExtension,
this.role,
this._role,
this.what,
this.agent});

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) => _$Provenance_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$Provenance_EntityToJson(this);
}