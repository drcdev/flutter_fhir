

part 'conceptMap_Target.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap_Target {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String display;
  Element _display;
  enum: relatedtoequivalentequalwidersubsumesnarrowerspecializesinexactunmatcheddisjoint equivalence;
  Element _equivalence;
  String comment;
  Element _comment;
  List<ConceptMap_DependsOn> dependsOn;
  List<ConceptMap_DependsOn> product;


ConceptMap_Target(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.display,
this._display,
this.equivalence,
this._equivalence,
this.comment,
this._comment,
this.dependsOn,
this.product});

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) => _$ConceptMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_TargetToJson(this);
}