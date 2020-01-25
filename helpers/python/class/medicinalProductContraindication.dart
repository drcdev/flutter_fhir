

part 'medicinalProductContraindication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication {

  This is a MedicinalProductContraindication resource resourceType;
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
this.population});

  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindicationToJson(this);
}