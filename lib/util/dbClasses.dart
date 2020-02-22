import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dbClasses.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@HiveType()
class HiveResource {
  @HiveField(0)
  String resourceType;

  @HiveField(1)
  String id;

  @HiveField(2)
  DateTime createdAt;

  @HiveField(3)
  DateTime lastUpdated;

  @HiveField(5)
  String jsonResource;

  HiveResource(
      {this.resourceType,
      this.id,
      this.createdAt,
      this.lastUpdated,
      this.jsonResource});

  factory HiveResource.fromJson(Map<String, dynamic> json) =>
      _$HiveResourceFromJson(json);
  Map<String, dynamic> toJson() => _$HiveResourceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@HiveType()
class User {
  @HiveField(0)
  String userName;

  @HiveField(1)
  String udun;

  @HiveField(2)
  String providerId;

  @HiveField(3)
  String language;

  @HiveField(4)
  String organization;

  User(
      {@required this.userName,
      @required this.udun,
      @required this.providerId,
      this.language,
      this.organization});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@HiveType()
class ResourceRecord {
  @HiveField(0)
  String resourceType;

  @HiveField(1)
  String id;

  @HiveField(2)
  String deviceId;

  @HiveField(3)
  String lastId;

  @HiveField(4)
  int total;

  @HiveField(5)
  DateTime lastUpdated;

  ResourceRecord(
      {@required this.resourceType,
      @required this.id,
      @required this.deviceId,
      @required this.lastId,
      @required this.total,
      @required this.lastUpdated});

  factory ResourceRecord.fromJson(Map<String, dynamic> json) =>
      _$ResourceRecordFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceRecordToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@HiveType()
class Server {
  @HiveField(0)
  String name;

  @HiveField(1)
  String url;

  @HiveField(2)
  String clientId;

  @HiveField(3)
  String clientUdun;

  @HiveField(4)
  DateTime lastUpdated;

  Server(
      {this.name,
      @required this.url,
      @required this.clientId,
      @required this.clientUdun,
      this.lastUpdated});

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
  Map<String, dynamic> toJson() => _$ServerToJson(this);
}
