

part 'adverseEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent {

  This is a AdverseEvent resource resourceType;
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
  enum: actualpotential actuality;
  Element _actuality;
  List<CodeableConcept> category;
  CodeableConcept event;
  Reference subject;
  Reference encounter;
  StringTime date;
  Element _date;
  StringTime detected;
  Element _detected;
  StringTime recordedDate;
  Element _recordedDate;
  List<Reference> resultingCondition;
  Reference location;
  CodeableConcept seriousness;
  CodeableConcept severity;
  CodeableConcept outcome;
  Reference recorder;
  List<Reference> contributor;
  List<AdverseEvent_SuspectEntity> suspectEntity;
  List<Reference> subjectMedicalHistory;
  List<Reference> referenceDocument;
  List<Reference> study;


AdverseEvent(
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
this.actuality,
this._actuality,
this.category,
this.event,
this.subject,
this.encounter,
this.date,
this._date,
this.detected,
this._detected,
this.recordedDate,
this._recordedDate,
this.resultingCondition,
this.location,
this.seriousness,
this.severity,
this.outcome,
this.recorder,
this.contributor,
this.suspectEntity,
this.subjectMedicalHistory,
this.referenceDocument,
this.study});

  factory AdverseEvent.fromJson(Map<String, dynamic> json) => _$AdverseEventFromJson(json);
  Map<String, dynamic> toJson() => _$AdverseEventToJson(this);
}