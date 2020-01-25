

part 'implementationGuide_Definition.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Definition {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ImplementationGuide_Grouping> grouping;
  List<ImplementationGuide_Resource> resource;
  ImplementationGuide_Page page;
  List<ImplementationGuide_Parameter> parameter;
  List<ImplementationGuide_Template> template;


ImplementationGuide_Definition(
      {this.id,
this.extension,
this.modifierExtension,
this.grouping,
this.resource,
this.page,
this.parameter,
this.template});

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_DefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_DefinitionToJson(this);
}