
part 'questionnaireResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse {
  
  // This is a QuestionnaireResponse 
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

  // A business identifier assigned to a particular completed (or partially
  //  completed) questionnaire.
  Identifier identifier;

  // The order, proposal or plan that is fulfilled in whole or in part by this
  //  QuestionnaireResponse.  For example, a ServiceRequest seeking an intake
  //  assessment or a decision support recommendation to assess for post-partum depression.
  List<Reference basedOn;

  // A procedure or observation that this questionnaire was performed as part of
  //  the execution of.  For example, the surgery a checklist was executed as part
  //  of.
  List<Reference partOf;

  // The Questionnaire that defines and organizes the questions for which
  //  answers are being provided.
  String questionnaire;

  // The position of the questionnaire response within its overall
  //  lifecycle.Enum enum; // in-progresscompletedamendedentered-in-errorstopped status;

  // Extensions for status
  Element _status;

  // The subject of the questionnaire response.  This could be a patient,
  //  organization, practitioner, device, etc.  This is who/what the answers apply
  //  to, but is not necessarily the source of information.
  Reference subject;

  // The Encounter during which this questionnaire response was created or to
  //  which the creation of this record is tightly associated.
  Reference encounter;

  // The date and/or time that this set of answers were last changed.
  StringTime authored;

  // Extensions for authored
  Element _authored;

  // Person who received the answers to the questions in the
  //  QuestionnaireResponse and recorded them in the system.
  Reference author;

  // The person who answered the questions about the subject.
  Reference source;

  // A group or question item from the original questionnaire for which answers
  //  are provided.
  List<QuestionnaireResponse_Item item
QuestionnaireResponse(
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
this.basedOn,
this.partOf,
this.questionnaire,
this.status,
this._status,
this.subject,
this.encounter,
this.authored,
this._authored,
this.author,
this.source,
this.item});

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Answer {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. string valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The answer (or one of the answers) provided by the respondent to the
  //  question. string valueUri;

  // Extensions for valueUri
  Element _valueUri;

  // The answer (or one of the answers) provided by the respondent to the
  //  question.
  Attachment valueAttachment;

  // The answer (or one of the answers) provided by the respondent to the
  //  question.
  Coding valueCoding;

  // The answer (or one of the answers) provided by the respondent to the
  //  question.
  Quantity valueQuantity;

  // The answer (or one of the answers) provided by the respondent to the
  //  question.
  Reference valueReference;

  // Nested groups and/or questions found within this particular answer.
  List<QuestionnaireResponse_Item item
QuestionnaireResponse_Answer(
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
this.item});

  factory QuestionnaireResponse_Answer.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_AnswerFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_AnswerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Item {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The item from the Questionnaire that corresponds to this item in the
  //  QuestionnaireResponse resource.
  String linkId;

  // Extensions for linkId
  Element _linkId;

  // A reference to an [[[ElementDefinition]]] that provides the details for the
  //  item.
  String definition;

  // Extensions for definition
  Element _definition;

  // Text that is displayed above the contents of the group or as the text of
  //  the question being answered.
  String text;

  // Extensions for text
  Element _text;

  // The respondent's answer(s) to the question.
  List<QuestionnaireResponse_Answer answer;

  // Questions or sub-groups nested beneath a question or group.
  List<QuestionnaireResponse_Item item
QuestionnaireResponse_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.linkId,
this._linkId,
this.definition,
this._definition,
this.text,
this._text,
this.answer,
this.item});

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_AnswerOption {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A potential answer that's allowed as the answer to this question. number
  //  valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // A potential answer that's allowed as the answer to this question. string
  //  valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // A potential answer that's allowed as the answer to this question. string
  //  valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // A potential answer that's allowed as the answer to this question. string
  //  valueString;

  // Extensions for valueString
  Element _valueString;

  // A potential answer that's allowed as the answer to this question.
  Coding valueCoding;

  // A potential answer that's allowed as the answer to this question.
  Reference valueReference;

  // Indicates whether the answer value is selected when the list of possible
  //  answers is initially shown.
  bool initialSelected;

  // Extensions for initialSelected
  Element _initialSelected
Questionnaire_AnswerOption(
      {this.id,
this.extension,
this.modifierExtension,
this.valueInteger,
this._valueInteger,
this.valueDate,
this._valueDate,
this.valueTime,
this._valueTime,
this.valueString,
this._valueString,
this.valueCoding,
this.valueReference,
this.initialSelected,
this._initialSelected});

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) => _$Questionnaire_AnswerOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_AnswerOptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_EnableWhen {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The linkId for the question whose answer (or lack of answer) governs
  //  whether this item is enabled.
  String question;

  // Extensions for question
  Element _question;

  // Specifies the criteria by which the question is enabled.Enum enum; //
  //  exists=!=><>=<= operator;

  // Extensions for operator
  Element _operator;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. boolean answerBoolean;

  // Extensions for answerBoolean
  Element _answerBoolean;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. number answerDecimal;

  // Extensions for answerDecimal
  Element _answerDecimal;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. number answerInteger;

  // Extensions for answerInteger
  Element _answerInteger;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. string answerDate;

  // Extensions for answerDate
  Element _answerDate;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. string answerDateTime;

  // Extensions for answerDateTime
  Element _answerDateTime;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. string answerTime;

  // Extensions for answerTime
  Element _answerTime;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled. string answerString;

  // Extensions for answerString
  Element _answerString;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled.
  Coding answerCoding;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled.
  Quantity answerQuantity;

  // A value that the referenced question is tested using the specified operator
  //  in order for the item to be enabled.
  Reference answerReference
Questionnaire_EnableWhen(
      {this.id,
this.extension,
this.modifierExtension,
this.question,
this._question,
this.operator,
this._operator,
this.answerBoolean,
this._answerBoolean,
this.answerDecimal,
this._answerDecimal,
this.answerInteger,
this._answerInteger,
this.answerDate,
this._answerDate,
this.answerDateTime,
this._answerDateTime,
this.answerTime,
this._answerTime,
this.answerString,
this._answerString,
this.answerCoding,
this.answerQuantity,
this.answerReference});

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) => _$Questionnaire_EnableWhenFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_EnableWhenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Initial {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The actual value to for an initial answer. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The actual value to for an initial answer. number valueDecimal;

  // Extensions for valueDecimal
  Element _valueDecimal;

  // The actual value to for an initial answer. number valueInteger;

  // Extensions for valueInteger
  Element _valueInteger;

  // The actual value to for an initial answer. string valueDate;

  // Extensions for valueDate
  Element _valueDate;

  // The actual value to for an initial answer. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The actual value to for an initial answer. string valueTime;

  // Extensions for valueTime
  Element _valueTime;

  // The actual value to for an initial answer. string valueString;

  // Extensions for valueString
  Element _valueString;

  // The actual value to for an initial answer. string valueUri;

  // Extensions for valueUri
  Element _valueUri;

  // The actual value to for an initial answer.
  Attachment valueAttachment;

  // The actual value to for an initial answer.
  Coding valueCoding;

  // The actual value to for an initial answer.
  Quantity valueQuantity;

  // The actual value to for an initial answer.
  Reference valueReference
Questionnaire_Initial(
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
this.valueReference});

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) => _$Questionnaire_InitialFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_InitialToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Questionnaire_Item {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // An identifier that is unique within the Questionnaire allowing linkage to
  //  the equivalent item in a QuestionnaireResponse resource.
  String linkId;

  // Extensions for linkId
  Element _linkId;

  // This element is a URI that refers to an [[[ElementDefinition]]] that
  //  provides information about this item, including information that might
  //  otherwise be included in the instance of the Questionnaire resource. A detailed
  //  description of the construction of the URI is shown in Comments, below. If this
  //  element is present then the following element values MAY be derived from the
  //  Element Definition if the corresponding elements of this Questionnaire resource
  //  instance have no value:

* code (ElementDefinition.code) 
* type (ElementDefinition.type) 
* required (ElementDefinition.min) 
* repeats (ElementDefinition.max) 
* maxLength (ElementDefinition.maxLength) 
* answerValueSet (ElementDefinition.binding)
* options (ElementDefinition.binding).
  String definition;

  // Extensions for definition
  Element _definition;

  // A terminology code that corresponds to this group or question (e.g. a code
  //  from LOINC, which defines many questions and answers).
  List<Coding code;

  // A short label for a particular group, question or set of display text
  //  within the questionnaire used for reference by the individual completing the
  //  questionnaire.
  String prefix;

  // Extensions for prefix
  Element _prefix;

  // The name of a section, the text of a question or text content for a display
  //  item.
  String text;

  // Extensions for text
  Element _text;

  // The type of questionnaire item this is - whether text for display, a
  //  grouping of other items or a particular type of data to be captured (string,
  //  integer, coded choice, etc.).Enum enum; //
  //  groupdisplaybooleandecimalintegerdatedateTimetimestringtexturlchoiceopen-choiceattachmentreferencequantity type;

  // Extensions for type
  Element _type;

  // A constraint indicating that this item should only be enabled
  //  (displayed/allow answers to be captured) when the specified condition is true.
  List<Questionnaire_EnableWhen enableWhen;

  // Controls how multiple enableWhen values are interpreted -  whether all or
  //  any must be true.Enum enum; // allany enableBehavior;

  // Extensions for enableBehavior
  Element _enableBehavior;

  // An indication, if true, that the item must be present in a "completed"
  //  QuestionnaireResponse.  If false, the item may be skipped when answering the
  //  questionnaire.
  bool required;

  // Extensions for required
  Element _required;

  // An indication, if true, that the item may occur multiple times in the
  //  response, collecting multiple answers for questions or multiple sets of answers
  //  for groups.
  bool repeats;

  // Extensions for repeats
  Element _repeats;

  // An indication, when true, that the value cannot be changed by a human
  //  respondent to the Questionnaire.
  bool readOnly;

  // Extensions for readOnly
  Element _readOnly;

  // The maximum number of characters that are permitted in the answer to be
  //  considered a "valid" QuestionnaireResponse.
  int maxLength;

  // Extensions for maxLength
  Element _maxLength;

  // A reference to a value set containing a list of codes representing
  //  permitted answers for a "choice" or "open-choice" question.
  String answerValueSet;

  // One of the permitted answers for a "choice" or "open-choice" question.
  List<Questionnaire_AnswerOption answerOption;

  // One or more values that should be pre-populated in the answer when
  //  initially rendering the questionnaire for user input.
  List<Questionnaire_Initial initial;

  // Text, questions and other groups to be nested beneath a question or group.
  List<Questionnaire_Item item
Questionnaire_Item(
      {this.id,
this.extension,
this.modifierExtension,
this.linkId,
this._linkId,
this.definition,
this._definition,
this.code,
this.prefix,
this._prefix,
this.text,
this._text,
this.type,
this._type,
this.enableWhen,
this.enableBehavior,
this._enableBehavior,
this.required,
this._required,
this.repeats,
this._repeats,
this.readOnly,
this._readOnly,
this.maxLength,
this._maxLength,
this.answerValueSet,
this.answerOption,
this.initial,
this.item});

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) => _$Questionnaire_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Questionnaire_ItemToJson(this);
}
