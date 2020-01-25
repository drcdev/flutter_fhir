

part 'relatedArtifact.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedArtifact {

  String id;
  List<Extension> extension;
  enum: documentationjustificationcitationpredecessorsuccessorderived-fromdepends-oncomposed-of type;
  Element _type;
  String label;
  Element _label;
  String display;
  Element _display;
  String citation;
  Element _citation;
  String url;
  Element _url;
  Attachment document;
  String resource;


RelatedArtifact(
      {this.id,
this.extension,
this.type,
this._type,
this.label,
this._label,
this.display,
this._display,
this.citation,
this._citation,
this.url,
this._url,
this.document,
this.resource});

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) => _$RelatedArtifactFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedArtifactToJson(this);
}