

part 'practitionerRole_AvailableTime.g.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole_AvailableTime {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> daysOfWeek;
  List<Element> _daysOfWeek;
  bool allDay;
  Element _allDay;
  String availableStartTime;
  Element _availableStartTime;
  String availableEndTime;
  Element _availableEndTime;


PractitionerRole_AvailableTime(
      {this.id,
this.extension,
this.modifierExtension,
this.daysOfWeek,
this._daysOfWeek,
this.allDay,
this._allDay,
this.availableStartTime,
this._availableStartTime,
this.availableEndTime,
this._availableEndTime});

  factory PractitionerRole_AvailableTime.fromJson(Map<String, dynamic> json) => _$PractitionerRole_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_AvailableTimeToJson(this);
}