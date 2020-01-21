import 'package:json_annotation/json_annotation.dart';
part 'coding.g.dart';

@JsonSerializable(explicitToJson: true)
class Coding {

  // Identity of the terminology system
  String system;

  // Version of the system - if relevant
  String version;

  // Symbol in syntax defined by the system
  String code;

  // Representation defined by the system
  String display;

  // If this coding was chosen directly by the user
  bool userSelected;

  Coding(
      {this.system, this.version, this.code, this.display, this.userSelected});
  
  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);
  Map<String, dynamic> toJson() => _$CodingToJson(this);
}