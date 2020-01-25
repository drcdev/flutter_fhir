

part 'terminologyCapabilities_Expansion.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Expansion {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool hierarchical;
  Element _hierarchical;
  bool paging;
  Element _paging;
  bool incomplete;
  Element _incomplete;
  List<TerminologyCapabilities_Parameter> parameter;
  String textFilter;
  Element _textFilter;


TerminologyCapabilities_Expansion(
      {this.id,
this.extension,
this.modifierExtension,
this.hierarchical,
this._hierarchical,
this.paging,
this._paging,
this.incomplete,
this._incomplete,
this.parameter,
this.textFilter,
this._textFilter});

  factory TerminologyCapabilities_Expansion.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ExpansionFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ExpansionToJson(this);
}