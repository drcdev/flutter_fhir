

part 'contract_Context.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Context {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference reference;
  List<CodeableConcept> code;
  String text;
  Element _text;


Contract_Context(
      {this.id,
this.extension,
this.modifierExtension,
this.reference,
this.code,
this.text,
this._text});

  factory Contract_Context.fromJson(Map<String, dynamic> json) => _$Contract_ContextFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ContextToJson(this);
}