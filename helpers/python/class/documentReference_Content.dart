

part 'documentReference_Content.g.dart';

@JsonSerializable(explicitToJson: true)
class DocumentReference_Content {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Attachment attachment;
  Coding format;


DocumentReference_Content(
      {this.id,
this.extension,
this.modifierExtension,
this.attachment,
this.format});

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) => _$DocumentReference_ContentFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentReference_ContentToJson(this);
}