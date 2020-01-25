

part 'namingSystem_UniqueId.g.dart';

@JsonSerializable(explicitToJson: true)
class NamingSystem_UniqueId {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: oiduuiduriother type;
  Element _type;
  String value;
  Element _value;
  bool preferred;
  Element _preferred;
  String comment;
  Element _comment;
  Period period;


NamingSystem_UniqueId(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.value,
this._value,
this.preferred,
this._preferred,
this.comment,
this._comment,
this.period});

  factory NamingSystem_UniqueId.fromJson(Map<String, dynamic> json) => _$NamingSystem_UniqueIdFromJson(json);
  Map<String, dynamic> toJson() => _$NamingSystem_UniqueIdToJson(this);
}