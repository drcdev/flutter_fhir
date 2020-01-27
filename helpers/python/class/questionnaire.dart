
part 'questionnaire.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire {
  
  // This is a Questionnaire 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // An absolute URI that is used to identify this questionnaire when it is
  //  referenced in a specification, model, design or an instance; also called its
  //  canonical identifier. This SHOULD be globally unique and SHOULD be a literal
  //  address at which at which an authoritative instance of this questionnaire is
  //  (or will be) published. This URL can be the target of a canonical reference. It
  //  SHALL remain the same when the questionnaire is stored on different servers.
  String url;

  // Extensions for url
  Element _url;

  // A formal identifier that is used to identify this questionnaire when it is
  //  represented in other formats, or referenced in a specification, model, design
  //  or an instance.
  List<Identifier identifier;

  // The identifier that is used to identify this version of the questionnaire
  //  when it is referenced in a specification, model, design or instance. This is an
  //  arbitrary value managed by the questionnaire author and is not expected to be
  //  globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  //  managed version is not available. There is also no expectation that versions
  //  can be placed in a lexicographical sequence.
  String version;

  // Extensions for version
  Element _version;

  // A natural language name identifying the questionnaire. This name should be
  //  usable as an identifier for the module by machine processing applications such
  //  as code generation.
  String name;

  // Extensions for name
  Element _name;

  // A short, descriptive, user-friendly title for the questionnaire.
  String title;

  // Extensions for title
  Element _title;

  // The URL of a Questionnaire that this Questionnaire is based on.
  List<String derivedFrom;

  // The status of this questionnaire. Enables tracking the life-cycle of the
  //  content.Enum enum; // draftactiveretiredunknown status;

  // Extensions for status
  Element _status;

  // A Boolean value to indicate that this questionnaire is authored for testing
  //  purposes (or education/evaluation/marketing) and is not intended to be used for
  //  genuine usage.
  bool experimental;

  // Extensions for experimental
  Element _experimental;

  // The types of subjects that can be the subject of responses created for the
  //  questionnaire.
  List<String subjectType;

  // Extensions for subjectType
  List<Element _subjectType;

  // The date  (and optionally time) when the questionnaire was published. The
  //  date must change when the business version changes and it must change if the
  //  status code changes. In addition, it should change when the substantive content
  //  of the questionnaire changes.
  StringTime date;

  // Extensions for date
  Element _date;

  // The name of the organization or individual that published the
  //  questionnaire.
  String publisher;

  // Extensions for publisher
  Element _publisher;

  // Contact details to assist a user in finding and communicating with the
  //  publisher.
  List<ContactDetail contact;

  // A free text natural language description of the questionnaire from a
  //  consumer's perspective.
  String description;

  // Extensions for description
  Element _description;

  // The content was developed with a focus and intent of supporting the
  //  contexts that are listed. These contexts may be general categories (gender,
  //  age, ...) or may be references to specific programs (insurance plans, studies,
  //  ...) and may be used to assist with indexing and searching for appropriate
  //  questionnaire instances.
  List<UsageContext useContext;

  // A legal or geographic region in which the questionnaire is intended to be
  //  used.
  List<CodeableConcept jurisdiction;

  // Explanation of why this questionnaire is needed and why it has been
  //  designed as it has.
  String purpose;

  // Extensions for purpose
  Element _purpose;

  // A copyright statement relating to the questionnaire and/or its contents.
  //  Copyright statements are generally legal restrictions on the use and publishing
  //  of the questionnaire.
  String copyright;

  // Extensions for copyright
  Element _copyright;

  // The date on which the resource content was approved by the publisher.
  //  Approval happens once when the content is officially approved for usage.
  String approvalDate;

  // Extensions for approvalDate
  Element _approvalDate;

  // The date on which the resource content was last reviewed. Review happens
  //  periodically after approval but does not change the original approval date.
  String lastReviewDate;

  // Extensions for lastReviewDate
  Element _lastReviewDate;

  // The period during which the questionnaire content was or is planned to be
  //  in active use.
  Period effectivePeriod;

  // An identifier for this question or group of questions in a particular
  //  terminology such as LOINC.
  List<Coding code;

  // A particular question, question grouping or display text that is part of
  //  the questionnaire.
  List<Questionnaire_Item item
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
