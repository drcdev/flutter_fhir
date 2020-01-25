

part 'codeSystem_Designation.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem_Designation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String language;
  Element _language;
  Coding use;
  String value;
  Element _value;


CodeSystem_Designation(
      {this.id,
this.extension,
this.modifierExtension,
this.language,
this._language,
this.use,
this.value,
this._value});

  factory CodeSystem_Designation.fromJson(Map<String, dynamic> json) => _$CodeSystem_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_DesignationToJson(this);
}