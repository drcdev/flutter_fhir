

part 'procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class Procedure {

  This is a Procedure resource resourceType;
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
  List<String> instantiatesCanonical;
  List<String> instantiatesUri;
  List<Element> _instantiatesUri;
  List<Reference> basedOn;
  List<Reference> partOf;
  String status;
  Element _status;
  CodeableConcept statusReason;
  CodeableConcept category;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  String performedDateTime;
  Element _performedDateTime;
  Period performedPeriod;
  String performedString;
  Element _performedString;
  Age performedAge;
  Range performedRange;
  Reference recorder;
  Reference asserter;
  List<Procedure_Performer> performer;
  Reference location;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<CodeableConcept> bodySite;
  CodeableConcept outcome;
  List<Reference> report;
  List<CodeableConcept> complication;
  List<Reference> complicationDetail;
  List<CodeableConcept> followUp;
  List<Annotation> note;
  List<Procedure_FocalDevice> focalDevice;
  List<Reference> usedReference;
  List<CodeableConcept> usedCode;


Procedure(
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
this.instantiatesCanonical,
this.instantiatesUri,
this._instantiatesUri,
this.basedOn,
this.partOf,
this.status,
this._status,
this.statusReason,
this.category,
this.code,
this.subject,
this.encounter,
this.performedDateTime,
this._performedDateTime,
this.performedPeriod,
this.performedString,
this._performedString,
this.performedAge,
this.performedRange,
this.recorder,
this.asserter,
this.performer,
this.location,
this.reasonCode,
this.reasonReference,
this.bodySite,
this.outcome,
this.report,
this.complication,
this.complicationDetail,
this.followUp,
this.note,
this.focalDevice,
this.usedReference,
this.usedCode});

  factory Procedure.fromJson(Map<String, dynamic> json) => _$ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ProcedureToJson(this);
}