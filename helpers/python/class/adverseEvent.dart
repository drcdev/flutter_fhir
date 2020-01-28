part 'adverseEvent.g.dart';

@JsonSerializable(explicitToJson: true)
class AdverseEvent {

AdverseEvent resourceType;
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
String actuality; // <code> enum: actual/potential;
Element _actuality;
List<CodeableConcept> category;
CodeableConcept event;
Reference subject;
Reference encounter;
DateTime date;
Element _date;
DateTime detected;
Element _detected;
DateTime recordedDate;
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
      this.study,
      });

  factory AdverseEvent.fromJson(Map<String, dynamic> json) => _$AdverseEventFromJson(json);
  Map<String, dynamic> toJson() _$AdverseEventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_SuspectEntity {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference instance;
List<AdverseEvent_Causality> causality;

AdverseEvent_SuspectEntity(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.instance,
      this.causality,
      });

  factory AdverseEvent_SuspectEntity.fromJson(Map<String, dynamic> json) => _$AdverseEvent_SuspectEntityFromJson(json);
  Map<String, dynamic> toJson() _$AdverseEvent_SuspectEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdverseEvent_Causality {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept assessment;
String productRelatedness;
Element _productRelatedness;
Reference author;
CodeableConcept method;

AdverseEvent_Causality(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.assessment,
      this.productRelatedness,
      this._productRelatedness,
      this.author,
      this.method,
      });

  factory AdverseEvent_Causality.fromJson(Map<String, dynamic> json) => _$AdverseEvent_CausalityFromJson(json);
  Map<String, dynamic> toJson() _$AdverseEvent_CausalityToJson(this);
}

