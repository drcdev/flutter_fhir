

part 'testReport_Participant.g.dart';

@JsonSerializable(explicitToJson: true)
class TestReport_Participant {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: test-engineclientserver type;
  Element _type;
  String uri;
  Element _uri;
  String display;
  Element _display;


TestReport_Participant(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.uri,
this._uri,
this.display,
this._display});

  factory TestReport_Participant.fromJson(Map<String, dynamic> json) => _$TestReport_ParticipantFromJson(json);
  Map<String, dynamic> toJson() => _$TestReport_ParticipantToJson(this);
}