

part 'practitionerRole_NotAvailable.g.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole_NotAvailable {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  Period during;


PractitionerRole_NotAvailable(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.during});

  factory PractitionerRole_NotAvailable.fromJson(Map<String, dynamic> json) => _$PractitionerRole_NotAvailableFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRole_NotAvailableToJson(this);
}