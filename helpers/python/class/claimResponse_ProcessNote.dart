

part 'claimResponse_ProcessNote.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_ProcessNote {

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


ClaimResponse_ProcessNote(
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

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ProcessNoteToJson(this);
}