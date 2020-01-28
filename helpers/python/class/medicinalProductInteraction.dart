part 'medicinalProductInteraction.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction {

MedicinalProductInteraction resourceType;
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
      this.management,
      });

  factory MedicinalProductInteraction.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteractionFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductInteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductInteraction_Interactant {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference itemReference;
CodeableConcept itemCodeableConcept;

MedicinalProductInteraction_Interactant(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.itemReference,
      this.itemCodeableConcept,
      });

  factory MedicinalProductInteraction_Interactant.fromJson(Map<String, dynamic> json) => _$MedicinalProductInteraction_InteractantFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductInteraction_InteractantToJson(this);
}

