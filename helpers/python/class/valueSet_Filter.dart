

part 'valueSet_Filter.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Filter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String property;
  Element _property;
  enum: =is-adescendent-ofis-not-aregexinnot-ingeneralizesexists op;
  Element _op;
  String value;
  Element _value;


ValueSet_Filter(
      {this.id,
this.extension,
this.modifierExtension,
this.property,
this._property,
this.op,
this._op,
this.value,
this._value});

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) => _$ValueSet_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_FilterToJson(this);
}