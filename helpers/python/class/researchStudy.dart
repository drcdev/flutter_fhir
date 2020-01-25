

part 'researchStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchStudy {

  This is a ResearchStudy resource resourceType;
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
  enum: activeadministratively-completedapprovedclosed-to-accrualclosed-to-accrual-and-interventioncompleteddisapprovedin-reviewtemporarily-closed-to-accrualtemporarily-closed-to-accrual-and-interventionwithdrawn status;
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
this.objective});

  factory ResearchStudy.fromJson(Map<String, dynamic> json) => _$ResearchStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ResearchStudyToJson(this);
}