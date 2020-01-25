

part 'contract_Rule.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Rule {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;


Contract_Rule(
      {this.id,
this.extension,
this.modifierExtension,
this.contentAttachment,
this.contentReference});

  factory Contract_Rule.fromJson(Map<String, dynamic> json) => _$Contract_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_RuleToJson(this);
}