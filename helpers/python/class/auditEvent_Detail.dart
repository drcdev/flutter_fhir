

part 'auditEvent_Detail.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent_Detail {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element _type;
  String valueString;
  Element _valueString;
  String valueBase64Binary;
  Element _valueBase64Binary;


AuditEvent_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.valueString,
this._valueString,
this.valueBase64Binary,
this._valueBase64Binary});

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) => _$AuditEvent_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_DetailToJson(this);
}