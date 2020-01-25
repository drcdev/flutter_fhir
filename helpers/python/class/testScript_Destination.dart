

part 'testScript_Destination.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Destination {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int index;
  Element _index;
  Coding profile;


TestScript_Destination(
      {this.id,
this.extension,
this.modifierExtension,
this.index,
this._index,
this.profile});

  factory TestScript_Destination.fromJson(Map<String, dynamic> json) => _$TestScript_DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_DestinationToJson(this);
}