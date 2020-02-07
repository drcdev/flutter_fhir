import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'period.g.dart';

@JsonSerializable(explicitToJson: true)
class Period {

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

  //  The start of the period. The boundary is inclusive.
  DateTime start;

  //  Extensions for start
  Element elementStart;

  //  The end of the period. If the end of the period is missing, it means
  // no end was known or planned at the time the instance was created. The
  // start may be in the past, and the end date in the future, which means
  // that period is expected/planned to end at that time.
  DateTime end;

  //  Extensions for end
  Element elementEnd;

Period(
  {this.id,
    this.extension,
    this.start,
    this.elementStart,
    this.end,
    this.elementEnd
    });

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}

