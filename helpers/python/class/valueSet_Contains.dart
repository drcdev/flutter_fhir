

part 'valueSet_Contains.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Contains {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String system;
  Element _system;
  bool abstract;
  Element _abstract;
  bool inactive;
  Element _inactive;
  String version;
  Element _version;
  String code;
  Element _code;
  String display;
  Element _display;
  List<ValueSet_Designation> designation;
  List<ValueSet_Contains> contains;


ValueSet_Contains(
      {this.id,
this.extension,
this.modifierExtension,
this.system,
this._system,
this.abstract,
this._abstract,
this.inactive,
this._inactive,
this.version,
this._version,
this.code,
this._code,
this.display,
this._display,
this.designation,
this.contains});

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) => _$ValueSet_ContainsFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ContainsToJson(this);
}