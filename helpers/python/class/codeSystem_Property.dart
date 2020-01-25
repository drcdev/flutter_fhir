

part 'codeSystem_Property.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String uri;
  Element _uri;
  String description;
  Element _description;
  enum: codeCodingstringintegerbooleandateTimedecimal type;
  Element _type;


CodeSystem_Property(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.uri,
this._uri,
this.description,
this._description,
this.type,
this._type});

  factory CodeSystem_Property.fromJson(Map<String, dynamic> json) => _$CodeSystem_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSystem_PropertyToJson(this);
}