

part 'account_Coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Account_Coverage {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference coverage;
  int priority;
  Element _priority;


Account_Coverage(
      {this.id,
this.extension,
this.modifierExtension,
this.coverage,
this.priority,
this._priority});

  factory Account_Coverage.fromJson(Map<String, dynamic> json) => _$Account_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$Account_CoverageToJson(this);
}