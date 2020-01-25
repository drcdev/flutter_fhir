

part 'auditEvent_Network.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent_Network {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String address;
  Element _address;
  enum: 12345 type;
  Element _type;


AuditEvent_Network(
      {this.id,
this.extension,
this.modifierExtension,
this.address,
this._address,
this.type,
this._type});

  factory AuditEvent_Network.fromJson(Map<String, dynamic> json) => _$AuditEvent_NetworkFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_NetworkToJson(this);
}