import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 499)
class Questionnaire {

  //  This is a Questionnaire resource
  @HiveField(0)
  final String resourceType= 'Questionnaire';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  An absolute URI that is used to identify this questionnaire when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this questionnaire is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // questionnaire is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this questionnaire when
  // it is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the
  // questionnaire when it is referenced in a specification, model, design
  // or instance. This is an arbitrary value managed by the questionnaire
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A natural language name identifying the questionnaire. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(16)
  String name;

  //  Extensions for name
  @HiveField(17)
  Element elementName;

  //  A short, descriptive, user-friendly title for the questionnaire.
  @HiveField(18)
  String title;

  //  Extensions for title
  @HiveField(19)
  Element elementTitle;

  //  The URL of a Questionnaire that this Questionnaire is based on.
  @HiveField(20)
  List<String> derivedFrom;

  //  The status of this questionnaire. Enables tracking the life-cycle of
  // the content.
  @HiveField(21)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(22)
  Element elementStatus;

  //  A Boolean value to indicate that this questionnaire is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(23)
  bool experimental;

  //  Extensions for experimental
  @HiveField(24)
  Element elementExperimental;

  //  The types of subjects that can be the subject of responses created for
  // the questionnaire.
  @HiveField(25)
  List<String> subjectType;

  //  Extensions for subjectType
  @HiveField(26)
  List<Element> elementSubjectType;

  //  The date  (and optionally time) when the questionnaire was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the questionnaire changes.
  @HiveField(27)
  DateTime date;

  //  Extensions for date
  @HiveField(28)
  Element elementDate;

  //  The name of the organization or individual that published the
  // questionnaire.
  @HiveField(29)
  String publisher;

  //  Extensions for publisher
  @HiveField(30)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(31)
  List<ContactDetail> contact;

  //  A free text natural language description of the questionnaire from a
  // consumer's perspective.
  @HiveField(32)
  String description;

  //  Extensions for description
  @HiveField(33)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate questionnaire instances.
  @HiveField(34)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the questionnaire is intended to
  // be used.
  @HiveField(35)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this questionnaire is needed and why it has been
  // designed as it has.
  @HiveField(36)
  String purpose;

  //  Extensions for purpose
  @HiveField(37)
  Element elementPurpose;

  //  A copyright statement relating to the questionnaire and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the questionnaire.
  @HiveField(38)
  String copyright;

  //  Extensions for copyright
  @HiveField(39)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(40)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(41)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(42)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(43)
  Element elementLastReviewDate;

  //  The period during which the questionnaire content was or is planned to
  // be in active use.
  @HiveField(44)
  Period effectivePeriod;

  //  An identifier for this question or group of questions in a particular
  // terminology such as LOINC.
  @HiveField(45)
  List<Coding> code;

  //  A particular question, question grouping or display text that is part
  // of the questionnaire.
  @HiveField(46)
  List<Questionnaire_Item> item;

Questionnaire(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.identifier,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.derivedFrom,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.subjectType,
    this.elementSubjectType,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.code,
    this.item
    });

  factory Questionnaire.fromJson(Map<String, dynamic> json) => _$QuestionnaireFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 500)
class Questionnaire_Item {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  An identifier that is unique within the Questionnaire allowing linkage
  // to the equivalent item in a QuestionnaireResponse resource.
  @HiveField(3)
  String linkId;

  //  Extensions for linkId
  @HiveField(4)
  Element elementLinkId;

  //  This element is a URI that refers to an [[[ElementDefinition]]] that
  // provides information about this item, including information that might
  // otherwise be included in the instance of the Questionnaire resource. A
  // detailed description of the construction of the URI is shown in
  // Comments, below. If this element is present then the following element
  // values MAY be derived from the Element Definition if the corresponding
  // elements of this Questionnaire resource instance have no value: * code
  // (ElementDefinition.code)  * type (ElementDefinition.type)  * required
  // (ElementDefinition.min)  * repeats (ElementDefinition.max)  * maxLength
  // (ElementDefinition.maxLength)  * answerValueSet
  // (ElementDefinition.binding) * options (ElementDefinition.binding).
  @HiveField(5)
  String definition;

  //  Extensions for definition
  @HiveField(6)
  Element elementDefinition;

  //  A terminology code that corresponds to this group or question (e.g. a
  // code from LOINC, which defines many questions and answers).
  @HiveField(7)
  List<Coding> code;

  //  A short label for a particular group, question or set of display text
  // within the questionnaire used for reference by the individual
  // completing the questionnaire.
  @HiveField(8)
  String prefix;

  //  Extensions for prefix
  @HiveField(9)
  Element elementPrefix;

  //  The name of a section, the text of a question or text content for a
  // display item.
  @HiveField(10)
  String text;

  //  Extensions for text
  @HiveField(11)
  Element elementText;

  //  The type of questionnaire item this is - whether text for display, a
  // grouping of other items or a particular type of data to be captured
  // (string, integer, coded choice, etc.).
  @HiveField(12)
  String type; // <code> enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity;

  //  Extensions for type
  @HiveField(13)
  Element elementType;

  //  A constraint indicating that this item should only be enabled
  // (displayed/allow answers to be captured) when the specified condition
  // is true.
  @HiveField(14)
  List<Questionnaire_EnableWhen> enableWhen;

  //  Controls how multiple enableWhen values are interpreted -  whether all
  // or any must be true.
  @HiveField(15)
  String enableBehavior; // <code> enum: all/any;

  //  Extensions for enableBehavior
  @HiveField(16)
  Element elementEnableBehavior;

  //  An indication, if true, that the item must be present in a "completed"
  // QuestionnaireResponse.  If false, the item may be skipped when
  // answering the questionnaire.
  @HiveField(17)
  bool required;

  //  Extensions for required
  @HiveField(18)
  Element elementRequired;

  //  An indication, if true, that the item may occur multiple times in the
  // response, collecting multiple answers for questions or multiple sets of
  // answers for groups.
  @HiveField(19)
  bool repeats;

  //  Extensions for repeats
  @HiveField(20)
  Element elementRepeats;

  //  An indication, when true, that the value cannot be changed by a human
  // respondent to the Questionnaire.
  @HiveField(21)
  bool readOnly;

  //  Extensions for readOnly
  @HiveField(22)
  Element elementReadOnly;

  //  The maximum number of characters that are permitted in the answer to
  // be considered a "valid" QuestionnaireResponse.
  @HiveField(23)
  int maxLength;

  //  Extensions for maxLength
  @HiveField(24)
  Element elementMaxLength;

  //  A reference to a value set containing a list of codes representing
  // permitted answers for a "choice" or "open-choice" question.
  @HiveField(25)
  String answerValueSet;

  //  One of the permitted answers for a "choice" or "open-choice" question.
  @HiveField(26)
  List<Questionnaire_AnswerOption> answerOption;

  //  One or more values that should be pre-populated in the answer when
  // initially rendering the questionnaire for user input.
  @HiveField(27)
  List<Questionnaire_Initial> initial;

  //  Text, questions and other groups to be nested beneath a question or
  // group.
  @HiveField(28)
  List<Questionnaire_Item> item;

Questionnaire_Item(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.linkId,
    this.elementLinkId,
    this.definition,
    this.elementDefinition,
    this.code,
    this.prefix,
    this.elementPrefix,
    this.text,
    this.elementText,
    this.type,
    this.elementType,
    this.enableWhen,
    this.enableBehavior,
    this.elementEnableBehavior,
    this.required,
    this.elementRequired,
    this.repeats,
    this.elementRepeats,
    this.readOnly,
    this.elementReadOnly,
    this.maxLength,
    this.elementMaxLength,
    this.answerValueSet,
    this.answerOption,
    this.initial,
    this.item
    });

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) => _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 501)
class Questionnaire_EnableWhen {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The linkId for the question whose answer (or lack of answer) governs
  // whether this item is enabled.
  @HiveField(3)
  String question;

  //  Extensions for question
  @HiveField(4)
  Element elementQuestion;

  //  Specifies the criteria by which the question is enabled.
  @HiveField(5)
  String operator; // <code> enum: exists/=/!=/>/</>=/<=;

  //  Extensions for operator
  @HiveField(6)
  Element elementOperator;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(7)
  bool answerBoolean; //  pattern: ^true|false$

  //  Extensions for answerBoolean
  @HiveField(8)
  Element elementAnswerBoolean;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  double answerDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for answerDecimal
  @HiveField(10)
  Element elementAnswerDecimal;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  int answerInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for answerInteger
  @HiveField(12)
  Element elementAnswerInteger;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(13)
  String answerDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for answerDate
  @HiveField(14)
  Element elementAnswerDate;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(15)
  String answerDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for answerDateTime
  @HiveField(16)
  Element elementAnswerDateTime;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(17)
  String answerTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for answerTime
  @HiveField(18)
  Element elementAnswerTime;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(19)
  String answerString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for answerString
  @HiveField(20)
  Element elementAnswerString;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(21)
  Coding answerCoding;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(22)
  Quantity answerQuantity;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  @HiveField(23)
  Reference answerReference;

Questionnaire_EnableWhen(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.question,
    this.elementQuestion,
    this.operator,
    this.elementOperator,
    this.answerBoolean,
    this.elementAnswerBoolean,
    this.answerDecimal,
    this.elementAnswerDecimal,
    this.answerInteger,
    this.elementAnswerInteger,
    this.answerDate,
    this.elementAnswerDate,
    this.answerDateTime,
    this.elementAnswerDateTime,
    this.answerTime,
    this.elementAnswerTime,
    this.answerString,
    this.elementAnswerString,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference
    });

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) => _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_EnableWhenToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 502)
class Questionnaire_AnswerOption {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  A potential answer that's allowed as the answer to this question.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(4)
  Element elementValueInteger;

  //  A potential answer that's allowed as the answer to this question.
  @HiveField(5)
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  @HiveField(6)
  Element elementValueDate;

  //  A potential answer that's allowed as the answer to this question.
  @HiveField(7)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  @HiveField(8)
  Element elementValueTime;

  //  A potential answer that's allowed as the answer to this question.
  @HiveField(9)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(10)
  Element elementValueString;

  //  A potential answer that's allowed as the answer to this question.
  @HiveField(11)
  Coding valueCoding;

  //  A potential answer that's allowed as the answer to this question.
  @HiveField(12)
  Reference valueReference;

  //  Indicates whether the answer value is selected when the list of
  // possible answers is initially shown.
  @HiveField(13)
  bool initialSelected;

  //  Extensions for initialSelected
  @HiveField(14)
  Element elementInitialSelected;

Questionnaire_AnswerOption(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDate,
    this.elementValueDate,
    this.valueTime,
    this.elementValueTime,
    this.valueString,
    this.elementValueString,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
    this.elementInitialSelected
    });

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) => _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_AnswerOptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 503)
class Questionnaire_Initial {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The actual value to for an initial answer.
  @HiveField(3)
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  @HiveField(4)
  Element elementValueBoolean;

  //  The actual value to for an initial answer.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  @HiveField(6)
  Element elementValueDecimal;

  //  The actual value to for an initial answer.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  @HiveField(8)
  Element elementValueInteger;

  //  The actual value to for an initial answer.
  @HiveField(9)
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  @HiveField(10)
  Element elementValueDate;

  //  The actual value to for an initial answer.
  @HiveField(11)
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  @HiveField(12)
  Element elementValueDateTime;

  //  The actual value to for an initial answer.
  @HiveField(13)
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  @HiveField(14)
  Element elementValueTime;

  //  The actual value to for an initial answer.
  @HiveField(15)
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  @HiveField(16)
  Element elementValueString;

  //  The actual value to for an initial answer.
  @HiveField(17)
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  @HiveField(18)
  Element elementValueUri;

  //  The actual value to for an initial answer.
  @HiveField(19)
  Attachment valueAttachment;

  //  The actual value to for an initial answer.
  @HiveField(20)
  Coding valueCoding;

  //  The actual value to for an initial answer.
  @HiveField(21)
  Quantity valueQuantity;

  //  The actual value to for an initial answer.
  @HiveField(22)
  Reference valueReference;

Questionnaire_Initial(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueTime,
    this.elementValueTime,
    this.valueString,
    this.elementValueString,
    this.valueUri,
    this.elementValueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference
    });

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) => _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_InitialToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionnaireAdapter extends TypeAdapter<Questionnaire> {
  @override
  final typeId = 499;

  @override
  Questionnaire read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      identifier: (fields[13] as List)?.cast<Identifier>(),
      version: fields[14] as String,
      elementVersion: fields[15] as Element,
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      derivedFrom: (fields[20] as List)?.cast<String>(),
      status: fields[21] as String,
      elementStatus: fields[22] as Element,
      experimental: fields[23] as bool,
      elementExperimental: fields[24] as Element,
      subjectType: (fields[25] as List)?.cast<String>(),
      elementSubjectType: (fields[26] as List)?.cast<Element>(),
      date: fields[27] as DateTime,
      elementDate: fields[28] as Element,
      publisher: fields[29] as String,
      elementPublisher: fields[30] as Element,
      contact: (fields[31] as List)?.cast<ContactDetail>(),
      description: fields[32] as String,
      elementDescription: fields[33] as Element,
      useContext: (fields[34] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[35] as List)?.cast<CodeableConcept>(),
      purpose: fields[36] as String,
      elementPurpose: fields[37] as Element,
      copyright: fields[38] as String,
      elementCopyright: fields[39] as Element,
      approvalDate: fields[40] as String,
      elementApprovalDate: fields[41] as Element,
      lastReviewDate: fields[42] as String,
      elementLastReviewDate: fields[43] as Element,
      effectivePeriod: fields[44] as Period,
      code: (fields[45] as List)?.cast<Coding>(),
      item: (fields[46] as List)?.cast<Questionnaire_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire obj) {
    writer
      ..writeByte(47)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.identifier)
      ..writeByte(14)
      ..write(obj.version)
      ..writeByte(15)
      ..write(obj.elementVersion)
      ..writeByte(16)
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.derivedFrom)
      ..writeByte(21)
      ..write(obj.status)
      ..writeByte(22)
      ..write(obj.elementStatus)
      ..writeByte(23)
      ..write(obj.experimental)
      ..writeByte(24)
      ..write(obj.elementExperimental)
      ..writeByte(25)
      ..write(obj.subjectType)
      ..writeByte(26)
      ..write(obj.elementSubjectType)
      ..writeByte(27)
      ..write(obj.date)
      ..writeByte(28)
      ..write(obj.elementDate)
      ..writeByte(29)
      ..write(obj.publisher)
      ..writeByte(30)
      ..write(obj.elementPublisher)
      ..writeByte(31)
      ..write(obj.contact)
      ..writeByte(32)
      ..write(obj.description)
      ..writeByte(33)
      ..write(obj.elementDescription)
      ..writeByte(34)
      ..write(obj.useContext)
      ..writeByte(35)
      ..write(obj.jurisdiction)
      ..writeByte(36)
      ..write(obj.purpose)
      ..writeByte(37)
      ..write(obj.elementPurpose)
      ..writeByte(38)
      ..write(obj.copyright)
      ..writeByte(39)
      ..write(obj.elementCopyright)
      ..writeByte(40)
      ..write(obj.approvalDate)
      ..writeByte(41)
      ..write(obj.elementApprovalDate)
      ..writeByte(42)
      ..write(obj.lastReviewDate)
      ..writeByte(43)
      ..write(obj.elementLastReviewDate)
      ..writeByte(44)
      ..write(obj.effectivePeriod)
      ..writeByte(45)
      ..write(obj.code)
      ..writeByte(46)
      ..write(obj.item);
  }
}

class Questionnaire_ItemAdapter extends TypeAdapter<Questionnaire_Item> {
  @override
  final typeId = 500;

  @override
  Questionnaire_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_Item(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      linkId: fields[3] as String,
      elementLinkId: fields[4] as Element,
      definition: fields[5] as String,
      elementDefinition: fields[6] as Element,
      code: (fields[7] as List)?.cast<Coding>(),
      prefix: fields[8] as String,
      elementPrefix: fields[9] as Element,
      text: fields[10] as String,
      elementText: fields[11] as Element,
      type: fields[12] as String,
      elementType: fields[13] as Element,
      enableWhen: (fields[14] as List)?.cast<Questionnaire_EnableWhen>(),
      enableBehavior: fields[15] as String,
      elementEnableBehavior: fields[16] as Element,
      required: fields[17] as bool,
      elementRequired: fields[18] as Element,
      repeats: fields[19] as bool,
      elementRepeats: fields[20] as Element,
      readOnly: fields[21] as bool,
      elementReadOnly: fields[22] as Element,
      maxLength: fields[23] as int,
      elementMaxLength: fields[24] as Element,
      answerValueSet: fields[25] as String,
      answerOption: (fields[26] as List)?.cast<Questionnaire_AnswerOption>(),
      initial: (fields[27] as List)?.cast<Questionnaire_Initial>(),
      item: (fields[28] as List)?.cast<Questionnaire_Item>(),
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_Item obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.linkId)
      ..writeByte(4)
      ..write(obj.elementLinkId)
      ..writeByte(5)
      ..write(obj.definition)
      ..writeByte(6)
      ..write(obj.elementDefinition)
      ..writeByte(7)
      ..write(obj.code)
      ..writeByte(8)
      ..write(obj.prefix)
      ..writeByte(9)
      ..write(obj.elementPrefix)
      ..writeByte(10)
      ..write(obj.text)
      ..writeByte(11)
      ..write(obj.elementText)
      ..writeByte(12)
      ..write(obj.type)
      ..writeByte(13)
      ..write(obj.elementType)
      ..writeByte(14)
      ..write(obj.enableWhen)
      ..writeByte(15)
      ..write(obj.enableBehavior)
      ..writeByte(16)
      ..write(obj.elementEnableBehavior)
      ..writeByte(17)
      ..write(obj.required)
      ..writeByte(18)
      ..write(obj.elementRequired)
      ..writeByte(19)
      ..write(obj.repeats)
      ..writeByte(20)
      ..write(obj.elementRepeats)
      ..writeByte(21)
      ..write(obj.readOnly)
      ..writeByte(22)
      ..write(obj.elementReadOnly)
      ..writeByte(23)
      ..write(obj.maxLength)
      ..writeByte(24)
      ..write(obj.elementMaxLength)
      ..writeByte(25)
      ..write(obj.answerValueSet)
      ..writeByte(26)
      ..write(obj.answerOption)
      ..writeByte(27)
      ..write(obj.initial)
      ..writeByte(28)
      ..write(obj.item);
  }
}

class Questionnaire_EnableWhenAdapter
    extends TypeAdapter<Questionnaire_EnableWhen> {
  @override
  final typeId = 501;

  @override
  Questionnaire_EnableWhen read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_EnableWhen(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      question: fields[3] as String,
      elementQuestion: fields[4] as Element,
      operator: fields[5] as String,
      elementOperator: fields[6] as Element,
      answerBoolean: fields[7] as bool,
      elementAnswerBoolean: fields[8] as Element,
      elementAnswerDecimal: fields[10] as Element,
      elementAnswerInteger: fields[12] as Element,
      answerDate: fields[13] as String,
      elementAnswerDate: fields[14] as Element,
      answerDateTime: fields[15] as String,
      elementAnswerDateTime: fields[16] as Element,
      answerTime: fields[17] as String,
      elementAnswerTime: fields[18] as Element,
      answerString: fields[19] as String,
      elementAnswerString: fields[20] as Element,
      answerCoding: fields[21] as Coding,
      answerQuantity: fields[22] as Quantity,
      answerReference: fields[23] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_EnableWhen obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.question)
      ..writeByte(4)
      ..write(obj.elementQuestion)
      ..writeByte(5)
      ..write(obj.operator)
      ..writeByte(6)
      ..write(obj.elementOperator)
      ..writeByte(7)
      ..write(obj.answerBoolean)
      ..writeByte(8)
      ..write(obj.elementAnswerBoolean)
      ..writeByte(10)
      ..write(obj.elementAnswerDecimal)
      ..writeByte(12)
      ..write(obj.elementAnswerInteger)
      ..writeByte(13)
      ..write(obj.answerDate)
      ..writeByte(14)
      ..write(obj.elementAnswerDate)
      ..writeByte(15)
      ..write(obj.answerDateTime)
      ..writeByte(16)
      ..write(obj.elementAnswerDateTime)
      ..writeByte(17)
      ..write(obj.answerTime)
      ..writeByte(18)
      ..write(obj.elementAnswerTime)
      ..writeByte(19)
      ..write(obj.answerString)
      ..writeByte(20)
      ..write(obj.elementAnswerString)
      ..writeByte(21)
      ..write(obj.answerCoding)
      ..writeByte(22)
      ..write(obj.answerQuantity)
      ..writeByte(23)
      ..write(obj.answerReference);
  }
}

class Questionnaire_AnswerOptionAdapter
    extends TypeAdapter<Questionnaire_AnswerOption> {
  @override
  final typeId = 502;

  @override
  Questionnaire_AnswerOption read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_AnswerOption(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      elementValueInteger: fields[4] as Element,
      valueDate: fields[5] as String,
      elementValueDate: fields[6] as Element,
      valueTime: fields[7] as String,
      elementValueTime: fields[8] as Element,
      valueString: fields[9] as String,
      elementValueString: fields[10] as Element,
      valueCoding: fields[11] as Coding,
      valueReference: fields[12] as Reference,
      initialSelected: fields[13] as bool,
      elementInitialSelected: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_AnswerOption obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(4)
      ..write(obj.elementValueInteger)
      ..writeByte(5)
      ..write(obj.valueDate)
      ..writeByte(6)
      ..write(obj.elementValueDate)
      ..writeByte(7)
      ..write(obj.valueTime)
      ..writeByte(8)
      ..write(obj.elementValueTime)
      ..writeByte(9)
      ..write(obj.valueString)
      ..writeByte(10)
      ..write(obj.elementValueString)
      ..writeByte(11)
      ..write(obj.valueCoding)
      ..writeByte(12)
      ..write(obj.valueReference)
      ..writeByte(13)
      ..write(obj.initialSelected)
      ..writeByte(14)
      ..write(obj.elementInitialSelected);
  }
}

class Questionnaire_InitialAdapter extends TypeAdapter<Questionnaire_Initial> {
  @override
  final typeId = 503;

  @override
  Questionnaire_Initial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questionnaire_Initial(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueBoolean: fields[3] as bool,
      elementValueBoolean: fields[4] as Element,
      elementValueDecimal: fields[6] as Element,
      elementValueInteger: fields[8] as Element,
      valueDate: fields[9] as String,
      elementValueDate: fields[10] as Element,
      valueDateTime: fields[11] as String,
      elementValueDateTime: fields[12] as Element,
      valueTime: fields[13] as String,
      elementValueTime: fields[14] as Element,
      valueString: fields[15] as String,
      elementValueString: fields[16] as Element,
      valueUri: fields[17] as String,
      elementValueUri: fields[18] as Element,
      valueAttachment: fields[19] as Attachment,
      valueCoding: fields[20] as Coding,
      valueQuantity: fields[21] as Quantity,
      valueReference: fields[22] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Questionnaire_Initial obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.valueBoolean)
      ..writeByte(4)
      ..write(obj.elementValueBoolean)
      ..writeByte(6)
      ..write(obj.elementValueDecimal)
      ..writeByte(8)
      ..write(obj.elementValueInteger)
      ..writeByte(9)
      ..write(obj.valueDate)
      ..writeByte(10)
      ..write(obj.elementValueDate)
      ..writeByte(11)
      ..write(obj.valueDateTime)
      ..writeByte(12)
      ..write(obj.elementValueDateTime)
      ..writeByte(13)
      ..write(obj.valueTime)
      ..writeByte(14)
      ..write(obj.elementValueTime)
      ..writeByte(15)
      ..write(obj.valueString)
      ..writeByte(16)
      ..write(obj.elementValueString)
      ..writeByte(17)
      ..write(obj.valueUri)
      ..writeByte(18)
      ..write(obj.elementValueUri)
      ..writeByte(19)
      ..write(obj.valueAttachment)
      ..writeByte(20)
      ..write(obj.valueCoding)
      ..writeByte(21)
      ..write(obj.valueQuantity)
      ..writeByte(22)
      ..write(obj.valueReference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return Questionnaire(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    derivedFrom:
        (json['derivedFrom'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    subjectType:
        (json['subjectType'] as List)?.map((e) => e as String)?.toList(),
    elementSubjectType: (json['elementSubjectType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    approvalDate: json['approvalDate'] as String,
    elementApprovalDate: json['elementApprovalDate'] == null
        ? null
        : Element.fromJson(json['elementApprovalDate'] as Map<String, dynamic>),
    lastReviewDate: json['lastReviewDate'] as String,
    elementLastReviewDate: json['elementLastReviewDate'] == null
        ? null
        : Element.fromJson(
            json['elementLastReviewDate'] as Map<String, dynamic>),
    effectivePeriod: json['effectivePeriod'] == null
        ? null
        : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionnaireToJson(Questionnaire instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'derivedFrom': instance.derivedFrom,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'subjectType': instance.subjectType,
      'elementSubjectType':
          instance.elementSubjectType?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

Questionnaire_Item _$Questionnaire_ItemFromJson(Map<String, dynamic> json) {
  return Questionnaire_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    linkId: json['linkId'] as String,
    elementLinkId: json['elementLinkId'] == null
        ? null
        : Element.fromJson(json['elementLinkId'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prefix: json['prefix'] as String,
    elementPrefix: json['elementPrefix'] == null
        ? null
        : Element.fromJson(json['elementPrefix'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    enableWhen: (json['enableWhen'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_EnableWhen.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    enableBehavior: json['enableBehavior'] as String,
    elementEnableBehavior: json['elementEnableBehavior'] == null
        ? null
        : Element.fromJson(
            json['elementEnableBehavior'] as Map<String, dynamic>),
    required: json['required'] as bool,
    elementRequired: json['elementRequired'] == null
        ? null
        : Element.fromJson(json['elementRequired'] as Map<String, dynamic>),
    repeats: json['repeats'] as bool,
    elementRepeats: json['elementRepeats'] == null
        ? null
        : Element.fromJson(json['elementRepeats'] as Map<String, dynamic>),
    readOnly: json['readOnly'] as bool,
    elementReadOnly: json['elementReadOnly'] == null
        ? null
        : Element.fromJson(json['elementReadOnly'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    elementMaxLength: json['elementMaxLength'] == null
        ? null
        : Element.fromJson(json['elementMaxLength'] as Map<String, dynamic>),
    answerValueSet: json['answerValueSet'] as String,
    answerOption: (json['answerOption'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_AnswerOption.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    initial: (json['initial'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Initial.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : Questionnaire_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Questionnaire_ItemToJson(Questionnaire_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'linkId': instance.linkId,
      'elementLinkId': instance.elementLinkId?.toJson(),
      'definition': instance.definition,
      'elementDefinition': instance.elementDefinition?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'prefix': instance.prefix,
      'elementPrefix': instance.elementPrefix?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'enableWhen': instance.enableWhen?.map((e) => e?.toJson())?.toList(),
      'enableBehavior': instance.enableBehavior,
      'elementEnableBehavior': instance.elementEnableBehavior?.toJson(),
      'required': instance.required,
      'elementRequired': instance.elementRequired?.toJson(),
      'repeats': instance.repeats,
      'elementRepeats': instance.elementRepeats?.toJson(),
      'readOnly': instance.readOnly,
      'elementReadOnly': instance.elementReadOnly?.toJson(),
      'maxLength': instance.maxLength,
      'elementMaxLength': instance.elementMaxLength?.toJson(),
      'answerValueSet': instance.answerValueSet,
      'answerOption': instance.answerOption?.map((e) => e?.toJson())?.toList(),
      'initial': instance.initial?.map((e) => e?.toJson())?.toList(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

Questionnaire_EnableWhen _$Questionnaire_EnableWhenFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_EnableWhen(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    question: json['question'] as String,
    elementQuestion: json['elementQuestion'] == null
        ? null
        : Element.fromJson(json['elementQuestion'] as Map<String, dynamic>),
    operator: json['operator'] as String,
    elementOperator: json['elementOperator'] == null
        ? null
        : Element.fromJson(json['elementOperator'] as Map<String, dynamic>),
    answerBoolean: json['answerBoolean'] as bool,
    elementAnswerBoolean: json['elementAnswerBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerBoolean'] as Map<String, dynamic>),
    answerDecimal: (json['answerDecimal'] as num)?.toDouble(),
    elementAnswerDecimal: json['elementAnswerDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerDecimal'] as Map<String, dynamic>),
    answerInteger: json['answerInteger'] as int,
    elementAnswerInteger: json['elementAnswerInteger'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerInteger'] as Map<String, dynamic>),
    answerDate: json['answerDate'] as String,
    elementAnswerDate: json['elementAnswerDate'] == null
        ? null
        : Element.fromJson(json['elementAnswerDate'] as Map<String, dynamic>),
    answerDateTime: json['answerDateTime'] as String,
    elementAnswerDateTime: json['elementAnswerDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementAnswerDateTime'] as Map<String, dynamic>),
    answerTime: json['answerTime'] as String,
    elementAnswerTime: json['elementAnswerTime'] == null
        ? null
        : Element.fromJson(json['elementAnswerTime'] as Map<String, dynamic>),
    answerString: json['answerString'] as String,
    elementAnswerString: json['elementAnswerString'] == null
        ? null
        : Element.fromJson(json['elementAnswerString'] as Map<String, dynamic>),
    answerCoding: json['answerCoding'] == null
        ? null
        : Coding.fromJson(json['answerCoding'] as Map<String, dynamic>),
    answerQuantity: json['answerQuantity'] == null
        ? null
        : Quantity.fromJson(json['answerQuantity'] as Map<String, dynamic>),
    answerReference: json['answerReference'] == null
        ? null
        : Reference.fromJson(json['answerReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_EnableWhenToJson(
        Questionnaire_EnableWhen instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'question': instance.question,
      'elementQuestion': instance.elementQuestion?.toJson(),
      'operator': instance.operator,
      'elementOperator': instance.elementOperator?.toJson(),
      'answerBoolean': instance.answerBoolean,
      'elementAnswerBoolean': instance.elementAnswerBoolean?.toJson(),
      'answerDecimal': instance.answerDecimal,
      'elementAnswerDecimal': instance.elementAnswerDecimal?.toJson(),
      'answerInteger': instance.answerInteger,
      'elementAnswerInteger': instance.elementAnswerInteger?.toJson(),
      'answerDate': instance.answerDate,
      'elementAnswerDate': instance.elementAnswerDate?.toJson(),
      'answerDateTime': instance.answerDateTime,
      'elementAnswerDateTime': instance.elementAnswerDateTime?.toJson(),
      'answerTime': instance.answerTime,
      'elementAnswerTime': instance.elementAnswerTime?.toJson(),
      'answerString': instance.answerString,
      'elementAnswerString': instance.elementAnswerString?.toJson(),
      'answerCoding': instance.answerCoding?.toJson(),
      'answerQuantity': instance.answerQuantity?.toJson(),
      'answerReference': instance.answerReference?.toJson(),
    };

Questionnaire_AnswerOption _$Questionnaire_AnswerOptionFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_AnswerOption(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    initialSelected: json['initialSelected'] as bool,
    elementInitialSelected: json['elementInitialSelected'] == null
        ? null
        : Element.fromJson(
            json['elementInitialSelected'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_AnswerOptionToJson(
        Questionnaire_AnswerOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'initialSelected': instance.initialSelected,
      'elementInitialSelected': instance.elementInitialSelected?.toJson(),
    };

Questionnaire_Initial _$Questionnaire_InitialFromJson(
    Map<String, dynamic> json) {
  return Questionnaire_Initial(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Questionnaire_InitialToJson(
        Questionnaire_Initial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
    };
