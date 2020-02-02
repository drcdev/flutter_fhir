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
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    element_timestamp: json['element_timestamp'] == null
        ? null
        : Element.fromJson(json['element_timestamp'] as Map<String, dynamic>),
    total: json['total'] as int,
    element_total: json['element_total'] == null
        ? null
        : Element.fromJson(json['element_total'] as Map<String, dynamic>),
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
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'element_timestamp': instance.element_timestamp?.toJson(),
      'total': instance.total,
      'element_total': instance.element_total?.toJson(),
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
    element_relation: json['element_relation'] == null
        ? null
        : Element.fromJson(json['element_relation'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_LinkToJson(Bundle_Link instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'relation': instance.relation,
      'element_relation': instance.element_relation?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
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
    element_fullUrl: json['element_fullUrl'] == null
        ? null
        : Element.fromJson(json['element_fullUrl'] as Map<String, dynamic>),
    resource: json['resource'],
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
      'element_fullUrl': instance.element_fullUrl?.toJson(),
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
    element_mode: json['element_mode'] == null
        ? null
        : Element.fromJson(json['element_mode'] as Map<String, dynamic>),
    score: (json['score'] as num)?.toDouble(),
    element_score: json['element_score'] == null
        ? null
        : Element.fromJson(json['element_score'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_SearchToJson(Bundle_Search instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'element_mode': instance.element_mode?.toJson(),
      'score': instance.score,
      'element_score': instance.element_score?.toJson(),
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
    element_method: json['element_method'] == null
        ? null
        : Element.fromJson(json['element_method'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    ifNoneMatch: json['ifNoneMatch'] as String,
    element_ifNoneMatch: json['element_ifNoneMatch'] == null
        ? null
        : Element.fromJson(json['element_ifNoneMatch'] as Map<String, dynamic>),
    ifModifiedSince: json['ifModifiedSince'] == null
        ? null
        : DateTime.parse(json['ifModifiedSince'] as String),
    element_ifModifiedSince: json['element_ifModifiedSince'] == null
        ? null
        : Element.fromJson(
            json['element_ifModifiedSince'] as Map<String, dynamic>),
    ifMatch: json['ifMatch'] as String,
    element_ifMatch: json['element_ifMatch'] == null
        ? null
        : Element.fromJson(json['element_ifMatch'] as Map<String, dynamic>),
    ifNoneExist: json['ifNoneExist'] as String,
    element_ifNoneExist: json['element_ifNoneExist'] == null
        ? null
        : Element.fromJson(json['element_ifNoneExist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Bundle_RequestToJson(Bundle_Request instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'method': instance.method,
      'element_method': instance.element_method?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'ifNoneMatch': instance.ifNoneMatch,
      'element_ifNoneMatch': instance.element_ifNoneMatch?.toJson(),
      'ifModifiedSince': instance.ifModifiedSince?.toIso8601String(),
      'element_ifModifiedSince': instance.element_ifModifiedSince?.toJson(),
      'ifMatch': instance.ifMatch,
      'element_ifMatch': instance.element_ifMatch?.toJson(),
      'ifNoneExist': instance.ifNoneExist,
      'element_ifNoneExist': instance.element_ifNoneExist?.toJson(),
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
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    location: json['location'] as String,
    element_location: json['element_location'] == null
        ? null
        : Element.fromJson(json['element_location'] as Map<String, dynamic>),
    etag: json['etag'] as String,
    element_etag: json['element_etag'] == null
        ? null
        : Element.fromJson(json['element_etag'] as Map<String, dynamic>),
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    element_lastModified: json['element_lastModified'] == null
        ? null
        : Element.fromJson(
            json['element_lastModified'] as Map<String, dynamic>),
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
      'element_status': instance.element_status?.toJson(),
      'location': instance.location,
      'element_location': instance.element_location?.toJson(),
      'etag': instance.etag,
      'element_etag': instance.element_etag?.toJson(),
      'lastModified': instance.lastModified?.toIso8601String(),
      'element_lastModified': instance.element_lastModified?.toJson(),
      'outcome': instance.outcome,
    };
