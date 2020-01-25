

part 'observationDefinition_QualifiedInterval.g.dart';

@JsonSerializable(explicitToJson: true)
class ObservationDefinition_QualifiedInterval {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: referencecriticalabsolute category;
  Element _category;
  Range range;
  CodeableConcept context;
  List<CodeableConcept> appliesTo;
  enum: malefemaleotherunknown gender;
  Element _gender;
  Range age;
  Range gestationalAge;
  String condition;
  Element _condition;


ObservationDefinition_QualifiedInterval(
      {this.id,
this.extension,
this.modifierExtension,
this.category,
this._category,
this.range,
this.context,
this.appliesTo,
this.gender,
this._gender,
this.age,
this.gestationalAge,
this.condition,
this._condition});

  factory ObservationDefinition_QualifiedInterval.fromJson(Map<String, dynamic> json) => _$ObservationDefinition_QualifiedIntervalFromJson(json);
  Map<String, dynamic> toJson() => _$ObservationDefinition_QualifiedIntervalToJson(this);
}