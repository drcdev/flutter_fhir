

part 'claimResponse_SubDetail.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int subDetailSequence;
  Element _subDetailSequence;
  List<int> noteNumber;
  List<Element> _noteNumber;
  List<ClaimResponse_Adjudication> adjudication;


ClaimResponse_SubDetail(
      {this.id,
this.extension,
this.modifierExtension,
this.subDetailSequence,
this._subDetailSequence,
this.noteNumber,
this._noteNumber,
this.adjudication});

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetailToJson(this);
}