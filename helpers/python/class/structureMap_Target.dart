

part 'structureMap_Target.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Target {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String context;
  Element _context;
  enum: typevariable contextType;
  Element _contextType;
  String element;
  Element _element;
  String variable;
  Element _variable;
  array listMode;
  List<Element> _listMode;
  String listRuleId;
  Element _listRuleId;
  enum: createcopytruncateescapecastappendtranslatereferencedateOpuuidpointerevaluatecccqtyidcp transform;
  Element _transform;
  List<StructureMap_Parameter> parameter;


StructureMap_Target(
      {this.id,
this.extension,
this.modifierExtension,
this.context,
this._context,
this.contextType,
this._contextType,
this.element,
this._element,
this.variable,
this._variable,
this.listMode,
this._listMode,
this.listRuleId,
this._listRuleId,
this.transform,
this._transform,
this.parameter});

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) => _$StructureMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_TargetToJson(this);
}