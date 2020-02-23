import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

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

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResourceRecordAdapter extends TypeAdapter<ResourceRecord> {
  @override
  ResourceRecord read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResourceRecord(
      resourceType: fields[0] as String,
      id: fields[1] as String,
      deviceId: fields[2] as String,
      lastId: fields[3] as String,
      total: fields[4] as int,
      lastUpdated: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ResourceRecord obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.deviceId)
      ..writeByte(3)
      ..write(obj.lastId)
      ..writeByte(4)
      ..write(obj.total)
      ..writeByte(5)
      ..write(obj.lastUpdated);
  }
}
