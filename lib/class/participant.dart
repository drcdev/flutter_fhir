import 'package:json_annotation/json_annotation.dart';
part 'participant.g.dart';

@JsonSerializable(explicitToJson: true)
class Participant {
  List<String> type;
  String period;
  String individual;

  Participant({this.type, this.period, this.individual});

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantToJson(this);
}