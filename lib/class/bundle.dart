import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/resource.dart';
import 'package:flutter_fhir/class/signature.dart';

part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // Persistent identifier for the bundle
  Identifier identifier;

  // R!  document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection
  String type;

  // When the bundle was assembled
  DateTime timestamp;

  // C? If search, the total number of matches
  int total;

  // Links related to this Bundle
  List<Link> link;

  // Entry in the bundle - will have a resource or information
  List<_Entry> entry;

  // Digital Signature
  Signature signature;

  Bundle(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
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
class Link {

  // R!  See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1
  String relation;

  // R!  Reference details for the link
  String url;

  Link({this.relation, this.url});

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class _Entry {

  // Links related to this entry
  // Content as for Bundle.link
  List<Link> link;

  // URI for resource (Absolute URL server address or URI for UUID/OID)
  String fullUrl;

  // A resource in the bundle
  Resource resource;

  // C? Search related information
  Search search;

  // C? Additional execution information (transaction/batch/history)
  Request request;

  // C? Results of execution (transaction/batch/history)
  Response response;

  _Entry(
      {this.link,
        this.fullUrl,
        this.resource,
        this.search,
        this.request,
        this.response});

  factory _Entry.fromJson(Map<String, dynamic> json) => _$_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$_EntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Search {

  // match | include | outcome - why this is in the result set
  String mode;

  // Search ranking (between 0 and 1)
  int score;

  Search({this.mode, this.score});

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
  Map<String, dynamic> toJson() => _$SearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Request {

  // R!  GET | HEAD | POST | PUT | DELETE | PATCH
  String method;

  // R!  URL for HTTP equivalent of this entry
  String url;

  // For managing cache currency
  String ifNoneMatch;

  // For managing cache currency
  DateTime ifModifiedSince;

  // For managing update contention
  String ifMatch;

  // For conditional creates
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

  // R!  Status response code (text optional)
  String status;

  // The location (if the operation returns a location)
  String location;

  // The Etag for the resource (if relevant)
  String etag;

  // Server's date time modified
  DateTime lastModified;

  // OperationOutcome with hints and warnings (for batch/transaction)
  Resource outcome;

  Response(
      {this.status, this.location, this.etag, this.lastModified, this.outcome});

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}