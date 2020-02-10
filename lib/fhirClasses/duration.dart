import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

part 'duration.g.dart';

@JsonSerializable(explicitToJson: true)
class Duration {

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
  Element elementValue;

  //  How the value should be understood and represented - whether the
  // actual value is greater or less than the stated value due to
  // measurement issues; e.g. if the comparator is "<" , then the real value
  // is < stated value.
  String comparator; // <code> enum: </<=/>=/>;

  //  Extensions for comparator
  Element elementComparator;

  //  A human-readable form of the unit.
  String unit;

  //  Extensions for unit
  Element elementUnit;

  //  The identification of the system that provides the coded form of the
  // unit.
  String system;

  //  Extensions for system
  Element elementSystem;

  //  A computer processable form of the unit in some unit representation
  // system.
  String code;

  //  Extensions for code
  Element elementCode;

Duration(
  {this.id,
    this.extension,
    this.value,
    this.elementValue,
    this.comparator,
    this.elementComparator,
    this.unit,
    this.elementUnit,
    this.system,
    this.elementSystem,
    this.code,
    this.elementCode
    });

  factory Duration.fromJson(Map<String, dynamic> json) => _$DurationFromJson(json);
  Map<String, dynamic> toJson() => _$DurationToJson(this);
}

