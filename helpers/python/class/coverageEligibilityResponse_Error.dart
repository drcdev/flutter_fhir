

part 'coverageEligibilityResponse_Error.g.dart';

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;


CoverageEligibilityResponse_Error(
      {this.id,
this.extension,
this.modifierExtension,
this.code});

  factory CoverageEligibilityResponse_Error.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ErrorToJson(this);
}