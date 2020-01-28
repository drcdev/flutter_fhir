import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/extension.dart';

part 'attachment.g.dart';

@JsonSerializable(explicitToJson: true)
class Attachment {

//  Unique id for the element within a resource (for internal references).
// This may be any string value that does not contain spaces.
String id;

//  May be used to represent additional information that is not part of
// the basic definition of the element. To make the use of extensions safe
// and manageable, there is a strict set of governance  applied to the
// definition and use of extensions. Though any implementer can define an
// extension, there is a set of requirements that SHALL be met as part of
// the definition of the extension.
List<Extension> extension;

//  Identifies the type of the data in the attachment and allows a method
// to be chosen to interpret or render the data. Includes mime type
// parameters such as charset where appropriate.
String contentType;

//  The human language of the content. The value can be any valid value
// according to BCP 47.
String language;

//  The actual data of the attachment - a sequence of bytes, base64
// encoded.
String data;

//  A location where the data can be accessed.
String url;

//  The number of bytes of data that make up this attachment (before
// base64 encoding, if that is done).
int size;

//  The calculated hash of the data using SHA-1. Represented using base64.
String hash;

//  A label or set of text to display in place of the data.
String title;

//  The date that the attachment was first created.
DateTime creation;

Attachment(
  {this.id,
    this.extension,
    this.contentType,
    this.language,
    this.data,
    this.url,
    this.size,
    this.hash,
    this.title,
    this.creation
    });

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}

