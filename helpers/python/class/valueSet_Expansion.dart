

part 'valueSet_Expansion.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Expansion {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identifier;
  Element _identifier;
  StringTime timestamp;
  Element _timestamp;
  int total;
  Element _total;
  int offset;
  Element _offset;
  List<ValueSet_Parameter> parameter;
  List<ValueSet_Contains> contains;


ValueSet_Expansion(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this._identifier,
this.timestamp,
this._timestamp,
this.total,
this._total,
this.offset,
this._offset,
this.parameter,
this.contains});

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) => _$ValueSet_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ExpansionToJson(this);
}