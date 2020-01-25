

part 'linkage_Item.g.dart';

@JsonSerializable(explicitToJson: true)
class Linkage_Item {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: sourcealternatehistorical type;
  Element _type;
  Reference resource;


Linkage_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.resource});

  factory Linkage_Item.fromJson(Map<String, dynamic> json) => _$Linkage_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Linkage_ItemToJson(this);
}