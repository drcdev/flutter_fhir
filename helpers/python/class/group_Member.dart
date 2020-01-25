

part 'group_Member.g.dart';

@JsonSerializable(explicitToJson: true)
class Group_Member {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference entity;
  Period period;
  bool inactive;
  Element _inactive;


Group_Member(
      {this.id,
this.extension,
this.modifierExtension,
this.entity,
this.period,
this.inactive,
this._inactive});

  factory Group_Member.fromJson(Map<String, dynamic> json) => _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() => _$Group_MemberToJson(this);
}