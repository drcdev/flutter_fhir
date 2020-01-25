

part 'valueSet_Designation.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Designation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String language;
  Element _language;
  Coding use;
  String value;
  Element _value;


ValueSet_Designation(
      {this.id,
this.extension,
this.modifierExtension,
this.language,
this._language,
this.use,
this.value,
this._value});

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) => _$ValueSet_DesignationFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_DesignationToJson(this);
}