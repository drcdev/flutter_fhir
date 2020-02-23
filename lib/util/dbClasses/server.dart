import 'package:flutter/foundation.dart';

class Server {
  String name;

  String url;

  String clientId;

  String clientUdun;

  DateTime lastUpdated;

  Server(
      {this.name,
      @required this.url,
      @required this.clientId,
      @required this.clientUdun,
      this.lastUpdated});

  Server.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    url = json['url'] as String;
    clientId = json['clientId'] as String;
    clientUdun = json['clientUdun'] as String;
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

    writeNotNull('name', this.name);
    writeNotNull('url', this.url);
    writeNotNull('clientId', this.clientId);
    writeNotNull('clientUdun', this.clientUdun);
    writeNotNull('lastUpdated', this.lastUpdated?.toIso8601String());
    return val;
  }
}
