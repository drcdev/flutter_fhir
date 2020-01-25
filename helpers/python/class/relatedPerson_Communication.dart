

part 'relatedPerson_Communication.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedPerson_Communication {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept language;
  bool preferred;
  Element _preferred;


RelatedPerson_Communication(
      {this.id,
this.extension,
this.modifierExtension,
this.language,
this.preferred,
this._preferred});

  factory RelatedPerson_Communication.fromJson(Map<String, dynamic> json) => _$RelatedPerson_CommunicationFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedPerson_CommunicationToJson(this);
}