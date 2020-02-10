import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

part 'usageContext.g.dart';

@JsonSerializable(explicitToJson: true)
class UsageContext {

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

  //  A code that identifies the type of context being specified by this
  // usage context.
  Coding code;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  CodeableConcept valueCodeableConcept;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  Quantity valueQuantity;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  Range valueRange;

  //  A value that defines the context specified in this context of use. The
  // interpretation of the value is defined by the code.
  Reference valueReference;

UsageContext(
  this.code,
    {this.id,
    this.extension,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference
    });

  factory UsageContext.fromJson(Map<String, dynamic> json) => _$UsageContextFromJson(json);
  Map<String, dynamic> toJson() => _$UsageContextToJson(this);
}

