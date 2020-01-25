

part 'chargeItemDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition {

  This is a ChargeItemDefinition resource resourceType;
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
  String title;
  Element _title;
  List<String> derivedFromUri;
  List<Element> _derivedFromUri;
  List<String> partOf;
  List<String> replaces;
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  String description;
  Element _description;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element _copyright;
  String approvalDate;
  Element _approvalDate;
  String lastReviewDate;
  Element _lastReviewDate;
  Period effectivePeriod;
  CodeableConcept code;
  List<Reference> instance;
  List<ChargeItemDefinition_Applicability> applicability;
  List<ChargeItemDefinition_PropertyGroup> propertyGroup;


ChargeItemDefinition(
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
this.title,
this._title,
this.derivedFromUri,
this._derivedFromUri,
this.partOf,
this.replaces,
this.status,
this._status,
this.experimental,
this._experimental,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.useContext,
this.jurisdiction,
this.copyright,
this._copyright,
this.approvalDate,
this._approvalDate,
this.lastReviewDate,
this._lastReviewDate,
this.effectivePeriod,
this.code,
this.instance,
this.applicability,
this.propertyGroup});

  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinitionToJson(this);
}