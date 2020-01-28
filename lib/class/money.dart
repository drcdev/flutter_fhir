import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'money.g.dart';

@JsonSerializable(explicitToJson: true)
class Money {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// Numerical value (with implicit precision).
double value;

// Extensions for value
Element _value;

// ISO 4217 Currency Code.
String currency;

// Extensions for currency
Element _currency;

Money(
  {this.id,
    this.extension,
    this.value,
    this._value,
    this.currency,
    this._currency
    });

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
  Map<String, dynamic> toJson() => _$MoneyToJson(this);
}

