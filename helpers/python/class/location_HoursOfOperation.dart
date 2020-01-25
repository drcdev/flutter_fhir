

part 'location_HoursOfOperation.g.dart';

@JsonSerializable(explicitToJson: true)
class Location_HoursOfOperation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<String> daysOfWeek;
  List<Element> _daysOfWeek;
  bool allDay;
  Element _allDay;
  String openingTime;
  Element _openingTime;
  String closingTime;
  Element _closingTime;


Location_HoursOfOperation(
      {this.id,
this.extension,
this.modifierExtension,
this.daysOfWeek,
this._daysOfWeek,
this.allDay,
this._allDay,
this.openingTime,
this._openingTime,
this.closingTime,
this._closingTime});

  factory Location_HoursOfOperation.fromJson(Map<String, dynamic> json) => _$Location_HoursOfOperationFromJson(json);
  Map<String, dynamic> toJson() => _$Location_HoursOfOperationToJson(this);
}