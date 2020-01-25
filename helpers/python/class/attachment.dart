

part 'attachment.g.dart';

@JsonSerializable(explicitToJson: true)
class Attachment {

  String id;
  List<Extension> extension;
  String contentType;
  Element _contentType;
  String language;
  Element _language;
  String data;
  Element _data;
  String url;
  Element _url;
  int size;
  Element _size;
  String hash;
  Element _hash;
  String title;
  Element _title;
  StringTime creation;
  Element _creation;


Attachment(
      {this.id,
this.extension,
this.contentType,
this._contentType,
this.language,
this._language,
this.data,
this._data,
this.url,
this._url,
this.size,
this._size,
this.hash,
this._hash,
this.title,
this._title,
this.creation,
this._creation});

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}