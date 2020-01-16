import 'package:json_annotation/json_annotation.dart';
part 'position.g.dart';

@JsonSerializable(explicitToJson: true)
class Position {
  int longitude;
  int latitude;
  int altitude;

  Position({this.longitude, this.latitude, this.altitude});

  factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);
  Map<String, dynamic> toJson() => _$PositionToJson(this);
}