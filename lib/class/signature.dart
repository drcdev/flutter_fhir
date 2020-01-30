import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'signature.g.dart';

@JsonSerializable(explicitToJson: true)
class Signature {

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

//  An indication of the reason that the entity signed this document. This
// may be explicitly included as part of the signature information and can
// be used when determining accountability for various actions concerning
// the document.
List<Coding> type;

//  When the digital signature was signed.
DateTime when;

//  Extensions for when
Element element_when;

//  A reference to an application-usable description of the identity that
// signed  (e.g. the signature used their private key).
Reference who;

//  A reference to an application-usable description of the identity that
// is represented by the signature.
Reference onBehalfOf;

//  A mime type that indicates the technical format of the target
// resources signed by the signature.
String targetFormat;

//  Extensions for targetFormat
Element element_targetFormat;

//  A mime type that indicates the technical format of the signature.
// Important mime types are application/signature+xml for X ML DigSig,
// application/jose for JWS, and image/* for a graphical image of a
// signature, etc.
String sigFormat;

//  Extensions for sigFormat
Element element_sigFormat;

//  The base64 encoding of the Signature content. When signature is not
// recorded electronically this element would be empty.
String data;

//  Extensions for data
Element element_data;

Signature(
  {this.id,
    this.extension,
    this.type,
    this.when,
    this.element_when,
    this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.element_targetFormat,
    this.sigFormat,
    this.element_sigFormat,
    this.data,
    this.element_data
    });

  factory Signature.fromJson(Map<String, dynamic> json) => _$SignatureFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureToJson(this);
}

