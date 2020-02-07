import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'marketingStatus.g.dart';

@JsonSerializable(explicitToJson: true)
class MarketingStatus {

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

  //  The country in which the marketing authorisation has been granted
  // shall be specified It should be specified using the ISO 3166 ‑ 1
  // alpha-2 code elements.
  CodeableConcept country;

  //  Where a Medicines Regulatory Agency has granted a marketing
  // authorisation for which specific provisions within a jurisdiction
  // apply, the jurisdiction can be specified using an appropriate
  // controlled terminology The controlled term and the controlled term
  // identifier shall be specified.
  CodeableConcept jurisdiction;

  //  This attribute provides information on the status of the marketing of
  // the medicinal product See ISO/TS 20443 for more information and
  // examples.
  CodeableConcept status;

  //  The date when the Medicinal Product is placed on the market by the
  // Marketing Authorisation Holder (or where applicable, the
  // manufacturer/distributor) in a country and/or jurisdiction shall be
  // provided A complete date consisting of day, month and year shall be
  // specified using the ISO 8601 date format NOTE “Placed on the market”
  // refers to the release of the Medicinal Product into the distribution
  // chain.
  Period dateRange;

  //  The date when the Medicinal Product is placed on the market by the
  // Marketing Authorisation Holder (or where applicable, the
  // manufacturer/distributor) in a country and/or jurisdiction shall be
  // provided A complete date consisting of day, month and year shall be
  // specified using the ISO 8601 date format NOTE “Placed on the market”
  // refers to the release of the Medicinal Product into the distribution
  // chain.
  DateTime restoreDate;

  //  Extensions for restoreDate
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

