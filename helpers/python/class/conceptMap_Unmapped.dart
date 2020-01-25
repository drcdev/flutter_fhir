

part 'conceptMap_Unmapped.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap_Unmapped {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: providedfixedother-map mode;
  Element _mode;
  String code;
  Element _code;
  String display;
  Element _display;
  String url;


ConceptMap_Unmapped(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.code,
this._code,
this.display,
this._display,
this.url});

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) => _$ConceptMap_UnmappedFromJson(json);
  Map<String, dynamic> toJson() => _$ConceptMap_UnmappedToJson(this);
}