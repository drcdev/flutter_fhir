import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'population.g.dart';

@JsonSerializable(explicitToJson: true)
class Population {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The age of the specific population.
Range ageRange;

// The age of the specific population.
CodeableConcept ageCodeableConcept;

// The gender of the specific population.
CodeableConcept gender;

// Race of the specific population.
CodeableConcept race;

// The existing physiological conditions of the specific population to which this
//  applies.
CodeableConcept physiologicalCondition;

Population(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.ageRange,
    this.ageCodeableConcept,
    this.gender,
    this.race,
    this.physiologicalCondition
    });

  factory Population.fromJson(Map<String, dynamic> json) => _$PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$PopulationToJson(this);
}

