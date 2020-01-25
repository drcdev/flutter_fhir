

part 'contract_Legal.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Legal {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;


Contract_Legal(
      {this.id,
this.extension,
this.modifierExtension,
this.contentAttachment,
this.contentReference});

  factory Contract_Legal.fromJson(Map<String, dynamic> json) => _$Contract_LegalFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_LegalToJson(this);
}