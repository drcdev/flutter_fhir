

part 'identifier.g.dart';

@JsonSerializable(explicitToJson: true)
class Identifier {

  String id;
  List<Extension> extension;
  enum: usualofficialtempsecondaryold use;
  Element _use;
  CodeableConcept type;
  String system;
  Element _system;
  String value;
  Element _value;
  Period period;
  Reference assigner;


Identifier(
      {this.id,
this.extension,
this.use,
this._use,
this.type,
this.system,
this._system,
this.value,
this._value,
this.period,
this.assigner});

  factory Identifier.fromJson(Map<String, dynamic> json) => _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}