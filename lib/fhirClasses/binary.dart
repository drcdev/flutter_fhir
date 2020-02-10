import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'binary.g.dart';

@JsonSerializable(explicitToJson: true)
class Binary {

  //  This is a Binary resource
  final String resourceType= 'Binary';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  MimeType of the binary content represented as a standard MimeType (BCP
  // 13).
  String contentType;

  //  Extensions for contentType
  Element elementContentType;

  //  This element identifies another resource that can be used as a proxy
  // of the security sensitivity to use when deciding and enforcing access
  // control rules for the Binary resource. Given that the Binary resource
  // contains very few elements that can be used to determine the
  // sensitivity of the data and relationships to individuals, the
  // referenced resource stands in as a proxy equivalent for this purpose.
  // This referenced resource may be related to the Binary (e.g. Media,
  // DocumentReference), or may be some non-related Resource purely as a
  // security proxy. E.g. to identify that the binary resource relates to a
  // patient, and access should only be granted to applications that have
  // access to the patient.
  Reference securityContext;

  //  The actual content, base64 encoded.
  String data;

  //  Extensions for data
  Element elementData;

Binary(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.contentType,
    this.elementContentType,
    this.securityContext,
    this.data,
    this.elementData
    });

  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);
  Map<String, dynamic> toJson() => _$BinaryToJson(this);
}

