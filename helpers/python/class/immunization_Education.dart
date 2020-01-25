

part 'immunization_Education.g.dart';

@JsonSerializable(explicitToJson: true)
class Immunization_Education {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String documentType;
  Element _documentType;
  String reference;
  Element _reference;
  StringTime publicationDate;
  Element _publicationDate;
  StringTime presentationDate;
  Element _presentationDate;


Immunization_Education(
      {this.id,
this.extension,
this.modifierExtension,
this.documentType,
this._documentType,
this.reference,
this._reference,
this.publicationDate,
this._publicationDate,
this.presentationDate,
this._presentationDate});

  factory Immunization_Education.fromJson(Map<String, dynamic> json) => _$Immunization_EducationFromJson(json);
  Map<String, dynamic> toJson() => _$Immunization_EducationToJson(this);
}