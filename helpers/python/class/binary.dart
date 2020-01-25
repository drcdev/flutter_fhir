

part 'binary.g.dart';

@JsonSerializable(explicitToJson: true)
class Binary {

  This is a Binary resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  String contentType;
  Element _contentType;
  Reference securityContext;
  String data;
  Element _data;


Binary(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.contentType,
this._contentType,
this.securityContext,
this.data,
this._data});

  factory Binary.fromJson(Map<String, dynamic> json) => _$BinaryFromJson(json);
  Map<String, dynamic> toJson() => _$BinaryToJson(this);
}