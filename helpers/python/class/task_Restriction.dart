

part 'task_Restriction.g.dart';

@JsonSerializable(explicitToJson: true)
class Task_Restriction {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int repetitions;
  Element _repetitions;
  Period period;
  List<Reference> recipient;


Task_Restriction(
      {this.id,
this.extension,
this.modifierExtension,
this.repetitions,
this._repetitions,
this.period,
this.recipient});

  factory Task_Restriction.fromJson(Map<String, dynamic> json) => _$Task_RestrictionFromJson(json);
  Map<String, dynamic> toJson() => _$Task_RestrictionToJson(this);
}