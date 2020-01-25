

part 'effectEvidenceSynthesis.g.dart';

@JsonSerializable(explicitToJson: true)
class EffectEvidenceSynthesis {

  This is a EffectEvidenceSynthesis resource resourceType;
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
  String url;
  Element _url;
  List<Identifier> identifier;
  String version;
  Element _version;
  String name;
  Element _name;
  String title;
  Element _title;
  enum: draftactiveretiredunknown status;
  Element _status;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  String description;
  Element _description;
  List<Annotation> note;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element _copyright;
  String approvalDate;
  Element _approvalDate;
  String lastReviewDate;
  Element _lastReviewDate;
  Period effectivePeriod;
  List<CodeableConcept> topic;
  List<ContactDetail> author;
  List<ContactDetail> editor;
  List<ContactDetail> reviewer;
  List<ContactDetail> endorser;
  List<RelatedArtifact> relatedArtifact;
  CodeableConcept synthesisType;
  CodeableConcept studyType;
  Reference population;
  Reference exposure;
  Reference exposureAlternative;
  Reference outcome;
  EffectEvidenceSynthesis_SampleSize sampleSize;
  List<EffectEvidenceSynthesis_ResultsByExposure> resultsByExposure;
  List<EffectEvidenceSynthesis_EffectEstimate> effectEstimate;
  List<EffectEvidenceSynthesis_Certainty> certainty;


EffectEvidenceSynthesis(
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
this.url,
this._url,
this.identifier,
this.version,
this._version,
this.name,
this._name,
this.title,
this._title,
this.status,
this._status,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.note,
this.useContext,
this.jurisdiction,
this.copyright,
this._copyright,
this.approvalDate,
this._approvalDate,
this.lastReviewDate,
this._lastReviewDate,
this.effectivePeriod,
this.topic,
this.author,
this.editor,
this.reviewer,
this.endorser,
this.relatedArtifact,
this.synthesisType,
this.studyType,
this.population,
this.exposure,
this.exposureAlternative,
this.outcome,
this.sampleSize,
this.resultsByExposure,
this.effectEstimate,
this.certainty});

  factory EffectEvidenceSynthesis.fromJson(Map<String, dynamic> json) => _$EffectEvidenceSynthesisFromJson(json);
  Map<String, dynamic> toJson() => _$EffectEvidenceSynthesisToJson(this);
}