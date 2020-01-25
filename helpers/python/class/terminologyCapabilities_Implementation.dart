

part 'terminologyCapabilities_Implementation.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Implementation {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element _description;
  String url;
  Element _url;


TerminologyCapabilities_Implementation(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.url,
this._url});

  factory TerminologyCapabilities_Implementation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ImplementationFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilities_ImplementationToJson(this);
}