import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

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

  String resourceType = 'Bundle';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Identifier identifier;
  String type;
  Element elementType;
  DateTime timestamp;
  Element elementTimestamp;
  int total;
  Element elementTotal;
  List<Bundle_Link> link;
  List<Bundle_Entry> entry;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String relation;
  Element elementRelation;
  String url;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Bundle_Link> link;
  String fullUrl;
  Element elementFullUrl;
  dynamic resource;
  Bundle_Search search;
  Bundle_Request request;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode;
  Element elementMode;
  double score;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String method;
  Element elementMethod;
  String url;
  Element elementUrl;
  String ifNoneMatch;
  Element elementIfNoneMatch;
  DateTime ifModifiedSince;
  Element elementIfModifiedSince;
  String ifMatch;
  Element elementIfMatch;
  String ifNoneExist;
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String status;
  Element elementStatus;
  String location;
  Element elementLocation;
  String etag;
  Element elementEtag;
  DateTime lastModified;
  Element elementLastModified;
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
