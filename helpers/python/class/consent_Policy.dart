

part 'consent_Policy.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent_Policy {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String authority;
  Element _authority;
  String uri;
  Element _uri;


Consent_Policy(
      {this.id,
this.extension,
this.modifierExtension,
this.authority,
this._authority,
this.uri,
this._uri});

  factory Consent_Policy.fromJson(Map<String, dynamic> json) => _$Consent_PolicyFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_PolicyToJson(this);
}