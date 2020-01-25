

part 'structureDefinition_Context.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureDefinition_Context {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: fhirpathelementextension type;
  Element _type;
  String expression;
  Element _expression;


StructureDefinition_Context(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.expression,
this._expression});

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) => _$StructureDefinition_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$StructureDefinition_ContextToJson(this);
}