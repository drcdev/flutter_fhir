

part 'consent_Data.g.dart';

@JsonSerializable(explicitToJson: true)
class Consent_Data {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: instancerelateddependentsauthoredby meaning;
  Element _meaning;
  Reference reference;


Consent_Data(
      {this.id,
this.extension,
this.modifierExtension,
this.meaning,
this._meaning,
this.reference});

  factory Consent_Data.fromJson(Map<String, dynamic> json) => _$Consent_DataFromJson(json);
  Map<String, dynamic> toJson() => _$Consent_DataToJson(this);
}