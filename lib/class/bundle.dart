import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/signature.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {
  String resourceType;
  Identifier identifier;
  String type;
  DateTime timestamp;
  int total;
  List<_Link> link;
  List<Entry> entry;
  Signature signature;

  Bundle(
      {this.resourceType,
        this.identifier,
        this.type,
        this.timestamp,
        this.total,
        this.link,
        this.entry,
        this.signature});

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Link {
  String relation;
  String url;

  _Link({this.relation, this.url});

  factory _Link.fromJson(Map<String, dynamic> json) => _$_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Entry {
  List<_Link> link;
  String fullUrl;
  Resource resource;
  Search search;
  Request request;
  Response response;

  Entry(
      {this.link,
        this.fullUrl,
        this.resource,
        this.search,
        this.request,
        this.response});

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
  Map<String, dynamic> toJson() => _$EntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Search {
  String mode;
  int score;

  Search({this.mode, this.score});

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
  Map<String, dynamic> toJson() => _$SearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Request {
  String method;
  String url;
  String ifNoneMatch;
  DateTime ifModifiedSince;
  String ifMatch;
  String ifNoneExist;

  Request(
      {this.method,
        this.url,
        this.ifNoneMatch,
        this.ifModifiedSince,
        this.ifMatch,
        this.ifNoneExist});

  factory Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);
  Map<String, dynamic> toJson() => _$RequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Response {
  String status;
  String location;
  String etag;
  DateTime lastModified;
  Resource outcome;

  Response(
      {this.status, this.location, this.etag, this.lastModified, this.outcome});

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}