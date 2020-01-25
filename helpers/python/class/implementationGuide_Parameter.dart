

part 'implementationGuide_Parameter.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Parameter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: applypath-resourcepath-pagespath-tx-cacheexpansion-parameterrule-broken-linksgenerate-xmlgenerate-jsongenerate-turtlehtml-template code;
  Element _code;
  String value;
  Element _value;


ImplementationGuide_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.value,
this._value});

  factory ImplementationGuide_Parameter.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_ParameterToJson(this);
}