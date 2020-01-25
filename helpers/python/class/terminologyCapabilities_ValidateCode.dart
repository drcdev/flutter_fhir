

part 'terminologyCapabilities_ValidateCode.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_ValidateCode {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool translations;
  Element _translations;


TerminologyCapabilities_ValidateCode(
      {this.id,
this.extension,
this.modifierExtension,
this.translations,
this._translations});

  factory TerminologyCapabilities_ValidateCode.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ValidateCodeFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ValidateCodeToJson(this);
}