

part 'contract.g.dart';

@JsonSerializable(explicitToJson: true)
class Contract {

  This is a Contract resource resourceType;
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
  StringTime issued;
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
this.legallyBindingReference});

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
  Map<String, dynamic> toJson() => _$ContractToJson(this);
}