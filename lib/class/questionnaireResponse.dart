import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'questionnaireResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse {

//  This is a QuestionnaireResponse resource
String resourceType;

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
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

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
List<ResourceList> contained;

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

//  A business identifier assigned to a particular completed (or partially
// completed) questionnaire.
Identifier identifier;

//  The order, proposal or plan that is fulfilled in whole or in part by
// this QuestionnaireResponse.  For example, a ServiceRequest seeking an
// intake assessment or a decision support recommendation to assess for
// post-partum depression.
List<Reference> basedOn;

//  A procedure or observation that this questionnaire was performed as
// part of the execution of.  For example, the surgery a checklist was
// executed as part of.
List<Reference> partOf;

//  The Questionnaire that defines and organizes the questions for which
// answers are being provided.
String questionnaire;

//  The position of the questionnaire response within its overall
// lifecycle.
String status; // <code> enum: in-progress/completed/amended/entered-in-error/stopped;

//  Extensions for status
Element element_status;

//  The subject of the questionnaire response.  This could be a patient,
// organization, practitioner, device, etc.  This is who/what the answers
// apply to, but is not necessarily the source of information.
Reference subject;

//  The Encounter during which this questionnaire response was created or
// to which the creation of this record is tightly associated.
Reference encounter;

//  The date and/or time that this set of answers were last changed.
DateTime authored;

//  Extensions for authored
Element element_authored;

//  Person who received the answers to the questions in the
// QuestionnaireResponse and recorded them in the system.
Reference author;

//  The person who answered the questions about the subject.
Reference source;

//  A group or question item from the original questionnaire for which
// answers are provided.
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,
    this.status,
    this.element_status,
    this.subject,
    this.encounter,
    this.authored,
    this.element_authored,
    this.author,
    this.source,
    this.item
    });

  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Item {

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

//  The item from the Questionnaire that corresponds to this item in the
// QuestionnaireResponse resource.
String linkId;

//  Extensions for linkId
Element element_linkId;

//  A reference to an [[[ElementDefinition]]] that provides the details
// for the item.
String definition;

//  Extensions for definition
Element element_definition;

//  Text that is displayed above the contents of the group or as the text
// of the question being answered.
String text;

//  Extensions for text
Element element_text;

//  The respondent's answer(s) to the question.
List<QuestionnaireResponse_Answer> answer;

//  Questions or sub-groups nested beneath a question or group.
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse_Item(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.linkId,
    this.element_linkId,
    this.definition,
    this.element_definition,
    this.text,
    this.element_text,
    this.answer,
    this.item
    });

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionnaireResponse_Answer {

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

//  The answer (or one of the answers) provided by the respondent to the
// question.
bool valueBoolean; //  pattern: ^true|false$

//  Extensions for valueBoolean
Element element_valueBoolean;

//  The answer (or one of the answers) provided by the respondent to the
// question.
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

//  Extensions for valueDecimal
Element element_valueDecimal;

//  The answer (or one of the answers) provided by the respondent to the
// question.
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

//  Extensions for valueInteger
Element element_valueInteger;

//  The answer (or one of the answers) provided by the respondent to the
// question.
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

//  Extensions for valueDate
Element element_valueDate;

//  The answer (or one of the answers) provided by the respondent to the
// question.
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

//  Extensions for valueDateTime
Element element_valueDateTime;

//  The answer (or one of the answers) provided by the respondent to the
// question.
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

//  Extensions for valueTime
Element element_valueTime;

//  The answer (or one of the answers) provided by the respondent to the
// question.
String valueString; //  pattern: ^[ \r\n\t\S]+$

//  Extensions for valueString
Element element_valueString;

//  The answer (or one of the answers) provided by the respondent to the
// question.
String valueUri; //  pattern: ^\S*$

//  Extensions for valueUri
Element element_valueUri;

//  The answer (or one of the answers) provided by the respondent to the
// question.
Attachment valueAttachment;

//  The answer (or one of the answers) provided by the respondent to the
// question.
Coding valueCoding;

//  The answer (or one of the answers) provided by the respondent to the
// question.
Quantity valueQuantity;

//  The answer (or one of the answers) provided by the respondent to the
// question.
Reference valueReference;

//  Nested groups and/or questions found within this particular answer.
List<QuestionnaireResponse_Item> item;

QuestionnaireResponse_Answer(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.valueBoolean,
    this.element_valueBoolean,
    this.valueDecimal,
    this.element_valueDecimal,
    this.valueInteger,
    this.element_valueInteger,
    this.valueDate,
    this.element_valueDate,
    this.valueDateTime,
    this.element_valueDateTime,
    this.valueTime,
    this.element_valueTime,
    this.valueString,
    this.element_valueString,
    this.valueUri,
    this.element_valueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    this.item
    });

  factory QuestionnaireResponse_Answer.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponse_AnswerFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionnaireResponse_AnswerToJson(this);
}

