

part 'implementationGuide_Page1.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Page1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  String title;
  Element _title;
  List<String> anchor;
  List<Element> _anchor;


ImplementationGuide_Page1(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.title,
this._title,
this.anchor,
this._anchor});

  factory ImplementationGuide_Page1.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_Page1FromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_Page1ToJson(this);
}