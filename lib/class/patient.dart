import 'humanName.dart';
import 'address.dart';
import 'meta.dart';
import 'package:json_annotation/json_annotation.dart';
part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {
  String resourceType;
  String id;
  List<HumanName> name;
  String gender;
  String birthDate;
  List<Address> address;
  String fullUrl;
  Meta meta;

  Patient({this.resourceType, this.id, this.name, this.gender, this.birthDate, this.address, this.fullUrl, this.meta});

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}