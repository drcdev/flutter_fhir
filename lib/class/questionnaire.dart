import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'questionnaire.g.dart';

@JsonSerializable(explicitToJson: true)
class Questionnaire {

  //  This is a Questionnaire resource
  final String resourceType= 'Questionnaire';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  An absolute URI that is used to identify this questionnaire when it is
  // referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this questionnaire is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // questionnaire is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  A formal identifier that is used to identify this questionnaire when
  // it is represented in other formats, or referenced in a specification,
  // model, design or an instance.
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the
  // questionnaire when it is referenced in a specification, model, design
  // or instance. This is an arbitrary value managed by the questionnaire
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the questionnaire. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  A short, descriptive, user-friendly title for the questionnaire.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  The URL of a Questionnaire that this Questionnaire is based on.
  List<String> derivedFrom;

  //  The status of this questionnaire. Enables tracking the life-cycle of
  // the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this questionnaire is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The types of subjects that can be the subject of responses created for
  // the questionnaire.
  List<String> subjectType;

  //  Extensions for subjectType
  List<Element> elementSubjectType;

  //  The date  (and optionally time) when the questionnaire was published.
  // The date must change when the business version changes and it must
  // change if the status code changes. In addition, it should change when
  // the substantive content of the questionnaire changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the
  // questionnaire.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the questionnaire from a
  // consumer's perspective.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate questionnaire instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the questionnaire is intended to
  // be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this questionnaire is needed and why it has been
  // designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  A copyright statement relating to the questionnaire and/or its
  // contents. Copyright statements are generally legal restrictions on the
  // use and publishing of the questionnaire.
  String copyright;

  //  Extensions for copyright
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  String approvalDate;

  //  Extensions for approvalDate
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  String lastReviewDate;

  //  Extensions for lastReviewDate
  Element elementLastReviewDate;

  //  The period during which the questionnaire content was or is planned to
  // be in active use.
  Period effectivePeriod;

  //  An identifier for this question or group of questions in a particular
  // terminology such as LOINC.
  List<Coding> code;

  //  A particular question, question grouping or display text that is part
  // of the questionnaire.
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
class Questionnaire_Item {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  An identifier that is unique within the Questionnaire allowing linkage
  // to the equivalent item in a QuestionnaireResponse resource.
  String linkId;

  //  Extensions for linkId
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
  String definition;

  //  Extensions for definition
  Element elementDefinition;

  //  A terminology code that corresponds to this group or question (e.g. a
  // code from LOINC, which defines many questions and answers).
  List<Coding> code;

  //  A short label for a particular group, question or set of display text
  // within the questionnaire used for reference by the individual
  // completing the questionnaire.
  String prefix;

  //  Extensions for prefix
  Element elementPrefix;

  //  The name of a section, the text of a question or text content for a
  // display item.
  String text;

  //  Extensions for text
  Element elementText;

  //  The type of questionnaire item this is - whether text for display, a
  // grouping of other items or a particular type of data to be captured
  // (string, integer, coded choice, etc.).
  String type; // <code> enum: group/display/boolean/decimal/integer/date/dateTime/time/string/text/url/choice/open-choice/attachment/reference/quantity;

  //  Extensions for type
  Element elementType;

  //  A constraint indicating that this item should only be enabled
  // (displayed/allow answers to be captured) when the specified condition
  // is true.
  List<Questionnaire_EnableWhen> enableWhen;

  //  Controls how multiple enableWhen values are interpreted -  whether all
  // or any must be true.
  String enableBehavior; // <code> enum: all/any;

  //  Extensions for enableBehavior
  Element elementEnableBehavior;

  //  An indication, if true, that the item must be present in a "completed"
  // QuestionnaireResponse.  If false, the item may be skipped when
  // answering the questionnaire.
  bool required;

  //  Extensions for required
  Element elementRequired;

  //  An indication, if true, that the item may occur multiple times in the
  // response, collecting multiple answers for questions or multiple sets of
  // answers for groups.
  bool repeats;

  //  Extensions for repeats
  Element elementRepeats;

  //  An indication, when true, that the value cannot be changed by a human
  // respondent to the Questionnaire.
  bool readOnly;

  //  Extensions for readOnly
  Element elementReadOnly;

  //  The maximum number of characters that are permitted in the answer to
  // be considered a "valid" QuestionnaireResponse.
  int maxLength;

  //  Extensions for maxLength
  Element elementMaxLength;

  //  A reference to a value set containing a list of codes representing
  // permitted answers for a "choice" or "open-choice" question.
  String answerValueSet;

  //  One of the permitted answers for a "choice" or "open-choice" question.
  List<Questionnaire_AnswerOption> answerOption;

  //  One or more values that should be pre-populated in the answer when
  // initially rendering the questionnaire for user input.
  List<Questionnaire_Initial> initial;

  //  Text, questions and other groups to be nested beneath a question or
  // group.
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
class Questionnaire_EnableWhen {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The linkId for the question whose answer (or lack of answer) governs
  // whether this item is enabled.
  String question;

  //  Extensions for question
  Element elementQuestion;

  //  Specifies the criteria by which the question is enabled.
  String operator; // <code> enum: exists/=/!=/>/</>=/<=;

  //  Extensions for operator
  Element elementOperator;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  bool answerBoolean; //  pattern: ^true|false$

  //  Extensions for answerBoolean
  Element elementAnswerBoolean;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  double answerDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for answerDecimal
  Element elementAnswerDecimal;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  int answerInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for answerInteger
  Element elementAnswerInteger;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  String answerDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for answerDate
  Element elementAnswerDate;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  String answerDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for answerDateTime
  Element elementAnswerDateTime;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  String answerTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for answerTime
  Element elementAnswerTime;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  String answerString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for answerString
  Element elementAnswerString;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  Coding answerCoding;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
  Quantity answerQuantity;

  //  A value that the referenced question is tested using the specified
  // operator in order for the item to be enabled.
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
class Questionnaire_AnswerOption {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  A potential answer that's allowed as the answer to this question.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  A potential answer that's allowed as the answer to this question.
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element elementValueDate;

  //  A potential answer that's allowed as the answer to this question.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element elementValueTime;

  //  A potential answer that's allowed as the answer to this question.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  A potential answer that's allowed as the answer to this question.
  Coding valueCoding;

  //  A potential answer that's allowed as the answer to this question.
  Reference valueReference;

  //  Indicates whether the answer value is selected when the list of
  // possible answers is initially shown.
  bool initialSelected;

  //  Extensions for initialSelected
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
class Questionnaire_Initial {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The actual value to for an initial answer.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  The actual value to for an initial answer.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element elementValueDecimal;

  //  The actual value to for an initial answer.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  The actual value to for an initial answer.
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element elementValueDate;

  //  The actual value to for an initial answer.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  The actual value to for an initial answer.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element elementValueTime;

  //  The actual value to for an initial answer.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  The actual value to for an initial answer.
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  Element elementValueUri;

  //  The actual value to for an initial answer.
  Attachment valueAttachment;

  //  The actual value to for an initial answer.
  Coding valueCoding;

  //  The actual value to for an initial answer.
  Quantity valueQuantity;

  //  The actual value to for an initial answer.
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

