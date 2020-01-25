

part 'task.g.dart';

@JsonSerializable(explicitToJson: true)
class Task {

  This is a Task resource resourceType;
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
  String instantiatesCanonical;
  String instantiatesUri;
  Element _instantiatesUri;
  List<Reference> basedOn;
  Identifier groupIdentifier;
  List<Reference> partOf;
  enum: draftrequestedreceivedacceptedrejectedreadycancelledin-progresson-holdfailedcompletedentered-in-error status;
  Element _status;
  CodeableConcept statusReason;
  CodeableConcept businessStatus;
  enum: unknownproposalplanorderoriginal-orderreflex-orderfiller-orderinstance-orderoption intent;
  Element _intent;
  String priority;
  Element _priority;
  CodeableConcept code;
  String description;
  Element _description;
  Reference focus;
  Reference for;
  Reference encounter;
  Period executionPeriod;
  StringTime authoredOn;
  Element _authoredOn;
  StringTime lastModified;
  Element _lastModified;
  Reference requester;
  List<CodeableConcept> performerType;
  Reference owner;
  Reference location;
  CodeableConcept reasonCode;
  Reference reasonReference;
  List<Reference> insurance;
  List<Annotation> note;
  List<Reference> relevantHistory;
  Task_Restriction restriction;
  List<Task_Input> input;
  List<Task_Output> output;


Task(
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
this.groupIdentifier,
this.partOf,
this.status,
this._status,
this.statusReason,
this.businessStatus,
this.intent,
this._intent,
this.priority,
this._priority,
this.code,
this.description,
this._description,
this.focus,
this.for,
this.encounter,
this.executionPeriod,
this.authoredOn,
this._authoredOn,
this.lastModified,
this._lastModified,
this.requester,
this.performerType,
this.owner,
this.location,
this.reasonCode,
this.reasonReference,
this.insurance,
this.note,
this.relevantHistory,
this.restriction,
this.input,
this.output});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}