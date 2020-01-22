import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/resource.dart';

part 'composition.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  // Text summary of the resource, for human interpretation
  Narrative text;

  // Contained, inline Resources
  List<Resource> contained;

  // Version-independent identifier for the Composition
  Identifier identifier;

  // R!  preliminary | final | amended | entered-in-error
  String status;

  // R!  Kind of composition (LOINC if possible)
  CodeableConcept type;

  // Categorization of Composition
  List<CodeableConcept> category;

  // Who and/or what the composition is about
  Reference subject;

  // Context of the Composition
  Reference encounter;

  // R!  Composition editing time
  DateTime date;

  // R!  Who and/or what authored the composition
  // Reference(Practitioner|PractitionerRole|Device|Patient|
  //  RelatedPerson|Organization)
  List<Reference> author;

  // R!  Human Readable name/title
  String title;

  // As defined by affinity domain
  String confidentiality;

  // Attests to accuracy of composition
  List<Attester> attester;

  // Organization which maintains the composition
  // Reference(Organization)
  Reference custodian;

  // Relationships to other compositions/documents
  List<RelatesTo> relatesTo;

  // The clinical service(s) being documented
  List<Event> event;

  // Composition is broken into sections
  List<Section> section;

  Composition(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.text,
        this.contained,
        this.identifier,
        this.status,
        this.type,
        this.category,
        this.subject,
        this.date,
        this.author,
        this.title,
        this.confidentiality,
        this.attester,
        this.custodian,
        this.relatesTo,
        this.event,
        this.section});
  
  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Attester {

  // R!  personal | professional | legal | official
  String mode;

  // When the composition was attested
  DateTime time;

  // Who attested the composition
  // Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Organization)
  Reference party;

  Attester({this.mode, this.time, this.party});

  factory Attester.fromJson(Map<String, dynamic> json) => _$AttesterFromJson(json);
  Map<String, dynamic> toJson() => _$AttesterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RelatesTo {

  // R!  replaces | transforms | signs | appends
  String code;

  // target[x]: Target of the relationship. One of these 2:
  Identifier targetIdentifier;
  Reference targetReference;  // Reference(Composition)

  RelatesTo({this.code, this.targetIdentifier, this.targetReference});

  factory RelatesTo.fromJson(Map<String, dynamic> json) => _$RelatesToFromJson(json);
  Map<String, dynamic> toJson() => _$RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Event {

  // Code(s) that apply to the event being documented
  List<CodeableConcept> code;

  // The period covered by the documentation
  Period period;

  // The event(s) being documented
  // Reference(Any)
  List<Reference> detail;

  Event({this.code, this.period, this.detail});

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Section {

  // Label for section (e.g. for ToC)
  String title;

  // Classification of section (recommended)
  CodeableConcept code;

  // Who and/or what authored the section
  // Reference(Practitioner|PractitionerRole|Device|Patient|
  //  RelatedPerson|Organization)
  List<Reference> author;

  // Who/what the section is about, when it is not about the subject of composition
  // Reference(Any)
  Reference focus;

  // C? Text summary of the section, for human interpretation
  Narrative text;

  // working | snapshot | changes
  String mode;

  // Order of section entries
  CodeableConcept orderedBy;

  // C? A reference to data that supports this section
  // Reference(any)
  List<Reference> entry;

  // C? Why the section is empty
  CodeableConcept emptyReason;

  // C? Nested Section
  List<Section> section;

  Section(
      {this.title,
        this.code,
        this.author,
        this.focus,
        this.text,
        this.mode,
        this.orderedBy,
        this.entry,
        this.emptyReason,
        this.section});

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}