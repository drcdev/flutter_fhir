import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/element.dart';
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

  //  Extensions for contentType
  Element elementContentType;

  //  The human language of the content. The value can be any valid value
  // according to BCP 47.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  The actual data of the attachment - a sequence of bytes, base64
  // encoded.
  String data;

  //  Extensions for data
  Element elementData;

  //  A location where the data can be accessed.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  The number of bytes of data that make up this attachment (before
  // base64 encoding, if that is done).
  int size;

  //  Extensions for size
  Element elementSize;

  //  The calculated hash of the data using SHA-1. Represented using base64.
  String hash;

  //  Extensions for hash
  Element elementHash;

  //  A label or set of text to display in place of the data.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The date that the attachment was first created.
  DateTime creation;

  //  Extensions for creation
  Element elementCreation;

Attachment(
  {this.id,
    this.extension,
    this.contentType,
    this.elementContentType,
    this.language,
    this.elementLanguage,
    this.data,
    this.elementData,
    this.url,
    this.elementUrl,
    this.size,
    this.elementSize,
    this.hash,
    this.elementHash,
    this.title,
    this.elementTitle,
    this.creation,
    this.elementCreation
    });

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}

