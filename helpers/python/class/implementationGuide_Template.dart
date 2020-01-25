

part 'implementationGuide_Template.g.dart';

@JsonSerializable(explicitToJson: true)
class ImplementationGuide_Template {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String source;
  Element _source;
  String scope;
  Element _scope;


ImplementationGuide_Template(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.source,
this._source,
this.scope,
this._scope});

  factory ImplementationGuide_Template.fromJson(Map<String, dynamic> json) => _$ImplementationGuide_TemplateFromJson(json);
  Map<String, dynamic> toJson() => _$ImplementationGuide_TemplateToJson(this);
}