

part 'catalogEntry_RelatedEntry.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogEntry_RelatedEntry {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: triggersis-replaced-by relationtype;
  Element _relationtype;
  Reference item;


CatalogEntry_RelatedEntry(
      {this.id,
this.extension,
this.modifierExtension,
this.relationtype,
this._relationtype,
this.item});

  factory CatalogEntry_RelatedEntry.fromJson(Map<String, dynamic> json) => _$CatalogEntry_RelatedEntryFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogEntry_RelatedEntryToJson(this);
}