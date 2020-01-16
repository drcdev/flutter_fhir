import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'signature.g.dart';

@JsonSerializable(explicitToJson: true)
class Signature {
  List<Coding> type;
  DateTime when;
  Reference who;
  Reference onBehalfOf;
  String targetFormat;
  String sigFormat;
  String data; //"<base64Binary>"
    // The actual signature content (XML DigSig. JWS, picture, etc.)

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