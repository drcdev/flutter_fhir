

part 'observation_ReferenceRange.g.dart';

@JsonSerializable(explicitToJson: true)
class Observation_ReferenceRange {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Quantity low;
  Quantity high;
  CodeableConcept type;
  List<CodeableConcept> appliesTo;
  Range age;
  String text;
  Element _text;


Observation_ReferenceRange(
      {this.id,
this.extension,
this.modifierExtension,
this.low,
this.high,
this.type,
this.appliesTo,
this.age,
this.text,
this._text});

  factory Observation_ReferenceRange.fromJson(Map<String, dynamic> json) => _$Observation_ReferenceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$Observation_ReferenceRangeToJson(this);
}