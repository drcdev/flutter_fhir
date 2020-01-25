

part 'elementDefinition_Binding.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Binding {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: requiredextensiblepreferredexample strength;
  Element _strength;
  String description;
  Element _description;
  String valueSet;


ElementDefinition_Binding(
      {this.id,
this.extension,
this.modifierExtension,
this.strength,
this._strength,
this.description,
this._description,
this.valueSet});

  factory ElementDefinition_Binding.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BindingToJson(this);
}