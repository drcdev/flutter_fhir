

part 'valueSet_Compose.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet_Compose {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String lockedDate;
  Element _lockedDate;
  bool inactive;
  Element _inactive;
  List<ValueSet_Include> include;
  List<ValueSet_Include> exclude;


ValueSet_Compose(
      {this.id,
this.extension,
this.modifierExtension,
this.lockedDate,
this._lockedDate,
this.inactive,
this._inactive,
this.include,
this.exclude});

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) => _$ValueSet_ComposeFromJson(json);
  Map<String, dynamic> toJson() => _$ValueSet_ComposeToJson(this);
}