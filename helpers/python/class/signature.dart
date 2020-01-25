

part 'signature.g.dart';

@JsonSerializable(explicitToJson: true)
class Signature {

  String id;
  List<Extension> extension;
  List<Coding> type;
  DateTime when;
  Element _when;
  Reference who;
  Reference onBehalfOf;
  String targetFormat;
  Element _targetFormat;
  String sigFormat;
  Element _sigFormat;
  String data;
  Element _data;


Signature(
      {this.id,
this.extension,
this.type,
this.when,
this._when,
this.who,
this.onBehalfOf,
this.targetFormat,
this._targetFormat,
this.sigFormat,
this._sigFormat,
this.data,
this._data});

  factory Signature.fromJson(Map<String, dynamic> json) => _$SignatureFromJson(json);
  Map<String, dynamic> toJson() => _$SignatureToJson(this);
}