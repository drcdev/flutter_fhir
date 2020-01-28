part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {

Bundle resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Identifier identifier;
String type; // <code> enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection;
Element _type;
DateTime timestamp;
Element _timestamp;
int total;
Element _total;
List<Bundle_Link> link;
List<Bundle_Entry> entry;
Signature signature;

Bundle(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.identifier,
      this.type,
      this._type,
      this.timestamp,
      this._timestamp,
      this.total,
      this._total,
      this.link,
      this.entry,
      this.signature,
      });

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() _$BundleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Link {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String relation;
Element _relation;
String url;
Element _url;

Bundle_Link(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.relation,
      this._relation,
      this.url,
      this._url,
      });

  factory Bundle_Link.fromJson(Map<String, dynamic> json) => _$Bundle_LinkFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Entry {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Bundle_Link> link;
String fullUrl;
Element _fullUrl;
ResourceList resource;
Bundle_Search search;
Bundle_Request request;
Bundle_Response response;

Bundle_Entry(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.link,
      this.fullUrl,
      this._fullUrl,
      this.resource,
      this.search,
      this.request,
      this.response,
      });

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) => _$Bundle_EntryFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_EntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Search {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: match/include/outcome;
Element _mode;
double score;
Element _score;

Bundle_Search(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.score,
      this._score,
      });

  factory Bundle_Search.fromJson(Map<String, dynamic> json) => _$Bundle_SearchFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_SearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Request {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String method; // <code> enum: GET/HEAD/POST/PUT/DELETE/PATCH;
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
      this._ifNoneExist,
      });

  factory Bundle_Request.fromJson(Map<String, dynamic> json) => _$Bundle_RequestFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_RequestToJson(this);
}

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
      this.outcome,
      });

  factory Bundle_Response.fromJson(Map<String, dynamic> json) => _$Bundle_ResponseFromJson(json);
  Map<String, dynamic> toJson() _$Bundle_ResponseToJson(this);
}

