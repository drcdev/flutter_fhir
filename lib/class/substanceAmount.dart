import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'substanceAmount.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceAmount {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  Quantity amountQuantity;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  Range amountRange;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  Element element_amountString;

  //  Most elements that require a quantitative value will also have a field
  // called amount type. Amount type should always be specified because the
  // actual value of the amount is often dependent on it. EXAMPLE: In
  // capturing the actual relative amounts of substances or molecular
  // fragments it is essential to indicate whether the amount refers to a
  // mole ratio or weight ratio. For any given element an effort should be
  // made to use same the amount type for all related definitional elements.
  CodeableConcept amountType;

  //  A textual comment on a numeric value.
  String amountText;

  //  Extensions for amountText
  Element element_amountText;

  //  Reference range of possible or expected values.
  SubstanceAmount_ReferenceRange referenceRange;

SubstanceAmount(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.amountQuantity,
    this.amountRange,
    this.amountString,
    this.element_amountString,
    this.amountType,
    this.amountText,
    this.element_amountText,
    this.referenceRange
    });

  factory SubstanceAmount.fromJson(Map<String, dynamic> json) => _$SubstanceAmountFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstanceAmount_ReferenceRange {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Lower limit possible or expected.
  Quantity lowLimit;

  //  Upper limit possible or expected.
  Quantity highLimit;

SubstanceAmount_ReferenceRange(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.lowLimit,
    this.highLimit
    });

  factory SubstanceAmount_ReferenceRange.fromJson(Map<String, dynamic> json) => _$SubstanceAmount_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmount_ReferenceRangeToJson(this);
}

