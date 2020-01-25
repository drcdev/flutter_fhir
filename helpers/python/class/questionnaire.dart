

part 'questionnaire.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire {

  This is a Questionnaire resource resourceType;
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
  List<String> derivedFrom;
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  List<String> subjectType;
  List<Element> _subjectType;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  String description;
  Element _description;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element _purpose;
  String copyright;
  Element _copyright;
  String approvalDate;
  Element _approvalDate;
  String lastReviewDate;
  Element _lastReviewDate;
  Period effectivePeriod;
  List<Coding> code;
  List<Questionnaire_Item> item;


Questionnaire(
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
this.derivedFrom,
this.status,
this._status,
this.experimental,
this._experimental,
this.subjectType,
this._subjectType,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.description,
this._description,
this.useContext,
this.jurisdiction,
this.purpose,
this._purpose,
this.copyright,
this._copyright,
this.approvalDate,
this._approvalDate,
this.lastReviewDate,
this._lastReviewDate,
this.effectivePeriod,
this.code,
this.item});

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireToJson(this);
}