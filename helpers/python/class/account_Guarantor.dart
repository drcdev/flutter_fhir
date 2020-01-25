

part 'account_Guarantor.g.dart';

@JsonSerializable(explicitToJson: true)
class Account_Guarantor {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference party;
  bool onHold;
  Element _onHold;
  Period period;


Account_Guarantor(
      {this.id,
this.extension,
this.modifierExtension,
this.party,
this.onHold,
this._onHold,
this.period});

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) => _$Account_GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$Account_GuarantorToJson(this);
}