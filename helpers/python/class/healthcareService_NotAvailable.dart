

part 'healthcareService_NotAvailable.g.dart';

@JsonSerializable(explicitToJson: true)
class HealthcareService_NotAvailable {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  Period during;


HealthcareService_NotAvailable(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.during});

  factory HealthcareService_NotAvailable.fromJson(Map<String, dynamic> json) => _$HealthcareService_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$HealthcareService_NotAvailableToJson(this);
}