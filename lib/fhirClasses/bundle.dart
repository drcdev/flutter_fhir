import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 67)
class Bundle {

	static Future<Bundle> newInstance({
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
		Signature signature}) async {
	Bundle newBundle = new Bundle(
			id: await newId('Bundle'),
			meta: meta,
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
			signature: signature);
	var bundleBox = await Hive.openBox<Bundle>('BundleBox');
	bundleBox.add(newBundle);
	return newBundle;
}
  @HiveField(0)
  final String resourceType= 'Bundle';
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
  String type; // <code> enum: document/message/transaction/transaction-response/batch/batch-response/history/searchset/collection;
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
class Bundle_Link {

	static Future<Bundle_Link> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String relation,
		Element elementRelation,
		String url,
		Element elementUrl}) async {
	Bundle_Link newBundle_Link = new Bundle_Link(
			id: await newId('Bundle_Link'),
			extension: extension,
			modifierExtension: modifierExtension,
			relation: relation,
			elementRelation: elementRelation,
			url: url,
			elementUrl: elementUrl);
	var bundle_LinkBox = await Hive.openBox<Bundle_Link>('Bundle_LinkBox');
	bundle_LinkBox.add(newBundle_Link);
	return newBundle_Link;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String relation;
  Element elementRelation;
  String url;
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
		Bundle_Response response}) async {
	Bundle_Entry newBundle_Entry = new Bundle_Entry(
			id: await newId('Bundle_Entry'),
			extension: extension,
			modifierExtension: modifierExtension,
			link: link,
			fullUrl: fullUrl,
			elementFullUrl: elementFullUrl,
			resource: resource,
			search: search,
			request: request,
			response: response);
	var bundle_EntryBox = await Hive.openBox<Bundle_Entry>('Bundle_EntryBox');
	bundle_EntryBox.add(newBundle_Entry);
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
class Bundle_Search {

	static Future<Bundle_Search> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String mode,
		Element elementMode,
		double score,
		Element elementScore}) async {
	Bundle_Search newBundle_Search = new Bundle_Search(
			id: await newId('Bundle_Search'),
			extension: extension,
			modifierExtension: modifierExtension,
			mode: mode,
			elementMode: elementMode,
			score: score,
			elementScore: elementScore);
	var bundle_SearchBox = await Hive.openBox<Bundle_Search>('Bundle_SearchBox');
	bundle_SearchBox.add(newBundle_Search);
	return newBundle_Search;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode; // <code> enum: match/include/outcome;
  Element elementMode;
  double score;
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
		Element elementIfNoneExist}) async {
	Bundle_Request newBundle_Request = new Bundle_Request(
			id: await newId('Bundle_Request'),
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
			elementIfNoneExist: elementIfNoneExist);
	var bundle_RequestBox = await Hive.openBox<Bundle_Request>('Bundle_RequestBox');
	bundle_RequestBox.add(newBundle_Request);
	return newBundle_Request;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String method; // <code> enum: GET/HEAD/POST/PUT/DELETE/PATCH;
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
		dynamic outcome}) async {
	Bundle_Response newBundle_Response = new Bundle_Response(
			id: await newId('Bundle_Response'),
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
			outcome: outcome);
	var bundle_ResponseBox = await Hive.openBox<Bundle_Response>('Bundle_ResponseBox');
	bundle_ResponseBox.add(newBundle_Response);
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
  final typeId = 67;

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
