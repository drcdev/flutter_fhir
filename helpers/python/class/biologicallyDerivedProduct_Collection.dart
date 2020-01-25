

part 'biologicallyDerivedProduct_Collection.g.dart';

@JsonSerializable(explicitToJson: true)
class BiologicallyDerivedProduct_Collection {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference collector;
  Reference source;
  String collectedDateTime;
  Element _collectedDateTime;
  Period collectedPeriod;


BiologicallyDerivedProduct_Collection(
      {this.id,
this.extension,
this.modifierExtension,
this.collector,
this.source,
this.collectedDateTime,
this._collectedDateTime,
this.collectedPeriod});

  factory BiologicallyDerivedProduct_Collection.fromJson(Map<String, dynamic> json) => _$BiologicallyDerivedProduct_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$BiologicallyDerivedProduct_CollectionToJson(this);
}