

part 'healthcareService_Eligibility.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService_Eligibility {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  String comment;
  Element _comment;


HealthcareService_Eligibility(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.comment,
this._comment});

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) => _$HealthcareService_EligibilityFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_EligibilityToJson(this);
}