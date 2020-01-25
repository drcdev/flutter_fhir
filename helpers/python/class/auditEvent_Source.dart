

part 'auditEvent_Source.g.dart';

@JsonSerializable(explicitToJson: true)
class AuditEvent_Source {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String site;
  Element _site;
  Reference observer;
  List<Coding> type;


AuditEvent_Source(
      {this.id,
this.extension,
this.modifierExtension,
this.site,
this._site,
this.observer,
this.type});

  factory AuditEvent_Source.fromJson(Map<String, dynamic> json) => _$AuditEvent_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$AuditEvent_SourceToJson(this);
}