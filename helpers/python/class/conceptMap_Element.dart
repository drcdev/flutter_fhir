

part 'conceptMap_Element.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap_Element {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String display;
  Element _display;
  List<ConceptMap_Target> target;


ConceptMap_Element(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.display,
this._display,
this.target});

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) => _$ConceptMap_ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_ElementToJson(this);
}