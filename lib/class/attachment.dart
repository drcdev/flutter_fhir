import 'package:json_annotation/json_annotation.dart';
part 'attachment.g.dart';

@JsonSerializable(explicitToJson: true)
class Attachment {
  String contentType;
  String language;
  String data; // Data inline, base64ed
  String url;
  int size;
  String hash; // Hash of the data (sha-1, base64ed)
  String title;
  DateTime creation;

  Attachment(
      {this.contentType,
        this.language,
        this.data,
        this.url,
        this.size,
        this.hash,
        this.title,
        this.creation});
  
  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}