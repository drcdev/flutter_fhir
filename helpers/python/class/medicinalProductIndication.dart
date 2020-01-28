part 'medicinalProductIndication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication {

MedicinalProductIndication resourceType;
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
CodeableConcept diseaseSymptomProcedure;
CodeableConcept diseaseStatus;
List<CodeableConcept> comorbidity;
CodeableConcept intendedEffect;
Quantity duration;
List<MedicinalProductIndication_OtherTherapy> otherTherapy;
List<Reference> undesirableEffect;
List<Population> population;

MedicinalProductIndication(
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
      this.diseaseSymptomProcedure,
      this.diseaseStatus,
      this.comorbidity,
      this.intendedEffect,
      this.duration,
      this.otherTherapy,
      this.undesirableEffect,
      this.population,
      });

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIndicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept therapyRelationshipType;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;

MedicinalProductIndication_OtherTherapy(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.therapyRelationshipType,
      this.medicationCodeableConcept,
      this.medicationReference,
      });

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductIndication_OtherTherapyToJson(this);
}

