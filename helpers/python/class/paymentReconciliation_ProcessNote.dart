

part 'paymentReconciliation_ProcessNote.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentReconciliation_ProcessNote {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: displayprintprintoper type;
  Element _type;
  String text;
  Element _text;


PaymentReconciliation_ProcessNote(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.text,
this._text});

  factory PaymentReconciliation_ProcessNote.fromJson(Map<String, dynamic> json) => _$PaymentReconciliation_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentReconciliation_ProcessNoteToJson(this);
}