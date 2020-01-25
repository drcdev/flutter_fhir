

part 'marketingStatus.g.dart';

@JsonSerializable(explicitToJson: true)
class MarketingStatus {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept country;
  CodeableConcept jurisdiction;
  CodeableConcept status;
  Period dateRange;
  StringTime restoreDate;
  Element _restoreDate;


MarketingStatus(
      {this.id,
this.extension,
this.modifierExtension,
this.country,
this.jurisdiction,
this.status,
this.dateRange,
this.restoreDate,
this._restoreDate});

  factory MarketingStatus.fromJson(Map<String, dynamic> json) => _$MarketingStatusFromJson(json);
  Map<String, dynamic> toJson() => _$MarketingStatusToJson(this);
}