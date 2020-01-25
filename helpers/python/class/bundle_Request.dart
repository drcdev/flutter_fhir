

part 'bundle_Request.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle_Request {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: GETHEADPOSTPUTDELETEPATCH method;
  Element _method;
  String url;
  Element _url;
  String ifNoneMatch;
  Element _ifNoneMatch;
  DateTime ifModifiedSince;
  Element _ifModifiedSince;
  String ifMatch;
  Element _ifMatch;
  String ifNoneExist;
  Element _ifNoneExist;


Bundle_Request(
      {this.id,
this.extension,
this.modifierExtension,
this.method,
this._method,
this.url,
this._url,
this.ifNoneMatch,
this._ifNoneMatch,
this.ifModifiedSince,
this._ifModifiedSince,
this.ifMatch,
this._ifMatch,
this.ifNoneExist,
this._ifNoneExist});

  factory Bundle_Request.fromJson(Map<String, dynamic> json) => _$Bundle_RequestFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_RequestToJson(this);
}