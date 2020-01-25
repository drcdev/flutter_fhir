

part 'composition_Attester.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition_Attester {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: personalprofessionallegalofficial mode;
  Element _mode;
  StringTime time;
  Element _time;
  Reference party;


Composition_Attester(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.time,
this._time,
this.party});

  factory Composition_Attester.fromJson(Map<String, dynamic> json) => _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_AttesterToJson(this);
}