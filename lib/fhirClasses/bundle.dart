import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class Bundle {
  static Future<Bundle> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Identifier identifier,
    String type,
    Element elementType,
    DateTime timestamp,
    Element elementTimestamp,
    int total,
    Element elementTotal,
    List<Bundle_Link> link,
    List<Bundle_Entry> entry,
    Signature signature,
  }) async {
    var fhirDb = new DatabaseHelper();
    Bundle newBundle = new Bundle(
      resourceType: 'Bundle',
      id: id ?? await fhirDb.newResourceId('Bundle'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      identifier: identifier,
      type: type,
      elementType: elementType,
      timestamp: timestamp,
      elementTimestamp: elementTimestamp,
      total: total,
      elementTotal: elementTotal,
      link: link,
      entry: entry,
      signature: signature,
    );
    newBundle.meta.createdAt = DateTime.now();
    newBundle.meta.lastUpdated = newBundle.meta.createdAt;
    int saved = await fhirDb.saveResource(newBundle);
    return newBundle;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Bundle';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Identifier identifier;
  @HiveField(8)
  String type;
  @HiveField(9)
  Element elementType;
  @HiveField(10)
  DateTime timestamp;
  @HiveField(11)
  Element elementTimestamp;
  @HiveField(12)
  int total;
  @HiveField(13)
  Element elementTotal;
  @HiveField(14)
  List<Bundle_Link> link;
  @HiveField(15)
  List<Bundle_Entry> entry;
  @HiveField(16)
  Signature signature;

  Bundle({
    @required this.resourceType,
    this.id,
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
    this.signature,
  });

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}

class Bundle_Link {
  static Future<Bundle_Link> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String relation,
    Element elementRelation,
    String url,
    Element elementUrl,
  }) async {
    var fhirDb = new DatabaseHelper();
    Bundle_Link newBundle_Link = new Bundle_Link(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      relation: relation,
      elementRelation: elementRelation,
      url: url,
      elementUrl: elementUrl,
    );
    return newBundle_Link;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String relation;
  @HiveField(4)
  Element elementRelation;
  @HiveField(5)
  String url;
  @HiveField(6)
  Element elementUrl;

  Bundle_Link({
    this.id,
    this.extension,
    this.modifierExtension,
    this.relation,
    this.elementRelation,
    this.url,
    this.elementUrl,
  });

  factory Bundle_Link.fromJson(Map<String, dynamic> json) =>
      _$Bundle_LinkFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_LinkToJson(this);
}

class Bundle_Entry {
  static Future<Bundle_Entry> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Bundle_Link> link,
    String fullUrl,
    Element elementFullUrl,
    dynamic resource,
    Bundle_Search search,
    Bundle_Request request,
    Bundle_Response response,
  }) async {
    var fhirDb = new DatabaseHelper();
    Bundle_Entry newBundle_Entry = new Bundle_Entry(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      link: link,
      fullUrl: fullUrl,
      elementFullUrl: elementFullUrl,
      resource: resource,
      search: search,
      request: request,
      response: response,
    );
    return newBundle_Entry;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<Bundle_Link> link;
  @HiveField(4)
  String fullUrl;
  @HiveField(5)
  Element elementFullUrl;
  @HiveField(6)
  dynamic resource;
  @HiveField(7)
  Bundle_Search search;
  @HiveField(8)
  Bundle_Request request;
  @HiveField(9)
  Bundle_Response response;

  Bundle_Entry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.link,
    this.fullUrl,
    this.elementFullUrl,
    this.resource,
    this.search,
    this.request,
    this.response,
  });

  factory Bundle_Entry.fromJson(Map<String, dynamic> json) =>
      _$Bundle_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_EntryToJson(this);
}

class Bundle_Search {
  static Future<Bundle_Search> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String mode,
    Element elementMode,
    double score,
    Element elementScore,
  }) async {
    var fhirDb = new DatabaseHelper();
    Bundle_Search newBundle_Search = new Bundle_Search(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      mode: mode,
      elementMode: elementMode,
      score: score,
      elementScore: elementScore,
    );
    return newBundle_Search;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String mode;
  @HiveField(4)
  Element elementMode;
  @HiveField(5)
  double score;
  @HiveField(6)
  Element elementScore;

  Bundle_Search({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.score,
    this.elementScore,
  });

  factory Bundle_Search.fromJson(Map<String, dynamic> json) =>
      _$Bundle_SearchFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_SearchToJson(this);
}

class Bundle_Request {
  static Future<Bundle_Request> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String method,
    Element elementMethod,
    String url,
    Element elementUrl,
    String ifNoneMatch,
    Element elementIfNoneMatch,
    DateTime ifModifiedSince,
    Element elementIfModifiedSince,
    String ifMatch,
    Element elementIfMatch,
    String ifNoneExist,
    Element elementIfNoneExist,
  }) async {
    var fhirDb = new DatabaseHelper();
    Bundle_Request newBundle_Request = new Bundle_Request(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      method: method,
      elementMethod: elementMethod,
      url: url,
      elementUrl: elementUrl,
      ifNoneMatch: ifNoneMatch,
      elementIfNoneMatch: elementIfNoneMatch,
      ifModifiedSince: ifModifiedSince,
      elementIfModifiedSince: elementIfModifiedSince,
      ifMatch: ifMatch,
      elementIfMatch: elementIfMatch,
      ifNoneExist: ifNoneExist,
      elementIfNoneExist: elementIfNoneExist,
    );
    return newBundle_Request;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String method;
  @HiveField(4)
  Element elementMethod;
  @HiveField(5)
  String url;
  @HiveField(6)
  Element elementUrl;
  @HiveField(7)
  String ifNoneMatch;
  @HiveField(8)
  Element elementIfNoneMatch;
  @HiveField(9)
  DateTime ifModifiedSince;
  @HiveField(10)
  Element elementIfModifiedSince;
  @HiveField(11)
  String ifMatch;
  @HiveField(12)
  Element elementIfMatch;
  @HiveField(13)
  String ifNoneExist;
  @HiveField(14)
  Element elementIfNoneExist;

  Bundle_Request({
    this.id,
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
    this.elementIfNoneExist,
  });

  factory Bundle_Request.fromJson(Map<String, dynamic> json) =>
      _$Bundle_RequestFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_RequestToJson(this);
}

class Bundle_Response {
  static Future<Bundle_Response> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String status,
    Element elementStatus,
    String location,
    Element elementLocation,
    String etag,
    Element elementEtag,
    DateTime lastModified,
    Element elementLastModified,
    dynamic outcome,
  }) async {
    var fhirDb = new DatabaseHelper();
    Bundle_Response newBundle_Response = new Bundle_Response(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      status: status,
      elementStatus: elementStatus,
      location: location,
      elementLocation: elementLocation,
      etag: etag,
      elementEtag: elementEtag,
      lastModified: lastModified,
      elementLastModified: elementLastModified,
      outcome: outcome,
    );
    return newBundle_Response;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String status;
  @HiveField(4)
  Element elementStatus;
  @HiveField(5)
  String location;
  @HiveField(6)
  Element elementLocation;
  @HiveField(7)
  String etag;
  @HiveField(8)
  Element elementEtag;
  @HiveField(9)
  DateTime lastModified;
  @HiveField(10)
  Element elementLastModified;
  @HiveField(11)
  dynamic outcome;

  Bundle_Response({
    this.id,
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
    this.outcome,
  });

  factory Bundle_Response.fromJson(Map<String, dynamic> json) =>
      _$Bundle_ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Bundle_ResponseToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return Bundle(
    resourceType: json['resourceType'] as String,
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

Map<String, dynamic> _$BundleToJson(Bundle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('timestamp', instance.timestamp?.toIso8601String());
  writeNotNull('elementTimestamp', instance.elementTimestamp?.toJson());
  writeNotNull('total', instance.total);
  writeNotNull('elementTotal', instance.elementTotal?.toJson());
  writeNotNull('link', instance.link?.map((e) => e?.toJson())?.toList());
  writeNotNull('entry', instance.entry?.map((e) => e?.toJson())?.toList());
  writeNotNull('signature', instance.signature?.toJson());
  return val;
}

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

Map<String, dynamic> _$Bundle_LinkToJson(Bundle_Link instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('relation', instance.relation);
  writeNotNull('elementRelation', instance.elementRelation?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  return val;
}

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
        : ResourceTypes(json['resource']['resourceType'],
            json['resource'] as Map<String, dynamic>),
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

Map<String, dynamic> _$Bundle_EntryToJson(Bundle_Entry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('link', instance.link?.map((e) => e?.toJson())?.toList());
  writeNotNull('fullUrl', instance.fullUrl);
  writeNotNull('elementFullUrl', instance.elementFullUrl?.toJson());
  writeNotNull('resource', instance.resource);
  writeNotNull('search', instance.search?.toJson());
  writeNotNull('request', instance.request?.toJson());
  writeNotNull('response', instance.response?.toJson());
  return val;
}

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

Map<String, dynamic> _$Bundle_SearchToJson(Bundle_Search instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('score', instance.score);
  writeNotNull('elementScore', instance.elementScore?.toJson());
  return val;
}

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

Map<String, dynamic> _$Bundle_RequestToJson(Bundle_Request instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('method', instance.method);
  writeNotNull('elementMethod', instance.elementMethod?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('ifNoneMatch', instance.ifNoneMatch);
  writeNotNull('elementIfNoneMatch', instance.elementIfNoneMatch?.toJson());
  writeNotNull('ifModifiedSince', instance.ifModifiedSince?.toIso8601String());
  writeNotNull(
      'elementIfModifiedSince', instance.elementIfModifiedSince?.toJson());
  writeNotNull('ifMatch', instance.ifMatch);
  writeNotNull('elementIfMatch', instance.elementIfMatch?.toJson());
  writeNotNull('ifNoneExist', instance.ifNoneExist);
  writeNotNull('elementIfNoneExist', instance.elementIfNoneExist?.toJson());
  return val;
}

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
        : ResourceTypes(json['outcome']['resourceType'],
            json['outcome'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_ResponseToJson(Bundle_Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('location', instance.location);
  writeNotNull('elementLocation', instance.elementLocation?.toJson());
  writeNotNull('etag', instance.etag);
  writeNotNull('elementEtag', instance.elementEtag?.toJson());
  writeNotNull('lastModified', instance.lastModified?.toIso8601String());
  writeNotNull('elementLastModified', instance.elementLastModified?.toJson());
  writeNotNull('outcome', instance.outcome);
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BundleAdapter extends TypeAdapter<Bundle> {
  @override
  Bundle read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bundle(
      resourceType: fields[0] as String,
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
