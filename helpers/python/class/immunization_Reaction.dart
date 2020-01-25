

part 'immunization_Reaction.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization_Reaction {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  StringTime date;
  Element _date;
  Reference detail;
  bool reported;
  Element _reported;


Immunization_Reaction(
      {this.id,
this.extension,
this.modifierExtension,
this.date,
this._date,
this.detail,
this.reported,
this._reported});

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) => _$Immunization_ReactionFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_ReactionToJson(this);
}