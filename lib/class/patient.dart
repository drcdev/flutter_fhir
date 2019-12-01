import 'humanName.dart';
import 'address.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {
  String use;
  String resourceType;
  String id;
  HumanName name;
  String gender;
  String birthDate;
  Address address;

  Patient({this.use, this.resourceType, this.id, this.name, this.gender, this.birthDate, this.address});

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}