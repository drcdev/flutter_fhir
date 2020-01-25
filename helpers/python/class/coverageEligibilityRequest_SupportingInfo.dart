

part 'coverageEligibilityRequest_SupportingInfo.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityRequest_SupportingInfo {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element _sequence;
  Reference information;
  bool appliesToAll;
  Element _appliesToAll;


CoverageEligibilityRequest_SupportingInfo(
      {this.id,
this.extension,
this.modifierExtension,
this.sequence,
this._sequence,
this.information,
this.appliesToAll,
this._appliesToAll});

  factory CoverageEligibilityRequest_SupportingInfo.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityRequest_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequest_SupportingInfoToJson(this);
}