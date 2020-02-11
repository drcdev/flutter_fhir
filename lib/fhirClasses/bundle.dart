import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 82)
class Bundle {

  //  This is a Bundle resource
  @HiveField(0)
  final String resourceType= 'Bundle';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A persistent identifier for the bundle that won't change as a bundle
  // is copied from server to server.
  @HiveField(7)
  Identifier identifier;

  //  Indicates the purpose of this bundle - how it is intended to be used.
  @HiveField(8)
  String type; // <code> enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection;

  //  Extensions for type
  @HiveField(9)
  Element elementType;

  //  The date/time that the bundle was assembled - i.e. when the resources
  // were placed in the bundle.
  @HiveField(10)
  DateTime timestamp;

  //  Extensions for timestamp
  @HiveField(11)
  Element elementTimestamp;

  //  If a set of search matches, this is the total number of entries of
  // type 'match' across all pages in the search.  It does not include
  // search.mode = 'include' or 'outcome' entries and it does not provide a
  // count of the number of entries in the Bundle.
  @HiveField(12)
  int total;

  //  Extensions for total
  @HiveField(13)
  Element elementTotal;

  //  A series of links that provide context to this bundle.
  @HiveField(14)
  List<Bundle_Link> link;

  //  An entry in a bundle resource - will either contain a resource or
  // information about a resource (transactions and history only).
  @HiveField(15)
  List<Bundle_Entry> entry;

  //  Digital Signature - base64 encoded. XML-DSig or a JWT.
  @HiveField(16)
  Signature signature;

Bundle(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.identifier,
    this.type,
    this.elementType,
    this.timestamp,
    this.elementTimestamp,
    this.total,
    this.elementTotal,
    this.link,
    this.entry,
    this.signature
    });

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 83)
class Bundle_Link {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A name which details the functional use for this link - see
  // [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  @HiveField(3)
  String relation;

  //  Extensions for relation
  @HiveField(4)
  Element elementRelation;

  //  The reference details for the link.
  @HiveField(5)
  String url;

  //  Extensions for url
  @HiveField(6)
  Element elementUrl;

Bundle_Link(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.relation,
    this.elementRelation,
    this.url,
    this.elementUrl
    });

  factory Bundle_Link.fromJson(Map<String, dynamic> json) => _$Bundle_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 84)
class Bundle_Entry {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A series of links that provide context to this entry.
  @HiveField(3)
  List<Bundle_Link> link;

  //  The Absolute URL for the resource.  The fullUrl SHALL NOT disagree
  // with the id in the resource - i.e. if the fullUrl is not a urn:uuid,
  // the URL shall be version-independent URL consistent with the
  // Resource.id. The fullUrl is a version independent reference to the
  // resource. The fullUrl element SHALL have a value except that:  *
  // fullUrl can be empty on a POST (although it does not need to when
  // specifying a temporary id for reference in the bundle) * Results from
  // operations might involve resources that are not identified.
  @HiveField(4)
  String fullUrl;

  //  Extensions for fullUrl
  @HiveField(5)
  Element elementFullUrl;

  //  The Resource for the entry. The purpose/meaning of the resource is
  // determined by the Bundle.type.
  @HiveField(6)
  dynamic resource;

  //  Information about the search process that lead to the creation of this
  // entry.
  @HiveField(7)
  Bundle_Search search;

  //  Additional information about how this entry should be processed as
  // part of a transaction or batch.  For history, it shows how the entry
  // was processed to create the version contained in the entry.
  @HiveField(8)
  Bundle_Request request;

  //  Indicates the results of processing the corresponding 'request' entry
  // in the batch or transaction being responded to or what the results of
  // an operation where when returning history.
  @HiveField(9)
  Bundle_Response response;

Bundle_Entry(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.link,
    this.fullUrl,
    this.elementFullUrl,
    this.resource,
    this.search,
    this.request,
    this.response
    });

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) => _$Bundle_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_EntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 85)
class Bundle_Search {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Why this entry is in the result set - whether it's included as a match
  // or because of an _include requirement, or to convey information or
  // warning information about the search process.
  @HiveField(3)
  String mode; // <code> enum: match/include/outcome;

  //  Extensions for mode
  @HiveField(4)
  Element elementMode;

  //  When searching, the server's search ranking score for the entry.
  @HiveField(5)
  double score;

  //  Extensions for score
  @HiveField(6)
  Element elementScore;

Bundle_Search(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.score,
    this.elementScore
    });

  factory Bundle_Search.fromJson(Map<String, dynamic> json) => _$Bundle_SearchFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_SearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 86)
class Bundle_Request {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  In a transaction or batch, this is the HTTP action to be executed for
  // this entry. In a history bundle, this indicates the HTTP action that
  // occurred.
  @HiveField(3)
  String method; // <code> enum: GET/HEAD/POST/PUT/DELETE/PATCH;

  //  Extensions for method
  @HiveField(4)
  Element elementMethod;

  //  The URL for this entry, relative to the root (the address to which the
  // request is posted).
  @HiveField(5)
  String url;

  //  Extensions for url
  @HiveField(6)
  Element elementUrl;

  //  If the ETag values match, return a 304 Not Modified status. See the
  // API documentation for ["Conditional Read"](http.html#cread).
  @HiveField(7)
  String ifNoneMatch;

  //  Extensions for ifNoneMatch
  @HiveField(8)
  Element elementIfNoneMatch;

  //  Only perform the operation if the last updated date matches. See the
  // API documentation for ["Conditional Read"](http.html#cread).
  @HiveField(9)
  DateTime ifModifiedSince;

  //  Extensions for ifModifiedSince
  @HiveField(10)
  Element elementIfModifiedSince;

  //  Only perform the operation if the Etag value matches. For more
  // information, see the API section ["Managing Resource
  // Contention"](http.html#concurrency).
  @HiveField(11)
  String ifMatch;

  //  Extensions for ifMatch
  @HiveField(12)
  Element elementIfMatch;

  //  Instruct the server not to perform the create if a specified resource
  // already exists. For further information, see the API documentation for
  // ["Conditional Create"](http.html#ccreate). This is just the query
  // portion of the URL - what follows the "?" (not including the "?").
  @HiveField(13)
  String ifNoneExist;

  //  Extensions for ifNoneExist
  @HiveField(14)
  Element elementIfNoneExist;

Bundle_Request(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.method,
    this.elementMethod,
    this.url,
    this.elementUrl,
    this.ifNoneMatch,
    this.elementIfNoneMatch,
    this.ifModifiedSince,
    this.elementIfModifiedSince,
    this.ifMatch,
    this.elementIfMatch,
    this.ifNoneExist,
    this.elementIfNoneExist
    });

  factory Bundle_Request.fromJson(Map<String, dynamic> json) => _$Bundle_RequestFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_RequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 87)
class Bundle_Response {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The status code returned by processing this entry. The status SHALL
  // start with a 3 digit HTTP code (e.g. 404) and may contain the standard
  // HTTP description associated with the status code.
  @HiveField(3)
  String status;

  //  Extensions for status
  @HiveField(4)
  Element elementStatus;

  //  The location header created by processing this operation, populated if
  // the operation returns a location.
  @HiveField(5)
  String location;

  //  Extensions for location
  @HiveField(6)
  Element elementLocation;

  //  The Etag for the resource, if the operation for the entry produced a
  // versioned resource (see [Resource Metadata and
  // Versioning](http.html#versioning) and [Managing Resource
  // Contention](http.html#concurrency)).
  @HiveField(7)
  String etag;

  //  Extensions for etag
  @HiveField(8)
  Element elementEtag;

  //  The date/time that the resource was modified on the server.
  @HiveField(9)
  DateTime lastModified;

  //  Extensions for lastModified
  @HiveField(10)
  Element elementLastModified;

  //  An OperationOutcome containing hints and warnings produced as part of
  // processing this entry in a batch or transaction.
  @HiveField(11)
  dynamic outcome;

Bundle_Response(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.elementStatus,
    this.location,
    this.elementLocation,
    this.etag,
    this.elementEtag,
    this.lastModified,
    this.elementLastModified,
    this.outcome
    });

  factory Bundle_Response.fromJson(Map<String, dynamic> json) => _$Bundle_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_ResponseToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BundleAdapter extends TypeAdapter<Bundle> {
  @override
  final typeId = 82;

  @override
  Bundle read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      identifier: fields[7] as Identifier,
      type: fields[8] as String,
      elementType: fields[9] as Element,
      timestamp: fields[10] as DateTime,
      elementTimestamp: fields[11] as Element,
      total: fields[12] as int,
      elementTotal: fields[13] as Element,
      link: (fields[14] as List)?.cast<Bundle_Link>(),
      entry: (fields[15] as List)?.cast<Bundle_Entry>(),
      signature: fields[16] as Signature,
    );
  }

  @override
  void write(BinaryWriter writer, Bundle obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.identifier)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.elementType)
      ..writeByte(10)
      ..write(obj.timestamp)
      ..writeByte(11)
      ..write(obj.elementTimestamp)
      ..writeByte(12)
      ..write(obj.total)
      ..writeByte(13)
      ..write(obj.elementTotal)
      ..writeByte(14)
      ..write(obj.link)
      ..writeByte(15)
      ..write(obj.entry)
      ..writeByte(16)
      ..write(obj.signature);
  }
}

class Bundle_LinkAdapter extends TypeAdapter<Bundle_Link> {
  @override
  final typeId = 83;

  @override
  Bundle_Link read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle_Link(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      relation: fields[3] as String,
      elementRelation: fields[4] as Element,
      url: fields[5] as String,
      elementUrl: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Bundle_Link obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.relation)
      ..writeByte(4)
      ..write(obj.elementRelation)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.elementUrl);
  }
}

class Bundle_EntryAdapter extends TypeAdapter<Bundle_Entry> {
  @override
  final typeId = 84;

  @override
  Bundle_Entry read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle_Entry(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      link: (fields[3] as List)?.cast<Bundle_Link>(),
      fullUrl: fields[4] as String,
      elementFullUrl: fields[5] as Element,
      resource: fields[6] as dynamic,
      search: fields[7] as Bundle_Search,
      request: fields[8] as Bundle_Request,
      response: fields[9] as Bundle_Response,
    );
  }

  @override
  void write(BinaryWriter writer, Bundle_Entry obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.link)
      ..writeByte(4)
      ..write(obj.fullUrl)
      ..writeByte(5)
      ..write(obj.elementFullUrl)
      ..writeByte(6)
      ..write(obj.resource)
      ..writeByte(7)
      ..write(obj.search)
      ..writeByte(8)
      ..write(obj.request)
      ..writeByte(9)
      ..write(obj.response);
  }
}

class Bundle_SearchAdapter extends TypeAdapter<Bundle_Search> {
  @override
  final typeId = 85;

  @override
  Bundle_Search read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle_Search(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      mode: fields[3] as String,
      elementMode: fields[4] as Element,
      score: fields[5] as double,
      elementScore: fields[6] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Bundle_Search obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.mode)
      ..writeByte(4)
      ..write(obj.elementMode)
      ..writeByte(5)
      ..write(obj.score)
      ..writeByte(6)
      ..write(obj.elementScore);
  }
}

class Bundle_RequestAdapter extends TypeAdapter<Bundle_Request> {
  @override
  final typeId = 86;

  @override
  Bundle_Request read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle_Request(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      method: fields[3] as String,
      elementMethod: fields[4] as Element,
      url: fields[5] as String,
      elementUrl: fields[6] as Element,
      ifNoneMatch: fields[7] as String,
      elementIfNoneMatch: fields[8] as Element,
      ifModifiedSince: fields[9] as DateTime,
      elementIfModifiedSince: fields[10] as Element,
      ifMatch: fields[11] as String,
      elementIfMatch: fields[12] as Element,
      ifNoneExist: fields[13] as String,
      elementIfNoneExist: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Bundle_Request obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.method)
      ..writeByte(4)
      ..write(obj.elementMethod)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.elementUrl)
      ..writeByte(7)
      ..write(obj.ifNoneMatch)
      ..writeByte(8)
      ..write(obj.elementIfNoneMatch)
      ..writeByte(9)
      ..write(obj.ifModifiedSince)
      ..writeByte(10)
      ..write(obj.elementIfModifiedSince)
      ..writeByte(11)
      ..write(obj.ifMatch)
      ..writeByte(12)
      ..write(obj.elementIfMatch)
      ..writeByte(13)
      ..write(obj.ifNoneExist)
      ..writeByte(14)
      ..write(obj.elementIfNoneExist);
  }
}

class Bundle_ResponseAdapter extends TypeAdapter<Bundle_Response> {
  @override
  final typeId = 87;

  @override
  Bundle_Response read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle_Response(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      status: fields[3] as String,
      elementStatus: fields[4] as Element,
      location: fields[5] as String,
      elementLocation: fields[6] as Element,
      etag: fields[7] as String,
      elementEtag: fields[8] as Element,
      lastModified: fields[9] as DateTime,
      elementLastModified: fields[10] as Element,
      outcome: fields[11] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Bundle_Response obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.elementStatus)
      ..writeByte(5)
      ..write(obj.location)
      ..writeByte(6)
      ..write(obj.elementLocation)
      ..writeByte(7)
      ..write(obj.etag)
      ..writeByte(8)
      ..write(obj.elementEtag)
      ..writeByte(9)
      ..write(obj.lastModified)
      ..writeByte(10)
      ..write(obj.elementLastModified)
      ..writeByte(11)
      ..write(obj.outcome);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return Bundle(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    elementTimestamp: json['elementTimestamp'] == null
        ? null
        : Element.fromJson(json['elementTimestamp'] as Map<String, dynamic>),
    total: json['total'] as int,
    elementTotal: json['elementTotal'] == null
        ? null
        : Element.fromJson(json['elementTotal'] as Map<String, dynamic>),
    link: (json['link'] as List)
        ?.map((e) =>
            e == null ? null : Bundle_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : Bundle_Entry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    signature: json['signature'] == null
        ? null
        : Signature.fromJson(json['signature'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BundleToJson(Bundle instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'elementTimestamp': instance.elementTimestamp?.toJson(),
      'total': instance.total,
      'elementTotal': instance.elementTotal?.toJson(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'signature': instance.signature?.toJson(),
    };

Bundle_Link _$Bundle_LinkFromJson(Map<String, dynamic> json) {
  return Bundle_Link(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relation: json['relation'] as String,
    elementRelation: json['elementRelation'] == null
        ? null
        : Element.fromJson(json['elementRelation'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_LinkToJson(Bundle_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'relation': instance.relation,
      'elementRelation': instance.elementRelation?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
    };

Bundle_Entry _$Bundle_EntryFromJson(Map<String, dynamic> json) {
  return Bundle_Entry(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    link: (json['link'] as List)
        ?.map((e) =>
            e == null ? null : Bundle_Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fullUrl: json['fullUrl'] as String,
    elementFullUrl: json['elementFullUrl'] == null
        ? null
        : Element.fromJson(json['elementFullUrl'] as Map<String, dynamic>),
        resource: json['resource'] == null
        ? null
        : ResourceTypes(json['resource']['resourceType'], json['resource'] as Map<String, dynamic>),
    search: json['search'] == null
        ? null
        : Bundle_Search.fromJson(json['search'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Bundle_Request.fromJson(json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : Bundle_Response.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_EntryToJson(Bundle_Entry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
      'fullUrl': instance.fullUrl,
      'elementFullUrl': instance.elementFullUrl?.toJson(),
      'resource': instance.resource,
      'search': instance.search?.toJson(),
      'request': instance.request?.toJson(),
      'response': instance.response?.toJson(),
    };

Bundle_Search _$Bundle_SearchFromJson(Map<String, dynamic> json) {
  return Bundle_Search(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    score: (json['score'] as num)?.toDouble(),
    elementScore: json['elementScore'] == null
        ? null
        : Element.fromJson(json['elementScore'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_SearchToJson(Bundle_Search instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'score': instance.score,
      'elementScore': instance.elementScore?.toJson(),
    };

Bundle_Request _$Bundle_RequestFromJson(Map<String, dynamic> json) {
  return Bundle_Request(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    method: json['method'] as String,
    elementMethod: json['elementMethod'] == null
        ? null
        : Element.fromJson(json['elementMethod'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    ifNoneMatch: json['ifNoneMatch'] as String,
    elementIfNoneMatch: json['elementIfNoneMatch'] == null
        ? null
        : Element.fromJson(json['elementIfNoneMatch'] as Map<String, dynamic>),
    ifModifiedSince: json['ifModifiedSince'] == null
        ? null
        : DateTime.parse(json['ifModifiedSince'] as String),
    elementIfModifiedSince: json['elementIfModifiedSince'] == null
        ? null
        : Element.fromJson(
            json['elementIfModifiedSince'] as Map<String, dynamic>),
    ifMatch: json['ifMatch'] as String,
    elementIfMatch: json['elementIfMatch'] == null
        ? null
        : Element.fromJson(json['elementIfMatch'] as Map<String, dynamic>),
    ifNoneExist: json['ifNoneExist'] as String,
    elementIfNoneExist: json['elementIfNoneExist'] == null
        ? null
        : Element.fromJson(json['elementIfNoneExist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_RequestToJson(Bundle_Request instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'method': instance.method,
      'elementMethod': instance.elementMethod?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'ifNoneMatch': instance.ifNoneMatch,
      'elementIfNoneMatch': instance.elementIfNoneMatch?.toJson(),
      'ifModifiedSince': instance.ifModifiedSince?.toIso8601String(),
      'elementIfModifiedSince': instance.elementIfModifiedSince?.toJson(),
      'ifMatch': instance.ifMatch,
      'elementIfMatch': instance.elementIfMatch?.toJson(),
      'ifNoneExist': instance.ifNoneExist,
      'elementIfNoneExist': instance.elementIfNoneExist?.toJson(),
    };

Bundle_Response _$Bundle_ResponseFromJson(Map<String, dynamic> json) {
  return Bundle_Response(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    location: json['location'] as String,
    elementLocation: json['elementLocation'] == null
        ? null
        : Element.fromJson(json['elementLocation'] as Map<String, dynamic>),
    etag: json['etag'] as String,
    elementEtag: json['elementEtag'] == null
        ? null
        : Element.fromJson(json['elementEtag'] as Map<String, dynamic>),
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    elementLastModified: json['elementLastModified'] == null
        ? null
        : Element.fromJson(json['elementLastModified'] as Map<String, dynamic>),
        outcome: json['outcome'] == null
        ? null
        : ResourceTypes(json['outcome']['resourceType'], json['outcome'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_ResponseToJson(Bundle_Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'location': instance.location,
      'elementLocation': instance.elementLocation?.toJson(),
      'etag': instance.etag,
      'elementEtag': instance.elementEtag?.toJson(),
      'lastModified': instance.lastModified?.toIso8601String(),
      'elementLastModified': instance.elementLastModified?.toJson(),
      'outcome': instance.outcome,
    };
