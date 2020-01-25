

part 'terminologyCapabilities_Filter.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Filter {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element _code;
  List<String> op;
  List<Element> _op;


TerminologyCapabilities_Filter(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.op,
this._op});

  factory TerminologyCapabilities_Filter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_FilterFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_FilterToJson(this);
}