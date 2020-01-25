

part 'capabilityStatement_Document.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Document {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: producerconsumer mode;
  Element _mode;
  String documentation;
  Element _documentation;
  String profile;


CapabilityStatement_Document(
      {this.id,
this.extension,
this.modifierExtension,
this.mode,
this._mode,
this.documentation,
this._documentation,
this.profile});

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_DocumentFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_DocumentToJson(this);
}