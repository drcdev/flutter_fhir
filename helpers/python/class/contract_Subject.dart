

part 'contract_Subject.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Subject {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Reference> reference;
  CodeableConcept role;


Contract_Subject(
      {this.id,
this.extension,
this.modifierExtension,
this.reference,
this.role});

  factory Contract_Subject.fromJson(Map<String, dynamic> json) => _$Contract_SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_SubjectToJson(this);
}