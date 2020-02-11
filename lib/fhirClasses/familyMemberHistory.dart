import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 288)
class FamilyMemberHistory {

  //  This is a FamilyMemberHistory resource
  @HiveField(0)
  final String resourceType= 'FamilyMemberHistory';

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

  //  Business identifiers assigned to this family member history by the
  // performer or other systems which remain constant as the resource is
  // updated and propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  The URL pointing to a FHIR-defined protocol, guideline, orderset or
  // other definition that is adhered to in whole or in part by this
  // FamilyMemberHistory.
  @HiveField(12)
  List<String> instantiatesCanonical;

  //  The URL pointing to an externally maintained protocol, guideline,
  // orderset or other definition that is adhered to in whole or in part by
  // this FamilyMemberHistory.
  @HiveField(13)
  List<String> instantiatesUri;

  //  Extensions for instantiatesUri
  @HiveField(14)
  List<Element> elementInstantiatesUri;

  //  A code specifying the status of the record of the family history of a
  // specific family member.
  @HiveField(15)
  String status; // <code> enum: partial/completed/entered-in-error/health-unknown;

  //  Extensions for status
  @HiveField(16)
  Element elementStatus;

  //  Describes why the family member's history is not available.
  @HiveField(17)
  CodeableConcept dataAbsentReason;

  //  The person who this history concerns.
  @HiveField(18)
  Reference patient;

  //  The date (and possibly time) when the family member history was
  // recorded or last updated.
  @HiveField(19)
  DateTime date;

  //  Extensions for date
  @HiveField(20)
  Element elementDate;

  //  This will either be a name or a description; e.g. "Aunt Susan", "my
  // cousin with the red hair".
  @HiveField(21)
  String name;

  //  Extensions for name
  @HiveField(22)
  Element elementName;

  //  The type of relationship this person has to the patient (father,
  // mother, brother etc.).
  @HiveField(23)
  CodeableConcept relationship;

  //  The birth sex of the family member.
  @HiveField(24)
  CodeableConcept sex;

  //  The actual or approximate date of birth of the relative.
  @HiveField(25)
  Period bornPeriod;

  //  The actual or approximate date of birth of the relative.
  @HiveField(26)
  String bornDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for bornDate
  @HiveField(27)
  Element elementBornDate;

  //  The actual or approximate date of birth of the relative.
  @HiveField(28)
  String bornString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for bornString
  @HiveField(29)
  Element elementBornString;

  //  The age of the relative at the time the family member history is
  // recorded.
  @HiveField(30)
  Age ageAge;

  //  The age of the relative at the time the family member history is
  // recorded.
  @HiveField(31)
  Range ageRange;

  //  The age of the relative at the time the family member history is
  // recorded.
  @HiveField(32)
  String ageString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for ageString
  @HiveField(33)
  Element elementAgeString;

  //  If true, indicates that the age value specified is an estimated value.
  @HiveField(34)
  bool estimatedAge;

  //  Extensions for estimatedAge
  @HiveField(35)
  Element elementEstimatedAge;

  //  Deceased flag or the actual or approximate age of the relative at the
  // time of death for the family member history record.
  @HiveField(36)
  bool deceasedBoolean; //  pattern: ^true|false$

  //  Extensions for deceasedBoolean
  @HiveField(37)
  Element elementDeceasedBoolean;

  //  Deceased flag or the actual or approximate age of the relative at the
  // time of death for the family member history record.
  @HiveField(38)
  Age deceasedAge;

  //  Deceased flag or the actual or approximate age of the relative at the
  // time of death for the family member history record.
  @HiveField(39)
  Range deceasedRange;

  //  Deceased flag or the actual or approximate age of the relative at the
  // time of death for the family member history record.
  @HiveField(40)
  String deceasedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for deceasedDate
  @HiveField(41)
  Element elementDeceasedDate;

  //  Deceased flag or the actual or approximate age of the relative at the
  // time of death for the family member history record.
  @HiveField(42)
  String deceasedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for deceasedString
  @HiveField(43)
  Element elementDeceasedString;

  //  Describes why the family member history occurred in coded or textual
  // form.
  @HiveField(44)
  List<CodeableConcept> reasonCode;

  //  Indicates a Condition, Observation, AllergyIntolerance, or
  // QuestionnaireResponse that justifies this family member history event.
  @HiveField(45)
  List<Reference> reasonReference;

  //  This property allows a non condition-specific note to the made about
  // the related person. Ideally, the note would be in the condition
  // property, but this is not always possible.
  @HiveField(46)
  List<Annotation> note;

  //  The significant Conditions (or condition) that the family member had.
  // This is a repeating section to allow a system to represent more than
  // one condition per resource, though there is nothing stopping multiple
  // resources - one per condition.
  @HiveField(47)
  List<FamilyMemberHistory_Condition> condition;

FamilyMemberHistory(
  this.patient,
    this.relationship,
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
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.elementInstantiatesUri,
    this.status,
    this.elementStatus,
    this.dataAbsentReason,
    this.date,
    this.elementDate,
    this.name,
    this.elementName,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.elementBornDate,
    this.bornString,
    this.elementBornString,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.elementAgeString,
    this.estimatedAge,
    this.elementEstimatedAge,
    this.deceasedBoolean,
    this.elementDeceasedBoolean,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.elementDeceasedDate,
    this.deceasedString,
    this.elementDeceasedString,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition
    });

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FamilyMemberHistory_Condition {

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

  //  The actual condition specified. Could be a coded condition (like MI or
  // Diabetes) or a less specific string like 'cancer' depending on how much
  // is known about the condition and the capabilities of the creating
  // system.
  CodeableConcept code;

  //  Indicates what happened following the condition.  If the condition
  // resulted in death, deceased date is captured on the relation.
  CodeableConcept outcome;

  //  This condition contributed to the cause of death of the related
  // person. If contributedToDeath is not populated, then it is unknown.
  bool contributedToDeath;

  //  Extensions for contributedToDeath
  Element elementContributedToDeath;

  //  Either the age of onset, range of approximate age or descriptive
  // string can be recorded.  For conditions with multiple occurrences, this
  // describes the first known occurrence.
  Age onsetAge;

  //  Either the age of onset, range of approximate age or descriptive
  // string can be recorded.  For conditions with multiple occurrences, this
  // describes the first known occurrence.
  Range onsetRange;

  //  Either the age of onset, range of approximate age or descriptive
  // string can be recorded.  For conditions with multiple occurrences, this
  // describes the first known occurrence.
  Period onsetPeriod;

  //  Either the age of onset, range of approximate age or descriptive
  // string can be recorded.  For conditions with multiple occurrences, this
  // describes the first known occurrence.
  String onsetString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for onsetString
  Element elementOnsetString;

  //  An area where general notes can be placed about this specific
  // condition.
  List<Annotation> note;

FamilyMemberHistory_Condition(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.outcome,
    this.contributedToDeath,
    this.elementContributedToDeath,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.elementOnsetString,
    this.note
    });

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) => _$FamilyMemberHistory_ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyMemberHistory_ConditionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FamilyMemberHistoryAdapter extends TypeAdapter<FamilyMemberHistory> {
  @override
  final typeId = 288;

  @override
  FamilyMemberHistory read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FamilyMemberHistory(
      fields[18] as Reference,
      fields[23] as CodeableConcept,
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      instantiatesCanonical: (fields[12] as List)?.cast<String>(),
      instantiatesUri: (fields[13] as List)?.cast<String>(),
      elementInstantiatesUri: (fields[14] as List)?.cast<Element>(),
      status: fields[15] as String,
      elementStatus: fields[16] as Element,
      dataAbsentReason: fields[17] as CodeableConcept,
      date: fields[19] as DateTime,
      elementDate: fields[20] as Element,
      name: fields[21] as String,
      elementName: fields[22] as Element,
      sex: fields[24] as CodeableConcept,
      bornPeriod: fields[25] as Period,
      bornDate: fields[26] as String,
      elementBornDate: fields[27] as Element,
      bornString: fields[28] as String,
      elementBornString: fields[29] as Element,
      ageAge: fields[30] as Age,
      ageRange: fields[31] as Range,
      ageString: fields[32] as String,
      elementAgeString: fields[33] as Element,
      estimatedAge: fields[34] as bool,
      elementEstimatedAge: fields[35] as Element,
      deceasedBoolean: fields[36] as bool,
      elementDeceasedBoolean: fields[37] as Element,
      deceasedAge: fields[38] as Age,
      deceasedRange: fields[39] as Range,
      deceasedDate: fields[40] as String,
      elementDeceasedDate: fields[41] as Element,
      deceasedString: fields[42] as String,
      elementDeceasedString: fields[43] as Element,
      reasonCode: (fields[44] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[45] as List)?.cast<Reference>(),
      note: (fields[46] as List)?.cast<Annotation>(),
      condition: (fields[47] as List)?.cast<FamilyMemberHistory_Condition>(),
    );
  }

  @override
  void write(BinaryWriter writer, FamilyMemberHistory obj) {
    writer
      ..writeByte(48)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.instantiatesCanonical)
      ..writeByte(13)
      ..write(obj.instantiatesUri)
      ..writeByte(14)
      ..write(obj.elementInstantiatesUri)
      ..writeByte(15)
      ..write(obj.status)
      ..writeByte(16)
      ..write(obj.elementStatus)
      ..writeByte(17)
      ..write(obj.dataAbsentReason)
      ..writeByte(18)
      ..write(obj.patient)
      ..writeByte(19)
      ..write(obj.date)
      ..writeByte(20)
      ..write(obj.elementDate)
      ..writeByte(21)
      ..write(obj.name)
      ..writeByte(22)
      ..write(obj.elementName)
      ..writeByte(23)
      ..write(obj.relationship)
      ..writeByte(24)
      ..write(obj.sex)
      ..writeByte(25)
      ..write(obj.bornPeriod)
      ..writeByte(26)
      ..write(obj.bornDate)
      ..writeByte(27)
      ..write(obj.elementBornDate)
      ..writeByte(28)
      ..write(obj.bornString)
      ..writeByte(29)
      ..write(obj.elementBornString)
      ..writeByte(30)
      ..write(obj.ageAge)
      ..writeByte(31)
      ..write(obj.ageRange)
      ..writeByte(32)
      ..write(obj.ageString)
      ..writeByte(33)
      ..write(obj.elementAgeString)
      ..writeByte(34)
      ..write(obj.estimatedAge)
      ..writeByte(35)
      ..write(obj.elementEstimatedAge)
      ..writeByte(36)
      ..write(obj.deceasedBoolean)
      ..writeByte(37)
      ..write(obj.elementDeceasedBoolean)
      ..writeByte(38)
      ..write(obj.deceasedAge)
      ..writeByte(39)
      ..write(obj.deceasedRange)
      ..writeByte(40)
      ..write(obj.deceasedDate)
      ..writeByte(41)
      ..write(obj.elementDeceasedDate)
      ..writeByte(42)
      ..write(obj.deceasedString)
      ..writeByte(43)
      ..write(obj.elementDeceasedString)
      ..writeByte(44)
      ..write(obj.reasonCode)
      ..writeByte(45)
      ..write(obj.reasonReference)
      ..writeByte(46)
      ..write(obj.note)
      ..writeByte(47)
      ..write(obj.condition);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMemberHistory _$FamilyMemberHistoryFromJson(Map<String, dynamic> json) {
  return FamilyMemberHistory(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instantiatesCanonical: (json['instantiatesCanonical'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    instantiatesUri:
        (json['instantiatesUri'] as List)?.map((e) => e as String)?.toList(),
    elementInstantiatesUri: (json['elementInstantiatesUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    dataAbsentReason: json['dataAbsentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['dataAbsentReason'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    sex: json['sex'] == null
        ? null
        : CodeableConcept.fromJson(json['sex'] as Map<String, dynamic>),
    bornPeriod: json['bornPeriod'] == null
        ? null
        : Period.fromJson(json['bornPeriod'] as Map<String, dynamic>),
    bornDate: json['bornDate'] as String,
    elementBornDate: json['elementBornDate'] == null
        ? null
        : Element.fromJson(json['elementBornDate'] as Map<String, dynamic>),
    bornString: json['bornString'] as String,
    elementBornString: json['elementBornString'] == null
        ? null
        : Element.fromJson(json['elementBornString'] as Map<String, dynamic>),
    ageAge: json['ageAge'] == null
        ? null
        : Age.fromJson(json['ageAge'] as Map<String, dynamic>),
    ageRange: json['ageRange'] == null
        ? null
        : Range.fromJson(json['ageRange'] as Map<String, dynamic>),
    ageString: json['ageString'] as String,
    elementAgeString: json['elementAgeString'] == null
        ? null
        : Element.fromJson(json['elementAgeString'] as Map<String, dynamic>),
    estimatedAge: json['estimatedAge'] as bool,
    elementEstimatedAge: json['elementEstimatedAge'] == null
        ? null
        : Element.fromJson(json['elementEstimatedAge'] as Map<String, dynamic>),
    deceasedBoolean: json['deceasedBoolean'] as bool,
    elementDeceasedBoolean: json['elementDeceasedBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedBoolean'] as Map<String, dynamic>),
    deceasedAge: json['deceasedAge'] == null
        ? null
        : Age.fromJson(json['deceasedAge'] as Map<String, dynamic>),
    deceasedRange: json['deceasedRange'] == null
        ? null
        : Range.fromJson(json['deceasedRange'] as Map<String, dynamic>),
    deceasedDate: json['deceasedDate'] as String,
    elementDeceasedDate: json['elementDeceasedDate'] == null
        ? null
        : Element.fromJson(json['elementDeceasedDate'] as Map<String, dynamic>),
    deceasedString: json['deceasedString'] as String,
    elementDeceasedString: json['elementDeceasedString'] == null
        ? null
        : Element.fromJson(
            json['elementDeceasedString'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) => e == null
            ? null
            : FamilyMemberHistory_Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistoryToJson(
        FamilyMemberHistory instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'instantiatesCanonical': instance.instantiatesCanonical,
      'instantiatesUri': instance.instantiatesUri,
      'elementInstantiatesUri':
          instance.elementInstantiatesUri?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'dataAbsentReason': instance.dataAbsentReason?.toJson(),
      'patient': instance.patient?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'sex': instance.sex?.toJson(),
      'bornPeriod': instance.bornPeriod?.toJson(),
      'bornDate': instance.bornDate,
      'elementBornDate': instance.elementBornDate?.toJson(),
      'bornString': instance.bornString,
      'elementBornString': instance.elementBornString?.toJson(),
      'ageAge': instance.ageAge?.toJson(),
      'ageRange': instance.ageRange?.toJson(),
      'ageString': instance.ageString,
      'elementAgeString': instance.elementAgeString?.toJson(),
      'estimatedAge': instance.estimatedAge,
      'elementEstimatedAge': instance.elementEstimatedAge?.toJson(),
      'deceasedBoolean': instance.deceasedBoolean,
      'elementDeceasedBoolean': instance.elementDeceasedBoolean?.toJson(),
      'deceasedAge': instance.deceasedAge?.toJson(),
      'deceasedRange': instance.deceasedRange?.toJson(),
      'deceasedDate': instance.deceasedDate,
      'elementDeceasedDate': instance.elementDeceasedDate?.toJson(),
      'deceasedString': instance.deceasedString,
      'elementDeceasedString': instance.elementDeceasedString?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'condition': instance.condition?.map((e) => e?.toJson())?.toList(),
    };

FamilyMemberHistory_Condition _$FamilyMemberHistory_ConditionFromJson(
    Map<String, dynamic> json) {
  return FamilyMemberHistory_Condition(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outcome: json['outcome'] == null
        ? null
        : CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>),
    contributedToDeath: json['contributedToDeath'] as bool,
    elementContributedToDeath: json['elementContributedToDeath'] == null
        ? null
        : Element.fromJson(
            json['elementContributedToDeath'] as Map<String, dynamic>),
    onsetAge: json['onsetAge'] == null
        ? null
        : Age.fromJson(json['onsetAge'] as Map<String, dynamic>),
    onsetRange: json['onsetRange'] == null
        ? null
        : Range.fromJson(json['onsetRange'] as Map<String, dynamic>),
    onsetPeriod: json['onsetPeriod'] == null
        ? null
        : Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>),
    onsetString: json['onsetString'] as String,
    elementOnsetString: json['elementOnsetString'] == null
        ? null
        : Element.fromJson(json['elementOnsetString'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FamilyMemberHistory_ConditionToJson(
        FamilyMemberHistory_Condition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'outcome': instance.outcome?.toJson(),
      'contributedToDeath': instance.contributedToDeath,
      'elementContributedToDeath': instance.elementContributedToDeath?.toJson(),
      'onsetAge': instance.onsetAge?.toJson(),
      'onsetRange': instance.onsetRange?.toJson(),
      'onsetPeriod': instance.onsetPeriod?.toJson(),
      'onsetString': instance.onsetString,
      'elementOnsetString': instance.elementOnsetString?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
    };
