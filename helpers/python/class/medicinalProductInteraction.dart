

part 'medicinalProductInteraction.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction {

  This is a MedicinalProductInteraction resource resourceType;
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
  List<Reference> subject;
  String description;
  Element _description;
  List<MedicinalProductInteraction_Interactant> interactant;
  CodeableConcept type;
  CodeableConcept effect;
  CodeableConcept incidence;
  CodeableConcept management;


MedicinalProductInteraction(
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
this.subject,
this.description,
this._description,
this.interactant,
this.type,
this.effect,
this.incidence,
this.management});

  factory MedicinalProductInteraction.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteractionFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductInteractionToJson(this);
}