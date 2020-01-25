

part 'operationDefinition_Parameter.g.dart';

@JsonSerializable(explicitToJson: true)
class OperationDefinition_Parameter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element _name;
  enum: inout use;
  Element _use;
  int min;
  Element _min;
  String max;
  Element _max;
  String documentation;
  Element _documentation;
  String type;
  Element _type;
  List<String> targetProfile;
  enum: numberdatestringtokenreferencecompositequantityurispecial searchType;
  Element _searchType;
  OperationDefinition_Binding binding;
  List<OperationDefinition_ReferencedFrom> referencedFrom;
  List<OperationDefinition_Parameter> part;


OperationDefinition_Parameter(
      {this.id,
this.extension,
this.modifierExtension,
this.name,
this._name,
this.use,
this._use,
this.min,
this._min,
this.max,
this._max,
this.documentation,
this._documentation,
this.type,
this._type,
this.targetProfile,
this.searchType,
this._searchType,
this.binding,
this.referencedFrom,
this.part});

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) => _$OperationDefinition_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$OperationDefinition_ParameterToJson(this);
}