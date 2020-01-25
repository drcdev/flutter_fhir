

part 'messageDefinition_Focus.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageDefinition_Focus {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  String profile;
  int min;
  Element _min;
  String max;
  Element _max;


MessageDefinition_Focus(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.profile,
this.min,
this._min,
this.max,
this._max});

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) => _$MessageDefinition_FocusFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDefinition_FocusToJson(this);
}