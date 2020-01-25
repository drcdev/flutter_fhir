

part 'bundle_Search.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle_Search {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: matchincludeoutcome mode;
  Element _mode;
  double score;
  Element _score;


Bundle_Search(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.score,
this._score});

  factory Bundle_Search.fromJson(Map<String, dynamic> json) => _$Bundle_SearchFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_SearchToJson(this);
}