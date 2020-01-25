

part 'claimResponse_Detail.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int detailSequence;
  Element _detailSequence;
  List<int> noteNumber;
  List<Element> _noteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_SubDetail> subDetail;


ClaimResponse_Detail(
      {this.id,
this.extension,
this.modifierExtension,
this.detailSequence,
this._detailSequence,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.subDetail});

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_DetailToJson(this);
}