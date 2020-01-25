

part 'searchParameter_Component.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchParameter_Component {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String definition;
  String expression;
  Element _expression;


SearchParameter_Component(
      {this.id,
this.extension,
this.modifierExtension,
this.definition,
this.expression,
this._expression});

  factory SearchParameter_Component.fromJson(Map<String, dynamic> json) => _$SearchParameter_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$SearchParameter_ComponentToJson(this);
}