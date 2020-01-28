part 'medicinalProductContraindication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication {

MedicinalProductContraindication resourceType;
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
CodeableConcept disease;
CodeableConcept diseaseStatus;
List<CodeableConcept> comorbidity;
List<Reference> therapeuticIndication;
List<MedicinalProductContraindication_OtherTherapy> otherTherapy;
List<Population> population;

MedicinalProductContraindication(
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
      this.disease,
      this.diseaseStatus,
      this.comorbidity,
      this.therapeuticIndication,
      this.otherTherapy,
      this.population,
      });

  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindicationFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductContraindicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept therapyRelationshipType;
CodeableConcept medicationCodeableConcept;
Reference medicationReference;

MedicinalProductContraindication_OtherTherapy(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.therapyRelationshipType,
      this.medicationCodeableConcept,
      this.medicationReference,
      });

  factory MedicinalProductContraindication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() _$MedicinalProductContraindication_OtherTherapyToJson(this);
}

