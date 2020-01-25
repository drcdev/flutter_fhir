

part 'encounter_Location.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter_Location {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference location;
  enum: plannedactivereservedcompleted status;
  Element _status;
  CodeableConcept physicalType;
  Period period;


Encounter_Location(
      {this.id,
this.extension,
this.modifierExtension,
this.location,
this.status,
this._status,
this.physicalType,
this.period});

  factory Encounter_Location.fromJson(Map<String, dynamic> json) => _$Encounter_LocationFromJson(json);
  Map<String, dynamic> toJson() => _$Encounter_LocationToJson(this);
}