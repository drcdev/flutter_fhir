// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle.dart';

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
    language: json['language'] as String,
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    type: json['type'] as String,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    total: json['total'] as int,
    link: (json['link'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : _Entry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    signature: json['signature'] == null
        ? null
        : Signature.fromJson(json['signature'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BundleToJson(Bundle instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'language': instance.language,
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.toJson(),
      'type': instance.type,
      'timestamp': instance.timestamp?.toIso8601String(),
      'total': instance.total,
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'signature': instance.signature?.toJson(),
    };

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
    relation: json['relation'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'relation': instance.relation,
      'url': instance.url,
    };

_Entry _$_EntryFromJson(Map<String, dynamic> json) {
  return _Entry(
    link: (json['link'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fullUrl: json['fullUrl'] as String,
    resource: json['resource'] == null
        ? null
        : Resource.fromJson(json['resource'] as Map<String, dynamic>),
    search: json['search'] == null
        ? null
        : Search.fromJson(json['search'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Request.fromJson(json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : Response.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_EntryToJson(_Entry instance) => <String, dynamic>{
      'link': instance.link?.map((e) => e?.toJson())?.toList(),
      'fullUrl': instance.fullUrl,
      'resource': instance.resource?.toJson(),
      'search': instance.search?.toJson(),
      'request': instance.request?.toJson(),
      'response': instance.response?.toJson(),
    };

Search _$SearchFromJson(Map<String, dynamic> json) {
  return Search(
    mode: json['mode'] as String,
    score: json['score'] as int,
  );
}

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'mode': instance.mode,
      'score': instance.score,
    };

Request _$RequestFromJson(Map<String, dynamic> json) {
  return Request(
    method: json['method'] as String,
    url: json['url'] as String,
    ifNoneMatch: json['ifNoneMatch'] as String,
    ifModifiedSince: json['ifModifiedSince'] == null
        ? null
        : DateTime.parse(json['ifModifiedSince'] as String),
    ifMatch: json['ifMatch'] as String,
    ifNoneExist: json['ifNoneExist'] as String,
  );
}

Map<String, dynamic> _$RequestToJson(Request instance) => <String, dynamic>{
      'method': instance.method,
      'url': instance.url,
      'ifNoneMatch': instance.ifNoneMatch,
      'ifModifiedSince': instance.ifModifiedSince?.toIso8601String(),
      'ifMatch': instance.ifMatch,
      'ifNoneExist': instance.ifNoneExist,
    };

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return Response(
    status: json['status'] as String,
    location: json['location'] as String,
    etag: json['etag'] as String,
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    outcome: json['outcome'] == null
        ? null
        : Resource.fromJson(json['outcome'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'status': instance.status,
      'location': instance.location,
      'etag': instance.etag,
      'lastModified': instance.lastModified?.toIso8601String(),
      'outcome': instance.outcome?.toJson(),
    };
