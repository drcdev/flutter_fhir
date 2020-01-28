import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/extension.dart';

part 'distance.g.dart';

@JsonSerializable(explicitToJson: true)
class Distance {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  The value of the measured amount. The value includes an implicit
// precision in the presentation of the value.
double value;

//  How the value should be understood and represented - whether the
// actual value is greater or less than the stated value due to
// measurement issues; e.g. if the comparator is "<" , then the real value
// is < stated value.
String comparator; // <code> enum: </<=/>=/>;

//  A human-readable form of the unit.
String unit;

//  The identification of the system that provides the coded form of the
// unit.
String system;

//  A computer processable form of the unit in some unit representation
// system.
String code;

Distance(
  {this.id,
    this.extension,
    this.value,
    this.comparator,
    this.unit,
    this.system,
    this.code
    });

  factory Distance.fromJson(Map<String, dynamic> json) => _$DistanceFromJson(json);
  Map<String, dynamic> toJson() => _$DistanceToJson(this);
}

