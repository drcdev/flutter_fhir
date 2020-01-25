

part 'terminologyCapabilities_Version.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Version {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  bool isDefault;
  Element _isDefault;
  bool compositional;
  Element _compositional;
  List<String> language;
  List<Element> _language;
  List<TerminologyCapabilities_Filter> filter;
  List<String> property;
  List<Element> _property;


TerminologyCapabilities_Version(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.isDefault,
this._isDefault,
this.compositional,
this._compositional,
this.language,
this._language,
this.filter,
this.property,
this._property});

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_VersionFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_VersionToJson(this);
}