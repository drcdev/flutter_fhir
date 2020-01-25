

part 'specimen_Collection.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference collector;
  String collectedDateTime;
  Element _collectedDateTime;
  Period collectedPeriod;
  Duration duration;
  Quantity quantity;
  CodeableConcept method;
  CodeableConcept bodySite;
  CodeableConcept fastingStatusCodeableConcept;
  Duration fastingStatusDuration;


Specimen_Collection(
      {this.id,
this.extension,
this.modifierExtension,
this.collector,
this.collectedDateTime,
this._collectedDateTime,
this.collectedPeriod,
this.duration,
this.quantity,
this.method,
this.bodySite,
this.fastingStatusCodeableConcept,
this.fastingStatusDuration});

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) => _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_CollectionToJson(this);
}