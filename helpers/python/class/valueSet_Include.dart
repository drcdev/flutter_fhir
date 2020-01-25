

part 'valueSet_Include.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Include {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String system;
  Element _system;
  String version;
  Element _version;
  List<ValueSet_Concept> concept;
  List<ValueSet_Filter> filter;
  List<String> valueSet;


ValueSet_Include(
      {this.id,
this.extension,
this.modifierExtension,
this.system,
this._system,
this.version,
this._version,
this.concept,
this.filter,
this.valueSet});

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) => _$ValueSet_IncludeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_IncludeToJson(this);
}