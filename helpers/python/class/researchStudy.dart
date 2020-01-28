part 'researchStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchStudy {

ResearchStudy resourceType;
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
List<Identifier> identifier;
String title;
Element _title;
List<Reference> protocol;
List<Reference> partOf;
String status; // <code> enum: active/administratively-completed/approved/closed-to-accrual/closed-to-accrual-and-intervention/completed/disapproved/in-review/temporarily-closed-to-accrual/temporarily-closed-to-accrual-and-intervention/withdrawn;
Element _status;
CodeableConcept primaryPurposeType;
CodeableConcept phase;
List<CodeableConcept> category;
List<CodeableConcept> focus;
List<CodeableConcept> condition;
List<ContactDetail> contact;
List<RelatedArtifact> relatedArtifact;
List<CodeableConcept> keyword;
List<CodeableConcept> location;
String description;
Element _description;
List<Reference> enrollment;
Period period;
Reference sponsor;
Reference principalInvestigator;
List<Reference> site;
CodeableConcept reasonStopped;
List<Annotation> note;
List<ResearchStudy_Arm> arm;
List<ResearchStudy_Objective> objective;

ResearchStudy(
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
      this.title,
      this._title,
      this.protocol,
      this.partOf,
      this.status,
      this._status,
      this.primaryPurposeType,
      this.phase,
      this.category,
      this.focus,
      this.condition,
      this.contact,
      this.relatedArtifact,
      this.keyword,
      this.location,
      this.description,
      this._description,
      this.enrollment,
      this.period,
      this.sponsor,
      this.principalInvestigator,
      this.site,
      this.reasonStopped,
      this.note,
      this.arm,
      this.objective,
      });

  factory ResearchStudy.fromJson(Map<String, dynamic> json) => _$ResearchStudyFromJson(json);
  Map<String, dynamic> toJson() _$ResearchStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Arm {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;
String description;
Element _description;

ResearchStudy_Arm(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this.description,
      this._description,
      });

  factory ResearchStudy_Arm.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ArmFromJson(json);
  Map<String, dynamic> toJson() _$ResearchStudy_ArmToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResearchStudy_Objective {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
CodeableConcept type;

ResearchStudy_Objective(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      });

  factory ResearchStudy_Objective.fromJson(Map<String, dynamic> json) => _$ResearchStudy_ObjectiveFromJson(json);
  Map<String, dynamic> toJson() _$ResearchStudy_ObjectiveToJson(this);
}

