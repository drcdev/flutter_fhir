

part 'conceptMap_Group.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap_Group {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String source;
  Element _source;
  String sourceVersion;
  Element _sourceVersion;
  String target;
  Element _target;
  String targetVersion;
  Element _targetVersion;
  List<ConceptMap_Element> element;
  ConceptMap_Unmapped unmapped;


ConceptMap_Group(
      {this.id,
this.extension,
this.modifierExtension,
this.source,
this._source,
this.sourceVersion,
this._sourceVersion,
this.target,
this._target,
this.targetVersion,
this._targetVersion,
this.element,
this.unmapped});

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) => _$ConceptMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_GroupToJson(this);
}