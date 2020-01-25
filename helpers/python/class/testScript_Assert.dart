

part 'testScript_Assert.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript_Assert {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String label;
  Element _label;
  String description;
  Element _description;
  enum: responserequest direction;
  Element _direction;
  String compareToSourceId;
  Element _compareToSourceId;
  String compareToSourceExpression;
  Element _compareToSourceExpression;
  String compareToSourcePath;
  Element _compareToSourcePath;
  String contentType;
  Element _contentType;
  String expression;
  Element _expression;
  String headerField;
  Element _headerField;
  String minimumId;
  Element _minimumId;
  bool navigationLinks;
  Element _navigationLinks;
  enum: equalsnotEqualsinnotIngreaterThanlessThanemptynotEmptycontainsnotContainseval operator;
  Element _operator;
  String path;
  Element _path;
  enum: deletegetoptionspatchpostputhead requestMethod;
  Element _requestMethod;
  String requestURL;
  Element _requestURL;
  String resource;
  Element _resource;
  enum: okaycreatednoContentnotModifiedbadforbiddennotFoundmethodNotAllowedconflictgonepreconditionFailedunprocessable response;
  Element _response;
  String responseCode;
  Element _responseCode;
  String sourceId;
  Element _sourceId;
  String validateProfileId;
  Element _validateProfileId;
  String value;
  Element _value;
  bool warningOnly;
  Element _warningOnly;


TestScript_Assert(
      {this.id,
this.extension,
this.modifierExtension,
this.label,
this._label,
this.description,
this._description,
this.direction,
this._direction,
this.compareToSourceId,
this._compareToSourceId,
this.compareToSourceExpression,
this._compareToSourceExpression,
this.compareToSourcePath,
this._compareToSourcePath,
this.contentType,
this._contentType,
this.expression,
this._expression,
this.headerField,
this._headerField,
this.minimumId,
this._minimumId,
this.navigationLinks,
this._navigationLinks,
this.operator,
this._operator,
this.path,
this._path,
this.requestMethod,
this._requestMethod,
this.requestURL,
this._requestURL,
this.resource,
this._resource,
this.response,
this._response,
this.responseCode,
this._responseCode,
this.sourceId,
this._sourceId,
this.validateProfileId,
this._validateProfileId,
this.value,
this._value,
this.warningOnly,
this._warningOnly});

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) => _$TestScript_AssertFromJson(json);
  Map<String, dynamic> toJson() => _$TestScript_AssertToJson(this);
}