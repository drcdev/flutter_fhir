

part 'bundle_Response.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle_Response {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String status;
  Element _status;
  String location;
  Element _location;
  String etag;
  Element _etag;
  DateTime lastModified;
  Element _lastModified;
  ResourceList outcome;


Bundle_Response(
      {this.id,
this.extension,
this.modifierExtension,
this.status,
this._status,
this.location,
this._location,
this.etag,
this._etag,
this.lastModified,
this._lastModified,
this.outcome});

  factory Bundle_Response.fromJson(Map<String, dynamic> json) => _$Bundle_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_ResponseToJson(this);
}