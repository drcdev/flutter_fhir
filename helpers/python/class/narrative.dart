

part 'narrative.g.dart';

@JsonSerializable(explicitToJson: true)
class Narrative {

  String id;
  List<Extension> extension;
  enum: generatedextensionsadditionalempty status;
  Element _status;
  xhtml div;


Narrative(
      {this.id,
this.extension,
this.status,
this._status,
this.div});

  factory Narrative.fromJson(Map<String, dynamic> json) => _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}