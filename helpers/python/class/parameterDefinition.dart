part 'parameterDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ParameterDefinition {

String id;
List<Extension> extension;
String name;
Element _name;
String use;
Element _use;
int min;
Element _min;
String max;
Element _max;
String documentation;
Element _documentation;
String type;
Element _type;
String profile;

ParameterDefinition(
  {this.id,
      this.extension,
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
      this.profile,
      });

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) => _$ParameterDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$ParameterDefinitionToJson(this);
}

