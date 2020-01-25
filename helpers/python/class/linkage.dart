

part 'linkage.g.dart';

@JsonSerializable(explicitToJson: true)
class Linkage {

  This is a Linkage resource resourceType;
  String id;
  Meta meta;
  String implicitRules;
  Element _implicitRules;
  String language;
  Element _language;
  Narrative text;
  List<ResourceList> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool active;
  Element _active;
  Reference author;
  List<Linkage_Item> item;


Linkage(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.active,
this._active,
this.author,
this.item});

  factory Linkage.fromJson(Map<String, dynamic> json) => _$LinkageFromJson(json);
  Map<String, dynamic> toJson() => _$LinkageToJson(this);
}