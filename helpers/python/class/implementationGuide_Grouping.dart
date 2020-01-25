

part 'implementationGuide_Grouping.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Grouping {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String description;
  Element _description;


ImplementationGuide_Grouping(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.description,
this._description});

  factory ImplementationGuide_Grouping.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_GroupingFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_GroupingToJson(this);
}