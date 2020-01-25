

part 'patient_Communication.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient_Communication {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept language;
  bool preferred;
  Element _preferred;


Patient_Communication(
      {this.id,
this.extension,
this.modifierExtension,
this.language,
this.preferred,
this._preferred});

  factory Patient_Communication.fromJson(Map<String, dynamic> json) => _$Patient_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$Patient_CommunicationToJson(this);
}