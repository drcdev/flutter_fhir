

part 'codeSystem_Concept.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem_Concept {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String display;
  Element _display;
  String definition;
  Element _definition;
  List<CodeSystem_Designation> designation;
  List<CodeSystem_Property1> property;
  List<CodeSystem_Concept> concept;


CodeSystem_Concept(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.display,
this._display,
this.definition,
this._definition,
this.designation,
this.property,
this.concept});

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) => _$CodeSystem_ConceptFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_ConceptToJson(this);
}