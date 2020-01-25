

part 'money.g.dart';

@JsonSerializable(explicitToJson: true)
class Money {

  String id;
  List<Extension> extension;
  double value;
  Element _value;
  String currency;
  Element _currency;


Money(
      {this.id,
this.extension,
this.value,
this._value,
this.currency,
this._currency});

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
  Map<String, dynamic> toJson() => _$MoneyToJson(this);
}