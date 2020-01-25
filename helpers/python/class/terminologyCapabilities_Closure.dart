

part 'terminologyCapabilities_Closure.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Closure {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool translation;
  Element _translation;


TerminologyCapabilities_Closure(
      {this.id,
this.extension,
this.modifierExtension,
this.translation,
this._translation});

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ClosureToJson(this);
}