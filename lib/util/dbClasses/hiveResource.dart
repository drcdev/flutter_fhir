import 'package:flutter_fhir/util/resourceList.dart';
import 'package:hive/hive.dart';

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
  String resource;

  HiveResource(
      {this.resourceType,
      this.id,
      this.createdAt,
      this.lastUpdated,
      this.resource});

  HiveResource.fromJson(Map<String, dynamic> json) {
    resourceType = json['resourceType'] as String;
    id = json['id'] as String;
    createdAt = json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String);
    lastUpdated = json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String);
    resource = json['resource'] == null
        ? null
        : ResourceTypes(json['resource']['resourceType'],
            json['resource'] as Map<String, dynamic>);
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
    writeNotNull('createdAt', this.createdAt?.toIso8601String());
    writeNotNull('lastUpdated', this.lastUpdated?.toIso8601String());
    writeNotNull('resource', this.resource);
    return val;
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveResourceAdapter extends TypeAdapter<HiveResource> {
  @override
  HiveResource read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveResource(
      resourceType: fields[0] as String,
      id: fields[1] as String,
      createdAt: fields[2] as DateTime,
      lastUpdated: fields[3] as DateTime,
      resource: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, HiveResource obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.lastUpdated)
      ..writeByte(5)
      ..write(obj.resource);
  }
}
