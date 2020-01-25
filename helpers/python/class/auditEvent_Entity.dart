

part 'auditEvent_Entity.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent_Entity {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference what;
  Coding type;
  Coding role;
  Coding lifecycle;
  List<Coding> securityLabel;
  String name;
  Element _name;
  String description;
  Element _description;
  String query;
  Element _query;
  List<AuditEvent_Detail> detail;


AuditEvent_Entity(
      {this.id,
this.extension,
this.modifierExtension,
this.what,
this.type,
this.role,
this.lifecycle,
this.securityLabel,
this.name,
this._name,
this.description,
this._description,
this.query,
this._query,
this.detail});

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) => _$AuditEvent_EntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_EntityToJson(this);
}