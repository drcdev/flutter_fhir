

part 'location_Position.g.dart';

@JsonSerializable(explicitToJson: true)
class Location_Position {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  double longitude;
  Element _longitude;
  double latitude;
  Element _latitude;
  double altitude;
  Element _altitude;


Location_Position(
      {this.id,
this.extension,
this.modifierExtension,
this.longitude,
this._longitude,
this.latitude,
this._latitude,
this.altitude,
this._altitude});

  factory Location_Position.fromJson(Map<String, dynamic> json) => _$Location_PositionFromJson(json);
  Map<String, dynamic> toJson() => _$Location_PositionToJson(this);
}