
part 'bundle.g.dart';

@JsonSerializable(explicitToJson: true)
class Bundle {
  
  // This is a Bundle 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A persistent identifier for the bundle that won't change as a bundle is
  //  copied from server to server.
  Identifier identifier;

  // Indicates the purpose of this bundle - how it is intended to be used.Enum
  //  enum; //
  //  documentmessagetransactiontransaction-responsebatchbatch-responsehistorysearchsetcollection type;

  // Extensions for type
  Element _type;

  // The date/time that the bundle was assembled - i.e. when the resources were
  //  placed in the bundle.
  DateTime timestamp;

  // Extensions for timestamp
  Element _timestamp;

  // If a set of search matches, this is the total number of entries of type
  //  'match' across all pages in the search.  It does not include search.mode =
  //  'include' or 'outcome' entries and it does not provide a count of the number of
  //  entries in the Bundle.
  int total;

  // Extensions for total
  Element _total;

  // A series of links that provide context to this bundle.
  List<Bundle_Link link;

  // An entry in a bundle resource - will either contain a resource or
  //  information about a resource (transactions and history only).
  List<Bundle_Entry entry;

  // Digital Signature - base64 encoded. XML-DSig or a JWT.
  Signature signature
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
this.signature});

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Entry {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A series of links that provide context to this entry.
  List<Bundle_Link link;

  // The Absolute URL for the resource.  The fullUrl SHALL NOT disagree with the
  //  id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL shall be
  //  version-independent URL consistent with the Resource.id. The fullUrl is a
  //  version independent reference to the resource. The fullUrl element SHALL have a
  //  value except that: 
* fullUrl can be empty on a POST (although it does not need to when specifying a temporary id for reference in the bundle)
* Results from operations might involve resources that are not identified.
  String fullUrl;

  // Extensions for fullUrl
  Element _fullUrl;

  // The Resource for the entry. The purpose/meaning of the resource is
  //  determined by the Bundle.type.
  ResourceList resource;

  // Information about the search process that lead to the creation of this
  //  entry.
  Bundle_Search search;

  // Additional information about how this entry should be processed as part of
  //  a transaction or batch.  For history, it shows how the entry was processed to
  //  create the version contained in the entry.
  Bundle_Request request;

  // Indicates the results of processing the corresponding 'request' entry in
  //  the batch or transaction being responded to or what the results of an operation
  //  where when returning history.
  Bundle_Response response
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
this.response});

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) => _$Bundle_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_EntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Link {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A name which details the functional use for this link - see
  // 
  //  [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  String relation;

  // Extensions for relation
  Element _relation;

  // The reference details for the link.
  String url;

  // Extensions for url
  Element _url
Bundle_Link(
      {this.id,
this.extension,
this.modifierExtension,
this.relation,
this._relation,
this.url,
this._url});

  factory Bundle_Link.fromJson(Map<String, dynamic> json) => _$Bundle_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle_Request {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // In a transaction or batch, this is the HTTP action to be executed for this
  //  entry. In a history bundle, this indicates the HTTP action that occurred.Enum
  //  enum; // GETHEADPOSTPUTDELETEPATCH method;

  // Extensions for method
  Element _method;

  // The URL for this entry, relative to the root (the address to which the
  //  request is posted).
  String url;

  // Extensions for url
  Element _url;

  // If the ETag values match, return a 304 Not Modified status. See the API
  //  documentation for ["Conditional Read"](http.html#cread).
  String ifNoneMatch;

  // Extensions for ifNoneMatch
  Element _ifNoneMatch;

  // Only perform the operation if the last updated date matches. See the API
  //  documentation for ["Conditional Read"](http.html#cread).
  DateTime ifModifiedSince;

  // Extensions for ifModifiedSince
  Element _ifModifiedSince;

  // Only perform the operation if the Etag value matches. For more information,
  //  see the API section ["Managing Resource Contention"](http.html#concurrency).
  String ifMatch;

  // Extensions for ifMatch
  Element _ifMatch;

  // Instruct the server not to perform the create if a specified resource
  //  already exists. For further information, see the API documentation for
  //  ["Conditional Create"](http.html#ccreate). This is just the query portion of
  //  the URL - what follows the "?" (not including the "?").
  String ifNoneExist;

  // Extensions for ifNoneExist
  Element _ifNoneExist
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

@JsonSerializable(explicitToJson: true)
class Bundle_Response {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The status code returned by processing this entry. The status SHALL start
  //  with a 3 digit HTTP code (e.g. 404) and may contain the standard HTTP
  //  description associated with the status code.
  String status;

  // Extensions for status
  Element _status;

  // The location header created by processing this operation, populated if the
  //  operation returns a location.
  String location;

  // Extensions for location
  Element _location;

  // The Etag for the resource, if the operation for the entry produced a
  //  versioned resource (see [Resource Metadata and
  //  Versioning](http.html#versioning) and [Managing Resource Contention](http.html#concurrency)).
  String etag;

  // Extensions for etag
  Element _etag;

  // The date/time that the resource was modified on the server.
  DateTime lastModified;

  // Extensions for lastModified
  Element _lastModified;

  // An OperationOutcome containing hints and warnings produced as part of
  //  processing this entry in a batch or transaction.
  ResourceList outcome
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

@JsonSerializable(explicitToJson: true)
class Bundle_Search {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Why this entry is in the result set - whether it's included as a match or
  //  because of an _include requirement, or to convey information or warning
  //  information about the search process.Enum enum; // matchincludeoutcome mode;

  // Extensions for mode
  Element _mode;

  // When searching, the server's search ranking score for the entry.
  double score;

  // Extensions for score
  Element _score
Bundle_Search(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.score,
this._score});

  factory Bundle_Search.fromJson(Map<String, dynamic> json) => _$Bundle_SearchFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_SearchToJson(this);
}
