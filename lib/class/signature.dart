import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/reference.dart';

part 'signature.g.dart';

@JsonSerializable(explicitToJson: true)
class Signature {

  // R!  Indication of the reason the entity signed the object(s)
  List<Coding> type;

  // R!  When the signature was created
  DateTime when;

  // R!  Who signed
  // Reference(Practitioner|PractitionerRole|RelatedPerson|Patient|
  //   Device|Organization)
  Reference who;

  // The party represented
  // Reference(Practitioner|PractitionerRole|RelatedPerson|
  //   Patient|Device|Organization)
  Reference onBehalfOf;

  // The technical format of the signed resources
  String targetFormat;

  // The technical format of the signature
  String sigFormat;

  // The actual signature content (XML DigSig. JWS, picture, etc.)
  String data; //"<base64Binary>"

  Signature(
      {this.type,
        this.when,
        this.who,
        this.onBehalfOf,
        this.targetFormat,
        this.sigFormat,
        this.data});

  factory Signature.fromJson(Map<String, dynamic> json) => _$SignatureFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureToJson(this);
}