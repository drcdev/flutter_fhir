// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle.dart';

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
        : Element.fromJson(
            json['elementLastModified'] as Map<String, dynamic>),
    outcome: json['outcome'],
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
