

part 'diagnosticReport_Media.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosticReport_Media {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String comment;
  Element _comment;
  Reference link;


DiagnosticReport_Media(
      {this.id,
this.extension,
this.modifierExtension,
this.comment,
this._comment,
this.link});

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) => _$DiagnosticReport_MediaFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosticReport_MediaToJson(this);
}