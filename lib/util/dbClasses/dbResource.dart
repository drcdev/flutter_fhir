import 'package:flutter_fhir/util/resourceList.dart';

class DbResource {
  String resourceType;

  String id;

  DateTime createdAt;

  DateTime lastUpdated;

  dynamic resource;

  DbResource(
      {this.resourceType,
      this.id,
      this.createdAt,
      this.lastUpdated,
      this.resource});

  DbResource.fromJson(Map<String, dynamic> json) {
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
        : ResourceTypes(json['resourceType'], json['resource'].toJson());
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
