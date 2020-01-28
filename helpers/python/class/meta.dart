part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {

String id;
List<Extension> extension;
String versionId;
Element _versionId;
DateTime lastUpdated;
Element _lastUpdated;
String source;
Element _source;
List<String> profile;
List<Coding> security;
List<Coding> tag;

Meta(
  {this.id,
      this.extension,
      this.versionId,
      this._versionId,
      this.lastUpdated,
      this._lastUpdated,
      this.source,
      this._source,
      this.profile,
      this.security,
      this.tag,
      });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() _$MetaToJson(this);
}

