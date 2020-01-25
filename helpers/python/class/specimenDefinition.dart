

part 'specimenDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition {

  This is a SpecimenDefinition resource resourceType;
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
  Identifier identifier;
  CodeableConcept typeCollected;
  List<CodeableConcept> patientPreparation;
  String timeAspect;
  Element _timeAspect;
  List<CodeableConcept> collection;
  List<SpecimenDefinition_TypeTested> typeTested;


SpecimenDefinition(
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
this.identifier,
this.typeCollected,
this.patientPreparation,
this.timeAspect,
this._timeAspect,
this.collection,
this.typeTested});

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) => _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinitionToJson(this);
}