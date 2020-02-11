import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

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
@HiveType(typeId: 155)
class Composition {

  //  This is a Composition resource
  @HiveField(0)
  final String resourceType= 'Composition';

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

  //  A version-independent identifier for the Composition. This identifier
  // stays constant as the composition is changed over time.
  @HiveField(11)
  Identifier identifier;

  //  The workflow/clinical status of this composition. The status is a
  // marker for the clinical standing of the document.
  @HiveField(12)
  String status; // <code> enum: preliminary/final/amended/entered-in-error;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Specifies the particular kind of composition (e.g. History and
  // Physical, Discharge Summary, Progress Note). This usually equates to
  // the purpose of making the composition.
  @HiveField(14)
  CodeableConcept type;

  //  A categorization for the type of the composition - helps for indexing
  // and searching. This may be implied by or derived from the code
  // specified in the Composition Type.
  @HiveField(15)
  List<CodeableConcept> category;

  //  Who or what the composition is about. The composition can be about a
  // person, (patient or healthcare practitioner), a device (e.g. a machine)
  // or even a group of subjects (such as a document about a herd of
  // livestock, or a set of patients that share a common exposure).
  @HiveField(16)
  Reference subject;

  //  Describes the clinical encounter or type of care this documentation is
  // associated with.
  @HiveField(17)
  Reference encounter;

  //  The composition editing time, when the composition was last logically
  // changed by the author.
  @HiveField(18)
  DateTime date;

  //  Extensions for date
  @HiveField(19)
  Element elementDate;

  //  Identifies who is responsible for the information in the composition,
  // not necessarily who typed it in.
  @HiveField(20)
  List<Reference> author;

  //  Official human-readable label for the composition.
  @HiveField(21)
  String title;

  //  Extensions for title
  @HiveField(22)
  Element elementTitle;

  //  The code specifying the level of confidentiality of the Composition.
  @HiveField(23)
  String confidentiality;

  //  Extensions for confidentiality
  @HiveField(24)
  Element elementConfidentiality;

  //  A participant who has attested to the accuracy of the
  // composition/document.
  @HiveField(25)
  List<Composition_Attester> attester;

  //  Identifies the organization or group who is responsible for ongoing
  // maintenance of and access to the composition/document information.
  @HiveField(26)
  Reference custodian;

  //  Relationships that this composition has with other compositions or
  // documents that already exist.
  @HiveField(27)
  List<Composition_RelatesTo> relatesTo;

  //  The clinical service, such as a colonoscopy or an appendectomy, being
  // documented.
  @HiveField(28)
  List<Composition_Event> event;

  //  The root of the sections that make up the composition.
  @HiveField(29)
  List<Composition_Section> section;

Composition(
  this.type,
    this.author,
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
    this.status,
    this.elementStatus,
    this.category,
    this.subject,
    this.encounter,
    this.date,
    this.elementDate,
    this.title,
    this.elementTitle,
    this.confidentiality,
    this.elementConfidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section
    });

  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Attester {

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

  //  The type of attestation the authenticator offers.
  String mode; // <code> enum: personal/professional/legal/official;

  //  Extensions for mode
  Element elementMode;

  //  When the composition was attested by the party.
  DateTime time;

  //  Extensions for time
  Element elementTime;

  //  Who attested the composition in the specified way.
  Reference party;

Composition_Attester(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.time,
    this.elementTime,
    this.party
    });

  factory Composition_Attester.fromJson(Map<String, dynamic> json) => _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_AttesterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_RelatesTo {

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

  //  The type of relationship that this composition has with anther
  // composition or document.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The target composition/document of this relationship.
  Identifier targetIdentifier;

  //  The target composition/document of this relationship.
  Reference targetReference;

Composition_RelatesTo(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.targetIdentifier,
    this.targetReference
    });

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) => _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Event {

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

  //  This list of codes represents the main clinical acts, such as a
  // colonoscopy or an appendectomy, being documented. In some cases, the
  // event is inherent in the typeCode, such as a "History and Physical
  // Report" in which the procedure being documented is necessarily a
  // "History and Physical" act.
  List<CodeableConcept> code;

  //  The period of time covered by the documentation. There is no assertion
  // that the documentation is a complete representation for this period,
  // only that it documents events during this time.
  Period period;

  //  The description and/or reference of the event(s) being documented. For
  // example, this could be used to document such a colonoscopy or an
  // appendectomy.
  List<Reference> detail;

Composition_Event(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail
    });

  factory Composition_Event.fromJson(Map<String, dynamic> json) => _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Section {

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

  //  The label for this particular section.  This will be part of the
  // rendered content for the document, and is often used to build a table
  // of contents.
  String title;

  //  Extensions for title
  Element elementTitle;

  //  A code identifying the kind of content contained within the section.
  // This must be consistent with the section title.
  CodeableConcept code;

  //  Identifies who is responsible for the information in this section, not
  // necessarily who typed it in.
  List<Reference> author;

  //  The actual focus of the section when it is not the subject of the
  // composition, but instead represents something or someone associated
  // with the subject such as (for a patient subject) a spouse, parent,
  // fetus, or donor. If not focus is specified, the focus is assumed to be
  // focus of the parent section, or, for a section in the Composition
  // itself, the subject of the composition. Sections with a focus SHALL
  // only include resources where the logical subject (patient, subject,
  // focus, etc.) matches the section focus, or the resources have no
  // logical subject (few resources).
  Reference focus;

  //  A human-readable narrative that contains the attested content of the
  // section, used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative.
  Narrative text;

  //  How the entry list was prepared - whether it is a working list that is
  // suitable for being maintained on an ongoing basis, or if it represents
  // a snapshot of a list of items from another source, or whether it is a
  // prepared list where items may be marked as added, modified or deleted.
  String mode;

  //  Extensions for mode
  Element elementMode;

  //  Specifies the order applied to the items in the section entries.
  CodeableConcept orderedBy;

  //  A reference to the actual resource from which the narrative in the
  // section is derived.
  List<Reference> entry;

  //  If the section is empty, why the list is empty. An empty section
  // typically has some text explaining the empty reason.
  CodeableConcept emptyReason;

  //  A nested sub-section within this section.
  List<Composition_Section> section;

Composition_Section(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.elementTitle,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.elementMode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section
    });

  factory Composition_Section.fromJson(Map<String, dynamic> json) => _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_SectionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompositionAdapter extends TypeAdapter<Composition> {
  @override
  final typeId = 155;

  @override
  Composition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Composition(
      fields[14] as CodeableConcept,
      (fields[20] as List)?.cast<Reference>(),
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
      identifier: fields[11] as Identifier,
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      category: (fields[15] as List)?.cast<CodeableConcept>(),
      subject: fields[16] as Reference,
      encounter: fields[17] as Reference,
      date: fields[18] as DateTime,
      elementDate: fields[19] as Element,
      title: fields[21] as String,
      elementTitle: fields[22] as Element,
      confidentiality: fields[23] as String,
      elementConfidentiality: fields[24] as Element,
      attester: (fields[25] as List)?.cast<Composition_Attester>(),
      custodian: fields[26] as Reference,
      relatesTo: (fields[27] as List)?.cast<Composition_RelatesTo>(),
      event: (fields[28] as List)?.cast<Composition_Event>(),
      section: (fields[29] as List)?.cast<Composition_Section>(),
    );
  }

  @override
  void write(BinaryWriter writer, Composition obj) {
    writer
      ..writeByte(30)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.category)
      ..writeByte(16)
      ..write(obj.subject)
      ..writeByte(17)
      ..write(obj.encounter)
      ..writeByte(18)
      ..write(obj.date)
      ..writeByte(19)
      ..write(obj.elementDate)
      ..writeByte(20)
      ..write(obj.author)
      ..writeByte(21)
      ..write(obj.title)
      ..writeByte(22)
      ..write(obj.elementTitle)
      ..writeByte(23)
      ..write(obj.confidentiality)
      ..writeByte(24)
      ..write(obj.elementConfidentiality)
      ..writeByte(25)
      ..write(obj.attester)
      ..writeByte(26)
      ..write(obj.custodian)
      ..writeByte(27)
      ..write(obj.relatesTo)
      ..writeByte(28)
      ..write(obj.event)
      ..writeByte(29)
      ..write(obj.section);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Composition _$CompositionFromJson(Map<String, dynamic> json) {
  return Composition(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    category: (json['category'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    confidentiality: json['confidentiality'] as String,
    elementConfidentiality: json['elementConfidentiality'] == null
        ? null
        : Element.fromJson(
            json['elementConfidentiality'] as Map<String, dynamic>),
    attester: (json['attester'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Attester.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
    relatesTo: (json['relatesTo'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_RelatesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    event: (json['event'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompositionToJson(Composition instance) =>
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
      'identifier': instance.identifier?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'category': instance.category?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'confidentiality': instance.confidentiality,
      'elementConfidentiality': instance.elementConfidentiality?.toJson(),
      'attester': instance.attester?.map((e) => e?.toJson())?.toList(),
      'custodian': instance.custodian?.toJson(),
      'relatesTo': instance.relatesTo?.map((e) => e?.toJson())?.toList(),
      'event': instance.event?.map((e) => e?.toJson())?.toList(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };

Composition_Attester _$Composition_AttesterFromJson(Map<String, dynamic> json) {
  return Composition_Attester(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    elementTime: json['elementTime'] == null
        ? null
        : Element.fromJson(json['elementTime'] as Map<String, dynamic>),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_AttesterToJson(
        Composition_Attester instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'time': instance.time?.toIso8601String(),
      'elementTime': instance.elementTime?.toJson(),
      'party': instance.party?.toJson(),
    };

Composition_RelatesTo _$Composition_RelatesToFromJson(
    Map<String, dynamic> json) {
  return Composition_RelatesTo(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    targetIdentifier: json['targetIdentifier'] == null
        ? null
        : Identifier.fromJson(json['targetIdentifier'] as Map<String, dynamic>),
    targetReference: json['targetReference'] == null
        ? null
        : Reference.fromJson(json['targetReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Composition_RelatesToToJson(
        Composition_RelatesTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'targetIdentifier': instance.targetIdentifier?.toJson(),
      'targetReference': instance.targetReference?.toJson(),
    };

Composition_Event _$Composition_EventFromJson(Map<String, dynamic> json) {
  return Composition_Event(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_EventToJson(Composition_Event instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

Composition_Section _$Composition_SectionFromJson(Map<String, dynamic> json) {
  return Composition_Section(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    author: (json['author'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focus: json['focus'] == null
        ? null
        : Reference.fromJson(json['focus'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    orderedBy: json['orderedBy'] == null
        ? null
        : CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>),
    entry: (json['entry'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emptyReason: json['emptyReason'] == null
        ? null
        : CodeableConcept.fromJson(json['emptyReason'] as Map<String, dynamic>),
    section: (json['section'] as List)
        ?.map((e) => e == null
            ? null
            : Composition_Section.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Composition_SectionToJson(
        Composition_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'code': instance.code?.toJson(),
      'author': instance.author?.map((e) => e?.toJson())?.toList(),
      'focus': instance.focus?.toJson(),
      'text': instance.text?.toJson(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'orderedBy': instance.orderedBy?.toJson(),
      'entry': instance.entry?.map((e) => e?.toJson())?.toList(),
      'emptyReason': instance.emptyReason?.toJson(),
      'section': instance.section?.map((e) => e?.toJson())?.toList(),
    };
