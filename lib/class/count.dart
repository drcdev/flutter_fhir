import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'count.g.dart';

@JsonSerializable(explicitToJson: true)
class Count {

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

//  Extensions for value
Element element_value;

//  How the value should be understood and represented - whether the
// actual value is greater or less than the stated value due to
// measurement issues; e.g. if the comparator is "<" , then the real value
// is < stated value.
String comparator; // <code> enum: </<=/>=/>;

//  Extensions for comparator
Element element_comparator;

//  A human-readable form of the unit.
String unit;

//  Extensions for unit
Element element_unit;

//  The identification of the system that provides the coded form of the
// unit.
String system;

//  Extensions for system
Element element_system;

//  A computer processable form of the unit in some unit representation
// system.
String code;

//  Extensions for code
Element element_code;

Count(
  {this.id,
    this.extension,
    this.value,
    this.element_value,
    this.comparator,
    this.element_comparator,
    this.unit,
    this.element_unit,
    this.system,
    this.element_system,
    this.code,
    this.element_code
    });

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
  Map<String, dynamic> toJson() => _$CountToJson(this);
}

