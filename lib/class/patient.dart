import 'humanName.dart';
import 'address.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient.g.dart';

@JsonSerializable()
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


  // Patient.fromJson(Map<String, dynamic> json)
  //   : use = json['use'],
  //     resourceType = json['resourceType'],
  //     id = json['id'],
  //     gender  = json['gender'],
  //     birthDate = json['birthDate'],
  //     name = json['name'],
  //     address = json['address'];

  // Map<String, dynamic> toJson() =>
  //   {
  //     'name': name,
  //     'email': email,
  //   };