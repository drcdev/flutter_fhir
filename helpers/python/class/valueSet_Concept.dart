

part 'valueSet_Concept.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Concept {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String display;
  Element _display;
  List<ValueSet_Designation> designation;


ValueSet_Concept(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.display,
this._display,
this.designation});

  factory ValueSet_Concept.fromJson(Map<String, dynamic> json) => _$ValueSet_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ConceptToJson(this);
}