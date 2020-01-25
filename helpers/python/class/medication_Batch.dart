

part 'medication_Batch.g.dart';

@JsonSerializable(explicitToJson: true)
class Medication_Batch {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String lotNumber;
  Element _lotNumber;
  StringTime expirationDate;
  Element _expirationDate;


Medication_Batch(
      {this.id,
this.extension,
this.modifierExtension,
this.lotNumber,
this._lotNumber,
this.expirationDate,
this._expirationDate});

  factory Medication_Batch.fromJson(Map<String, dynamic> json) => _$Medication_BatchFromJson(json);
  Map<String, dynamic> toJson() => _$Medication_BatchToJson(this);
}