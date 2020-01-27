
part 'parameterDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ParameterDefinition {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // The name of the parameter used to allow access to the value of the
  //  parameter in evaluation contexts.
  String name;

  // Extensions for name
  Element _name;

  // Whether the parameter is input or output for the module.
  String use;

  // Extensions for use
  Element _use;

  // The minimum number of times this parameter SHALL appear in the request or
  //  response.
  int min;

  // Extensions for min
  Element _min;

  // The maximum number of times this element is permitted to appear in the
  //  request or response.
  String max;

  // Extensions for max
  Element _max;

  // A brief discussion of what the parameter is for and how it is used by the
  //  module.
  String documentation;

  // Extensions for documentation
  Element _documentation;

  // The type of the parameter.
  String type;

  // Extensions for type
  Element _type;

  // If specified, this indicates a profile that the input data must conform to,
  //  or that the output data will conform to.
  String profile
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
this.profile});

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) => _$ParameterDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ParameterDefinitionToJson(this);
}
