

part 'testScript_Operation.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Operation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding type;
  String resource;
  Element _resource;
  String label;
  Element _label;
  String description;
  Element _description;
  String accept;
  Element _accept;
  String contentType;
  Element _contentType;
  int destination;
  Element _destination;
  bool encodeRequestUrl;
  Element _encodeRequestUrl;
  enum: deletegetoptionspatchpostputhead method;
  Element _method;
  int origin;
  Element _origin;
  String params;
  Element _params;
  List<TestScript_RequestHeader> requestHeader;
  String requestId;
  Element _requestId;
  String responseId;
  Element _responseId;
  String sourceId;
  Element _sourceId;
  String targetId;
  Element _targetId;
  String url;
  Element _url;


TestScript_Operation(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.resource,
this._resource,
this.label,
this._label,
this.description,
this._description,
this.accept,
this._accept,
this.contentType,
this._contentType,
this.destination,
this._destination,
this.encodeRequestUrl,
this._encodeRequestUrl,
this.method,
this._method,
this.origin,
this._origin,
this.params,
this._params,
this.requestHeader,
this.requestId,
this._requestId,
this.responseId,
this._responseId,
this.sourceId,
this._sourceId,
this.targetId,
this._targetId,
this.url,
this._url});

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) => _$TestScript_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_OperationToJson(this);
}