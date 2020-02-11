import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 42)
class SubstanceAmount {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  @HiveField(3)
  Quantity amountQuantity;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  @HiveField(4)
  Range amountRange;

  //  Used to capture quantitative values for a variety of elements. If only
  // limits are given, the arithmetic mean would be the average. If only a
  // single definite value for a given element is given, it would be
  // captured in this field.
  @HiveField(5)
  String amountString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for amountString
  @HiveField(6)
  Element elementAmountString;

  //  Most elements that require a quantitative value will also have a field
  // called amount type. Amount type should always be specified because the
  // actual value of the amount is often dependent on it. EXAMPLE: In
  // capturing the actual relative amounts of substances or molecular
  // fragments it is essential to indicate whether the amount refers to a
  // mole ratio or weight ratio. For any given element an effort should be
  // made to use same the amount type for all related definitional elements.
  @HiveField(7)
  CodeableConcept amountType;

  //  A textual comment on a numeric value.
  @HiveField(8)
  String amountText;

  //  Extensions for amountText
  @HiveField(9)
  Element elementAmountText;

  //  Reference range of possible or expected values.
  @HiveField(10)
  SubstanceAmount_ReferenceRange referenceRange;

SubstanceAmount(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.amountQuantity,
    this.amountRange,
    this.amountString,
    this.elementAmountString,
    this.amountType,
    this.amountText,
    this.elementAmountText,
    this.referenceRange
    });

  factory SubstanceAmount.fromJson(Map<String, dynamic> json) => _$SubstanceAmountFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceAmountToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 43)
class SubstanceAmount_ReferenceRange {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Lower limit possible or expected.
  @HiveField(3)
  Quantity lowLimit;

  //  Upper limit possible or expected.
  @HiveField(4)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubstanceAmountAdapter extends TypeAdapter<SubstanceAmount> {
  @override
  final typeId = 42;

  @override
  SubstanceAmount read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceAmount(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      amountQuantity: fields[3] as Quantity,
      amountRange: fields[4] as Range,
      amountString: fields[5] as String,
      elementAmountString: fields[6] as Element,
      amountType: fields[7] as CodeableConcept,
      amountText: fields[8] as String,
      elementAmountText: fields[9] as Element,
      referenceRange: fields[10] as SubstanceAmount_ReferenceRange,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceAmount obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.amountQuantity)
      ..writeByte(4)
      ..write(obj.amountRange)
      ..writeByte(5)
      ..write(obj.amountString)
      ..writeByte(6)
      ..write(obj.elementAmountString)
      ..writeByte(7)
      ..write(obj.amountType)
      ..writeByte(8)
      ..write(obj.amountText)
      ..writeByte(9)
      ..write(obj.elementAmountText)
      ..writeByte(10)
      ..write(obj.referenceRange);
  }
}

class SubstanceAmount_ReferenceRangeAdapter
    extends TypeAdapter<SubstanceAmount_ReferenceRange> {
  @override
  final typeId = 43;

  @override
  SubstanceAmount_ReferenceRange read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubstanceAmount_ReferenceRange(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      lowLimit: fields[3] as Quantity,
      highLimit: fields[4] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, SubstanceAmount_ReferenceRange obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.lowLimit)
      ..writeByte(4)
      ..write(obj.highLimit);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubstanceAmount _$SubstanceAmountFromJson(Map<String, dynamic> json) {
  return SubstanceAmount(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    amountQuantity: json['amountQuantity'] == null
        ? null
        : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
    amountRange: json['amountRange'] == null
        ? null
        : Range.fromJson(json['amountRange'] as Map<String, dynamic>),
    amountString: json['amountString'] as String,
    elementAmountString: json['elementAmountString'] == null
        ? null
        : Element.fromJson(json['elementAmountString'] as Map<String, dynamic>),
    amountType: json['amountType'] == null
        ? null
        : CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>),
    amountText: json['amountText'] as String,
    elementAmountText: json['elementAmountText'] == null
        ? null
        : Element.fromJson(json['elementAmountText'] as Map<String, dynamic>),
    referenceRange: json['referenceRange'] == null
        ? null
        : SubstanceAmount_ReferenceRange.fromJson(
            json['referenceRange'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceAmountToJson(SubstanceAmount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'amountQuantity': instance.amountQuantity?.toJson(),
      'amountRange': instance.amountRange?.toJson(),
      'amountString': instance.amountString,
      'elementAmountString': instance.elementAmountString?.toJson(),
      'amountType': instance.amountType?.toJson(),
      'amountText': instance.amountText,
      'elementAmountText': instance.elementAmountText?.toJson(),
      'referenceRange': instance.referenceRange?.toJson(),
    };

SubstanceAmount_ReferenceRange _$SubstanceAmount_ReferenceRangeFromJson(
    Map<String, dynamic> json) {
  return SubstanceAmount_ReferenceRange(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lowLimit: json['lowLimit'] == null
        ? null
        : Quantity.fromJson(json['lowLimit'] as Map<String, dynamic>),
    highLimit: json['highLimit'] == null
        ? null
        : Quantity.fromJson(json['highLimit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SubstanceAmount_ReferenceRangeToJson(
        SubstanceAmount_ReferenceRange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'lowLimit': instance.lowLimit?.toJson(),
      'highLimit': instance.highLimit?.toJson(),
    };
