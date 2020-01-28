part 'linkage.g.dart';

@JsonSerializable(explicitToJson: true)
class Linkage {

Linkage resourceType;
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
      this.item,
      });

  factory Linkage.fromJson(Map<String, dynamic> json) => _$LinkageFromJson(json);
  Map<String, dynamic> toJson() _$LinkageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Linkage_Item {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type; // <code> enum: source/alternate/historical;
Element _type;
Reference resource;

Linkage_Item(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.resource,
      });

  factory Linkage_Item.fromJson(Map<String, dynamic> json) => _$Linkage_ItemFromJson(json);
  Map<String, dynamic> toJson() _$Linkage_ItemToJson(this);
}

