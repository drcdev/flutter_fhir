

part 'medicinalProductIndication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication {

  This is a MedicinalProductIndication resource resourceType;
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
this.population});

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndicationToJson(this);
}