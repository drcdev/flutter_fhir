

part 'practitioner_Qualification.g.dart';

@JsonSerializable(explicitToJson: true)
class Practitioner_Qualification {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  CodeableConcept code;
  Period period;
  Reference issuer;


Practitioner_Qualification(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.code,
this.period,
this.issuer});

  factory Practitioner_Qualification.fromJson(Map<String, dynamic> json) => _$Practitioner_QualificationFromJson(json);
  Map<String, dynamic> toJson() => _$Practitioner_QualificationToJson(this);
}