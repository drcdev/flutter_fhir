

part 'claimResponse_Item.g.dart';

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Item {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int itemSequence;
  Element _itemSequence;
  List<int> noteNumber;
  List<Element> _noteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_Detail> detail;


ClaimResponse_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.itemSequence,
this._itemSequence,
this.noteNumber,
this._noteNumber,
this.adjudication,
this.detail});

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ItemToJson(this);
}