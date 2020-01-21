import 'package:json_annotation/json_annotation.dart';
part 'attachment.g.dart';

@JsonSerializable(explicitToJson: true)
class Attachment {

  // Mime type of the content, with charset etc.
  String contentType;

  // Human language of the content (BCP-47)
  String language;

  // Data inline, base64ed
  String data;

  // Uri where the data can be found
  String url;

  // Number of bytes of content (if url provided)
  int size;

  // Hash of the data (sha-1, base64ed)
  String hash;

  // Label to display in place of the data
  String title;

  // Date attachment was first created
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