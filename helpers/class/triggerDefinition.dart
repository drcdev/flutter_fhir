import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/expression.dart';
import 'package:flutter_fhir/class/dataRequirement.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'triggerDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class TriggerDefinition {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// The type of triggering event.
String type; // <code> enum: named-event/periodic/data-changed/data-added/data-modified/data-removed/data-accessed/data-access-ended;

// Extensions for type
Element _type;

// A formal name for the event. This may be an absolute URI that identifies the
//  event formally (e.g. from a trigger registry), or a simple relative URI that
//  identifies the event in a local context.
String name;

// Extensions for name
Element _name;

// The timing of the event (if this is a periodic trigger).
Timing timingTiming;

// The timing of the event (if this is a periodic trigger).
Reference timingReference;

// The timing of the event (if this is a periodic trigger).
String timingDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for timingDate
Element _timingDate;

// The timing of the event (if this is a periodic trigger).
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for timingDateTime
Element _timingDateTime;

// The triggering data of the event (if this is a data trigger). If more than one
//  data is requirement is specified, then all the data requirements must be true.
List<DataRequirement> data;

// A boolean-valued expression that is evaluated in the context of the container of
//  the trigger definition and returns whether or not the trigger fires.
Expression condition;

TriggerDefinition(
  {this.id,
    this.extension,
    this.type,
    this._type,
    this.name,
    this._name,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this._timingDate,
    this.timingDateTime,
    this._timingDateTime,
    this.data,
    this.condition
    });

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) => _$TriggerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$TriggerDefinitionToJson(this);
}

