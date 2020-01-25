

part 'elementDefinition_Type.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Type {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  List<String> profile;
  List<String> targetProfile;
  array aggregation;
  List<Element> _aggregation;
  enum: eitherindependentspecific versioning;
  Element _versioning;


ElementDefinition_Type(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.profile,
this.targetProfile,
this.aggregation,
this._aggregation,
this.versioning,
this._versioning});

  factory ElementDefinition_Type.fromJson(Map<String, dynamic> json) => _$ElementDefinition_TypeFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_TypeToJson(this);
}