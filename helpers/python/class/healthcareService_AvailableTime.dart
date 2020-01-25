

part 'healthcareService_AvailableTime.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService_AvailableTime {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  array daysOfWeek;
  List<Element> _daysOfWeek;
  bool allDay;
  Element _allDay;
  String availableStartTime;
  Element _availableStartTime;
  String availableEndTime;
  Element _availableEndTime;


HealthcareService_AvailableTime(
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

  factory HealthcareService_AvailableTime.fromJson(Map<String, dynamic> json) => _$HealthcareService_AvailableTimeFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_AvailableTimeToJson(this);
}