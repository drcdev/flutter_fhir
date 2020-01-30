import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'humanName.g.dart';

@JsonSerializable(explicitToJson: true)
class HumanName {

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

//  Identifies the purpose for this name.
String use; // <code> enum: usual/official/temp/nickname/anonymous/old/maiden;

//  Extensions for use
Element element_use;

//  Specifies the entire name as it should be displayed e.g. on an
// application UI. This may be provided instead of or as well as the
// specific parts.
String text;

//  Extensions for text
Element element_text;

//  The part of a name that links to the genealogy. In some cultures (e.g.
// Eritrea) the family name of a son is the first name of his father.
String family;

//  Extensions for family
Element element_family;

//  Given name.
List<String> given;

//  Extensions for given
List<Element> element_given;

//  Part of the name that is acquired as a title due to academic, legal,
// employment or nobility status, etc. and that appears at the start of
// the name.
List<String> prefix;

//  Extensions for prefix
List<Element> element_prefix;

//  Part of the name that is acquired as a title due to academic, legal,
// employment or nobility status, etc. and that appears at the end of the
// name.
List<String> suffix;

//  Extensions for suffix
List<Element> element_suffix;

//  Indicates the period of time when this name was valid for the named
// person.
Period period;

HumanName(
  {this.id,
    this.extension,
    this.use,
    this.element_use,
    this.text,
    this.element_text,
    this.family,
    this.element_family,
    this.given,
    this.element_given,
    this.prefix,
    this.element_prefix,
    this.suffix,
    this.element_suffix,
    this.period
    });

  factory HumanName.fromJson(Map<String, dynamic> json) => _$HumanNameFromJson(json);
  Map<String, dynamic> toJson() => _$HumanNameToJson(this);
}

