

part 'claimResponse_Error.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Error {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int itemSequence;
  Element _itemSequence;
  int detailSequence;
  Element _detailSequence;
  int subDetailSequence;
  Element _subDetailSequence;
  CodeableConcept code;


ClaimResponse_Error(
      {this.id,
this.extension,
this.modifierExtension,
this.itemSequence,
this._itemSequence,
this.detailSequence,
this._detailSequence,
this.subDetailSequence,
this._subDetailSequence,
this.code});

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ErrorToJson(this);
}