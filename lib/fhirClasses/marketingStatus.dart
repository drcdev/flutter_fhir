import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 41)
class MarketingStatus {

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

  //  The country in which the marketing authorisation has been granted
  // shall be specified It should be specified using the ISO 3166 ‑ 1
  // alpha-2 code elements.
  @HiveField(3)
  CodeableConcept country;

  //  Where a Medicines Regulatory Agency has granted a marketing
  // authorisation for which specific provisions within a jurisdiction
  // apply, the jurisdiction can be specified using an appropriate
  // controlled terminology The controlled term and the controlled term
  // identifier shall be specified.
  @HiveField(4)
  CodeableConcept jurisdiction;

  //  This attribute provides information on the status of the marketing of
  // the medicinal product See ISO/TS 20443 for more information and
  // examples.
  @HiveField(5)
  CodeableConcept status;

  //  The date when the Medicinal Product is placed on the market by the
  // Marketing Authorisation Holder (or where applicable, the
  // manufacturer/distributor) in a country and/or jurisdiction shall be
  // provided A complete date consisting of day, month and year shall be
  // specified using the ISO 8601 date format NOTE “Placed on the market”
  // refers to the release of the Medicinal Product into the distribution
  // chain.
  @HiveField(6)
  Period dateRange;

  //  The date when the Medicinal Product is placed on the market by the
  // Marketing Authorisation Holder (or where applicable, the
  // manufacturer/distributor) in a country and/or jurisdiction shall be
  // provided A complete date consisting of day, month and year shall be
  // specified using the ISO 8601 date format NOTE “Placed on the market”
  // refers to the release of the Medicinal Product into the distribution
  // chain.
  @HiveField(7)
  DateTime restoreDate;

  //  Extensions for restoreDate
  @HiveField(8)
  Element elementRestoreDate;

MarketingStatus(
  this.country,
    this.status,
    this.dateRange,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.jurisdiction,
    this.restoreDate,
    this.elementRestoreDate
    });

  factory MarketingStatus.fromJson(Map<String, dynamic> json) => _$MarketingStatusFromJson(json);
  Map<String, dynamic> toJson() => _$MarketingStatusToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarketingStatusAdapter extends TypeAdapter<MarketingStatus> {
  @override
  final typeId = 41;

  @override
  MarketingStatus read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarketingStatus(
      fields[3] as CodeableConcept,
      fields[5] as CodeableConcept,
      fields[6] as Period,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      jurisdiction: fields[4] as CodeableConcept,
      restoreDate: fields[7] as DateTime,
      elementRestoreDate: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, MarketingStatus obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.jurisdiction)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.dateRange)
      ..writeByte(7)
      ..write(obj.restoreDate)
      ..writeByte(8)
      ..write(obj.elementRestoreDate);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketingStatus _$MarketingStatusFromJson(Map<String, dynamic> json) {
  return MarketingStatus(
    json['country'] == null
        ? null
        : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
    json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    json['dateRange'] == null
        ? null
        : Period.fromJson(json['dateRange'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: json['jurisdiction'] == null
        ? null
        : CodeableConcept.fromJson(
            json['jurisdiction'] as Map<String, dynamic>),
    restoreDate: json['restoreDate'] == null
        ? null
        : DateTime.parse(json['restoreDate'] as String),
    elementRestoreDate: json['elementRestoreDate'] == null
        ? null
        : Element.fromJson(json['elementRestoreDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MarketingStatusToJson(MarketingStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'country': instance.country?.toJson(),
      'jurisdiction': instance.jurisdiction?.toJson(),
      'status': instance.status?.toJson(),
      'dateRange': instance.dateRange?.toJson(),
      'restoreDate': instance.restoreDate?.toIso8601String(),
      'elementRestoreDate': instance.elementRestoreDate?.toJson(),
    };
