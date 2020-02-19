class User {
  String userName;
  String udun;
  String providerId;
  String language;
  String organization;

  User(
      {this.userName,
      this.udun,
      this.providerId,
      this.language,
      this.organization});

  User.fromJson(Map<String, dynamic> json) {
    userName = json['user'];
    udun = json['udun'];
    providerId = json['providerId'];
    language = json['language'];
    organization = json['organization'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['udun'] = this.udun;
    data['providerId'] = this.providerId;
    data['language'] = this.language;
    data['organization'] = this.organization;
    return data;
  }
}

class Server {
  String serverUrl;
  String clientId;
  String secret;
  String lastUpdated;

  Server({this.serverUrl, this.clientId, this.secret, this.lastUpdated});

  Server.fromJson(Map<String, dynamic> json) {
    serverUrl = json['server'];
    clientId = json['clientId'];
    secret = json['secret'];
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['server'] = this.serverUrl;
    data['clientId'] = this.clientId;
    data['secret'] = this.secret;
    data['lastUpdated'] = this.lastUpdated;
    return data;
  }
}
