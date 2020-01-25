

part 'specimenDefinition_TypeTested.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_TypeTested {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool isDerived;
  Element _isDerived;
  CodeableConcept type;
  enum: preferredalternate preference;
  Element _preference;
  SpecimenDefinition_Container container;
  String requirement;
  Element _requirement;
  Duration retentionTime;
  List<CodeableConcept> rejectionCriterion;
  List<SpecimenDefinition_Handling> handling;


SpecimenDefinition_TypeTested(
      {this.id,
this.extension,
this.modifierExtension,
this.isDerived,
this._isDerived,
this.type,
this.preference,
this._preference,
this.container,
this.requirement,
this._requirement,
this.retentionTime,
this.rejectionCriterion,
this.handling});

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_TypeTestedToJson(this);
}