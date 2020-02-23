//import 'package:flutter/foundation.dart';
//import 'package:hive/hive.dart';
//
//class Server {
//  @HiveField(0)
//  String name;
//
//  @HiveField(1)
//  String url;
//
//  @HiveField(2)
//  String clientId;
//
//  @HiveField(3)
//  String clientUdun;
//
//  @HiveField(4)
//  DateTime lastUpdated;
//
//  Server(
//      {this.name,
//      @required this.url,
//      @required this.clientId,
//      @required this.clientUdun,
//      this.lastUpdated});
//
//  Server.fromJson(Map<String, dynamic> json) {
//    name = json['name'] as String;
//    url = json['url'] as String;
//    clientId = json['clientId'] as String;
//    clientUdun = json['clientUdun'] as String;
//    lastUpdated = json['lastUpdated'] == null
//        ? null
//        : DateTime.parse(json['lastUpdated'] as String);
//  }
//
//  Map<String, dynamic> toJson() {
//    final val = <String, dynamic>{};
//
//    void writeNotNull(String key, dynamic value) {
//      if (value != null) {
//        val[key] = value;
//      }
//    }
//
//    writeNotNull('name', this.name);
//    writeNotNull('url', this.url);
//    writeNotNull('clientId', this.clientId);
//    writeNotNull('clientUdun', this.clientUdun);
//    writeNotNull('lastUpdated', this.lastUpdated?.toIso8601String());
//    return val;
//  }
//}
//
//// **************************************************************************
//// TypeAdapterGenerator
//// **************************************************************************
//
//class ServerAdapter extends TypeAdapter<Server> {
//  @override
//  Server read(BinaryReader reader) {
//    var numOfFields = reader.readByte();
//    var fields = <int, dynamic>{
//      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//    };
//    return Server(
//      name: fields[0] as String,
//      url: fields[1] as String,
//      clientId: fields[2] as String,
//      clientUdun: fields[3] as String,
//      lastUpdated: fields[4] as DateTime,
//    );
//  }
//
//  @override
//  void write(BinaryWriter writer, Server obj) {
//    writer
//      ..writeByte(5)
//      ..writeByte(0)
//      ..write(obj.name)
//      ..writeByte(1)
//      ..write(obj.url)
//      ..writeByte(2)
//      ..write(obj.clientId)
//      ..writeByte(3)
//      ..write(obj.clientUdun)
//      ..writeByte(4)
//      ..write(obj.lastUpdated);
//  }
//}
