import 'package:flutter/foundation.dart';

class User {
  String userName;

  String udun;

  String providerId;

  String language;

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
