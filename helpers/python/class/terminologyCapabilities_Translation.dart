

part 'terminologyCapabilities_Translation.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Translation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool needsMap;
  Element _needsMap;


TerminologyCapabilities_Translation(
      {this.id,
this.extension,
this.modifierExtension,
this.needsMap,
this._needsMap});

  factory TerminologyCapabilities_Translation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_TranslationFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_TranslationToJson(this);
}