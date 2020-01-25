

part 'capabilityStatement_Interaction1.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction1 {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: transactionbatchsearch-systemhistory-system code;
  Element _code;
  String documentation;
  Element _documentation;


CapabilityStatement_Interaction1(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this._code,
this.documentation,
this._documentation});

  factory CapabilityStatement_Interaction1.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_Interaction1FromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_Interaction1ToJson(this);
}