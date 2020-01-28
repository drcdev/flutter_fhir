part 'contract.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract {

Contract resourceType;
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
String url;
Element _url;
String version;
Element _version;
String status;
Element _status;
CodeableConcept legalState;
Reference instantiatesCanonical;
String instantiatesUri;
Element _instantiatesUri;
CodeableConcept contentDerivative;
DateTime issued;
Element _issued;
Period applies;
CodeableConcept expirationType;
List<Reference> subject;
List<Reference> authority;
List<Reference> domain;
List<Reference> site;
String name;
Element _name;
String title;
Element _title;
String subtitle;
Element _subtitle;
List<String> alias;
List<Element> _alias;
Reference author;
CodeableConcept scope;
CodeableConcept topicCodeableConcept;
Reference topicReference;
CodeableConcept type;
List<CodeableConcept> subType;
Contract_ContentDefinition contentDefinition;
List<Contract_Term> term;
List<Reference> supportingInfo;
List<Reference> relevantHistory;
List<Contract_Signer> signer;
List<Contract_Friendly> friendly;
List<Contract_Legal> legal;
List<Contract_Rule> rule;
Attachment legallyBindingAttachment;
Reference legallyBindingReference;

Contract(
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
      this.url,
      this._url,
      this.version,
      this._version,
      this.status,
      this._status,
      this.legalState,
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.contentDerivative,
      this.issued,
      this._issued,
      this.applies,
      this.expirationType,
      this.subject,
      this.authority,
      this.domain,
      this.site,
      this.name,
      this._name,
      this.title,
      this._title,
      this.subtitle,
      this._subtitle,
      this.alias,
      this._alias,
      this.author,
      this.scope,
      this.topicCodeableConcept,
      this.topicReference,
      this.type,
      this.subType,
      this.contentDefinition,
      this.term,
      this.supportingInfo,
      this.relevantHistory,
      this.signer,
      this.friendly,
      this.legal,
      this.rule,
      this.legallyBindingAttachment,
      this.legallyBindingReference,
      });

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
  Map<String, dynamic> toJson() _$ContractToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_ContentDefinition {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept subType;
Reference publisher;
DateTime publicationDate;
Element _publicationDate;
String publicationStatus;
Element _publicationStatus;
String copyright;
Element _copyright;

Contract_ContentDefinition(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.subType,
      this.publisher,
      this.publicationDate,
      this._publicationDate,
      this.publicationStatus,
      this._publicationStatus,
      this.copyright,
      this._copyright,
      });

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) => _$Contract_ContentDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ContentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Term {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Identifier identifier;
DateTime issued;
Element _issued;
Period applies;
CodeableConcept topicCodeableConcept;
Reference topicReference;
CodeableConcept type;
CodeableConcept subType;
String text;
Element _text;
List<Contract_SecurityLabel> securityLabel;
Contract_Offer offer;
List<Contract_Asset> asset;
List<Contract_Action> action;
List<Contract_Term> group;

Contract_Term(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.issued,
      this._issued,
      this.applies,
      this.topicCodeableConcept,
      this.topicReference,
      this.type,
      this.subType,
      this.text,
      this._text,
      this.securityLabel,
      this.offer,
      this.asset,
      this.action,
      this.group,
      });

  factory Contract_Term.fromJson(Map<String, dynamic> json) => _$Contract_TermFromJson(json);
  Map<String, dynamic> toJson() _$Contract_TermToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_SecurityLabel {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<int> number;
List<Element> _number;
Coding classification;
List<Coding> category;
List<Coding> control;

Contract_SecurityLabel(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.number,
      this._number,
      this.classification,
      this.category,
      this.control,
      });

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) => _$Contract_SecurityLabelFromJson(json);
  Map<String, dynamic> toJson() _$Contract_SecurityLabelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Offer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
List<Contract_Party> party;
Reference topic;
CodeableConcept type;
CodeableConcept decision;
List<CodeableConcept> decisionMode;
List<Contract_Answer> answer;
String text;
Element _text;
List<String> linkId;
List<Element> _linkId;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;

Contract_Offer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.party,
      this.topic,
      this.type,
      this.decision,
      this.decisionMode,
      this.answer,
      this.text,
      this._text,
      this.linkId,
      this._linkId,
      this.securityLabelNumber,
      this._securityLabelNumber,
      });

  factory Contract_Offer.fromJson(Map<String, dynamic> json) => _$Contract_OfferFromJson(json);
  Map<String, dynamic> toJson() _$Contract_OfferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Party {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> reference;
CodeableConcept role;

Contract_Party(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.role,
      });

  factory Contract_Party.fromJson(Map<String, dynamic> json) => _$Contract_PartyFromJson(json);
  Map<String, dynamic> toJson() _$Contract_PartyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Answer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _valueDate;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _valueTime;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
Attachment valueAttachment;
Coding valueCoding;
Quantity valueQuantity;
Reference valueReference;

Contract_Answer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDecimal,
      this._valueDecimal,
      this.valueInteger,
      this._valueInteger,
      this.valueDate,
      this._valueDate,
      this.valueDateTime,
      this._valueDateTime,
      this.valueTime,
      this._valueTime,
      this.valueString,
      this._valueString,
      this.valueUri,
      this._valueUri,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference,
      });

  factory Contract_Answer.fromJson(Map<String, dynamic> json) => _$Contract_AnswerFromJson(json);
  Map<String, dynamic> toJson() _$Contract_AnswerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Asset {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept scope;
List<CodeableConcept> type;
List<Reference> typeReference;
List<CodeableConcept> subtype;
Coding relationship;
List<Contract_Context> context;
String condition;
Element _condition;
List<CodeableConcept> periodType;
List<Period> period;
List<Period> usePeriod;
String text;
Element _text;
List<String> linkId;
List<Element> _linkId;
List<Contract_Answer> answer;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;
List<Contract_ValuedItem> valuedItem;

Contract_Asset(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.scope,
      this.type,
      this.typeReference,
      this.subtype,
      this.relationship,
      this.context,
      this.condition,
      this._condition,
      this.periodType,
      this.period,
      this.usePeriod,
      this.text,
      this._text,
      this.linkId,
      this._linkId,
      this.answer,
      this.securityLabelNumber,
      this._securityLabelNumber,
      this.valuedItem,
      });

  factory Contract_Asset.fromJson(Map<String, dynamic> json) => _$Contract_AssetFromJson(json);
  Map<String, dynamic> toJson() _$Contract_AssetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Context {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference reference;
List<CodeableConcept> code;
String text;
Element _text;

Contract_Context(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.code,
      this.text,
      this._text,
      });

  factory Contract_Context.fromJson(Map<String, dynamic> json) => _$Contract_ContextFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_ValuedItem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept entityCodeableConcept;
Reference entityReference;
Identifier identifier;
DateTime effectiveTime;
Element _effectiveTime;
Quantity quantity;
Money unitPrice;
double factor;
Element _factor;
double points;
Element _points;
Money net;
String payment;
Element _payment;
DateTime paymentDate;
Element _paymentDate;
Reference responsible;
Reference recipient;
List<String> linkId;
List<Element> _linkId;
List<int> securityLabelNumber;
List<Element> _securityLabelNumber;

Contract_ValuedItem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.entityCodeableConcept,
      this.entityReference,
      this.identifier,
      this.effectiveTime,
      this._effectiveTime,
      this.quantity,
      this.unitPrice,
      this.factor,
      this._factor,
      this.points,
      this._points,
      this.net,
      this.payment,
      this._payment,
      this.paymentDate,
      this._paymentDate,
      this.responsible,
      this.recipient,
      this.linkId,
      this._linkId,
      this.securityLabelNumber,
      this._securityLabelNumber,
      });

  factory Contract_ValuedItem.fromJson(Map<String, dynamic> json) => _$Contract_ValuedItemFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ValuedItemToJson(this);
}

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
String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
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
      this._securityLabelNumber,
      });

  factory Contract_Action.fromJson(Map<String, dynamic> json) => _$Contract_ActionFromJson(json);
  Map<String, dynamic> toJson() _$Contract_ActionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Subject {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Reference> reference;
CodeableConcept role;

Contract_Subject(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.reference,
      this.role,
      });

  factory Contract_Subject.fromJson(Map<String, dynamic> json) => _$Contract_SubjectFromJson(json);
  Map<String, dynamic> toJson() _$Contract_SubjectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Signer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding type;
Reference party;
List<Signature> signature;

Contract_Signer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.party,
      this.signature,
      });

  factory Contract_Signer.fromJson(Map<String, dynamic> json) => _$Contract_SignerFromJson(json);
  Map<String, dynamic> toJson() _$Contract_SignerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Friendly {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

Contract_Friendly(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentAttachment,
      this.contentReference,
      });

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) => _$Contract_FriendlyFromJson(json);
  Map<String, dynamic> toJson() _$Contract_FriendlyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Legal {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

Contract_Legal(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentAttachment,
      this.contentReference,
      });

  factory Contract_Legal.fromJson(Map<String, dynamic> json) => _$Contract_LegalFromJson(json);
  Map<String, dynamic> toJson() _$Contract_LegalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contract_Rule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Attachment contentAttachment;
Reference contentReference;

Contract_Rule(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.contentAttachment,
      this.contentReference,
      });

  factory Contract_Rule.fromJson(Map<String, dynamic> json) => _$Contract_RuleFromJson(json);
  Map<String, dynamic> toJson() _$Contract_RuleToJson(this);
}

