

part 'contract_ContentDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_ContentDefinition {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  CodeableConcept subType;
  Reference publisher;
  StringTime publicationDate;
  Element _publicationDate;
  String publicationStatus;
  Element _publicationStatus;
  String copyright;
  Element _copyright;


Contract_ContentDefinition(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.subType,
this.publisher,
this.publicationDate,
this._publicationDate,
this.publicationStatus,
this._publicationStatus,
this.copyright,
this._copyright});

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) => _$Contract_ContentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContentDefinitionToJson(this);
}