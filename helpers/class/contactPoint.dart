import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'contactPoint.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactPoint {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// Telecommunications form for contact point - what communications system is
//  required to make use of the contact.
String system; // <code> enum: phone/fax/email/pager/url/sms/other;

// Extensions for system
Element _system;

// The actual contact point details, in a form that is meaningful to the designated
//  communication system (i.e. phone number or email address).
String value;

// Extensions for value
Element _value;

// Identifies the purpose for the contact point.
String use; // <code> enum: home/work/temp/old/mobile;

// Extensions for use
Element _use;

// Specifies a preferred order in which to use a set of contacts. ContactPoints
//  with lower rank values are more preferred than those with higher rank values.
int rank;

// Extensions for rank
Element _rank;

// Time period when the contact point was/is in use.
Period period;

ContactPoint(
  {this.id,
    this.extension,
    this.system,
    this._system,
    this.value,
    this._value,
    this.use,
    this._use,
    this.rank,
    this._rank,
    this.period
    });

  factory ContactPoint.fromJson(Map<String, dynamic> json) => _$ContactPointFromJson(json);
  Map<String, dynamic> toJson() => _$ContactPointToJson(this);
}

