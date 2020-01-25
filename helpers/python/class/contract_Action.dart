

part 'contract_Action.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract_Action {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool doNotPerform;
  Element _doNotPerform;
  CodeableConcept type;
  List<Contract_Subject> subject;
  CodeableConcept intent;
  List<String> linkId;
  List<Element> _linkId;
  CodeableConcept status;
  Reference context;
  List<String> contextLinkId;
  List<Element> _contextLinkId;
  String occurrenceDateTime;
  Element _occurrenceDateTime;
  Period occurrencePeriod;
  Timing occurrenceTiming;
  List<Reference> requester;
  List<String> requesterLinkId;
  List<Element> _requesterLinkId;
  List<CodeableConcept> performerType;
  CodeableConcept performerRole;
  Reference performer;
  List<String> performerLinkId;
  List<Element> _performerLinkId;
  List<CodeableConcept> reasonCode;
  List<Reference> reasonReference;
  List<String> reason;
  List<Element> _reason;
  List<String> reasonLinkId;
  List<Element> _reasonLinkId;
  List<Annotation> note;
  List<int> securityLabelNumber;
  List<Element> _securityLabelNumber;


Contract_Action(
      {this.id,
this.extension,
this.modifierExtension,
this.doNotPerform,
this._doNotPerform,
this.type,
this.subject,
this.intent,
this.linkId,
this._linkId,
this.status,
this.context,
this.contextLinkId,
this._contextLinkId,
this.occurrenceDateTime,
this._occurrenceDateTime,
this.occurrencePeriod,
this.occurrenceTiming,
this.requester,
this.requesterLinkId,
this._requesterLinkId,
this.performerType,
this.performerRole,
this.performer,
this.performerLinkId,
this._performerLinkId,
this.reasonCode,
this.reasonReference,
this.reason,
this._reason,
this.reasonLinkId,
this._reasonLinkId,
this.note,
this.securityLabelNumber,
this._securityLabelNumber});

  factory Contract_Action.fromJson(Map<String, dynamic> json) => _$Contract_ActionFromJson(json);
  Map<String, dynamic> toJson() => _$Contract_ActionToJson(this);
}