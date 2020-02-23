import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

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

  User.fromJson(Map<String, dynamic> json) {
    userName = json['userName'] as String;
    udun = json['udun'] as String;
    providerId = json['providerId'] as String;
    language = json['language'] as String;
    organization = json['organization'] as String;
  }

  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('userName', this.userName);
    writeNotNull('udun', this.udun);
    writeNotNull('providerId', this.providerId);
    writeNotNull('language', this.language);
    writeNotNull('organization', this.organization);
    return val;
  }
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  User read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      userName: fields[0] as String,
      udun: fields[1] as String,
      providerId: fields[2] as String,
      language: fields[3] as String,
      organization: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.udun)
      ..writeByte(2)
      ..write(obj.providerId)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(4)
      ..write(obj.organization);
  }
}
