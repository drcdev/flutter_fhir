import 'package:flutter/foundation.dart';

class ResourceRecord {
  String resourceType;

  String id;

  String deviceId;

  String lastId;

  int total;

  DateTime lastUpdated;

  ResourceRecord(
      {@required this.resourceType,
      @required this.id,
      @required this.deviceId,
      @required this.lastId,
      @required this.total,
      @required this.lastUpdated});

  ResourceRecord.fromJson(Map<String, dynamic> json) {
    resourceType = json['resourceType'] as String;
    id = json['id'] as String;
    deviceId = json['deviceId'] as String;
    lastId = json['lastId'] as String;
    total = json['total'] as int;
    lastUpdated = json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String);
  }

  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('resourceType', this.resourceType);
    writeNotNull('id', this.id);
    writeNotNull('deviceId', this.deviceId);
    writeNotNull('lastId', this.lastId);
    writeNotNull('total', this.total);
    writeNotNull('lastUpdated', this.lastUpdated?.toIso8601String());
    return val;
  }
}
