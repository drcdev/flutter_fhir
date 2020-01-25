

part 'contract_Friendly.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Friendly {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment contentAttachment;
  Reference contentReference;


Contract_Friendly(
      {this.id,
this.extension,
this.modifierExtension,
this.contentAttachment,
this.contentReference});

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) => _$Contract_FriendlyFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_FriendlyToJson(this);
}