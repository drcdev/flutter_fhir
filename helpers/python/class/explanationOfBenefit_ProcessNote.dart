

part 'explanationOfBenefit_ProcessNote.g.dart';

@JsonSerializable(explicitToJson: true)
class ExplanationOfBenefit_ProcessNote {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int number;
  Element _number;
  enum: displayprintprintoper type;
  Element _type;
  String text;
  Element _text;
  CodeableConcept language;


ExplanationOfBenefit_ProcessNote(
      {this.id,
this.extension,
this.modifierExtension,
this.number,
this._number,
this.type,
this._type,
this.text,
this._text,
this.language});

  factory ExplanationOfBenefit_ProcessNote.fromJson(Map<String, dynamic> json) => _$ExplanationOfBenefit_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcessNoteToJson(this);
}