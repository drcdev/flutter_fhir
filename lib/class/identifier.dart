import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'identifier.g.dart';

@JsonSerializable(explicitToJson: true)
class Identifier {

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

//  The purpose of this identifier.
String use; // <code> enum: usual/official/temp/secondary/old;

//  Extensions for use
Element element_use;

//  A coded type for the identifier that can be used to determine which
// identifier to use for a specific purpose.
CodeableConcept type;

//  Establishes the namespace for the value - that is, a URL that
// describes a set values that are unique.
String system;

//  Extensions for system
Element element_system;

//  The portion of the identifier typically relevant to the user and which
// is unique within the context of the system.
String value;

//  Extensions for value
Element element_value;

//  Time period during which identifier is/was valid for use.
Period period;

//  Organization that issued/manages the identifier.
Reference assigner;

Identifier(
  {this.id,
    this.extension,
    this.use,
    this.element_use,
    this.type,
    this.system,
    this.element_system,
    this.value,
    this.element_value,
    this.period,
    this.assigner
    });

  factory Identifier.fromJson(Map<String, dynamic> json) => _$IdentifierFromJson(json);
  Map<String, dynamic> toJson() => _$IdentifierToJson(this);
}

