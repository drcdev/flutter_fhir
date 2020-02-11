import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
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
@HiveType(typeId: 111)
class ChargeItemDefinition {

  //  This is a ChargeItemDefinition resource
  @HiveField(0)
  final String resourceType= 'ChargeItemDefinition';

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

  //  An absolute URI that is used to identify this charge item definition
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this charge item definition is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the charge item definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  A formal identifier that is used to identify this charge item
  // definition when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
  @HiveField(13)
  List<Identifier> identifier;

  //  The identifier that is used to identify this version of the charge
  // item definition when it is referenced in a specification, model, design
  // or instance. This is an arbitrary value managed by the charge item
  // definition author and is not expected to be globally unique. For
  // example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  // is not available. There is also no expectation that versions can be
  // placed in a lexicographical sequence. To provide a version consistent
  // with the Decision Support Service specification, use the format
  // Major.Minor.Revision (e.g. 1.0.0). For more information on versioning
  // knowledge assets, refer to the Decision Support Service specification.
  // Note that a version is required for non-experimental active assets.
  @HiveField(14)
  String version;

  //  Extensions for version
  @HiveField(15)
  Element elementVersion;

  //  A short, descriptive, user-friendly title for the charge item
  // definition.
  @HiveField(16)
  String title;

  //  Extensions for title
  @HiveField(17)
  Element elementTitle;

  //  The URL pointing to an externally-defined charge item definition that
  // is adhered to in whole or in part by this definition.
  @HiveField(18)
  List<String> derivedFromUri;

  //  Extensions for derivedFromUri
  @HiveField(19)
  List<Element> elementDerivedFromUri;

  //  A larger definition of which this particular definition is a component
  // or step.
  @HiveField(20)
  List<String> partOf;

  //  As new versions of a protocol or guideline are defined, allows
  // identification of what versions are replaced by a new instance.
  @HiveField(21)
  List<String> replaces;

  //  The current state of the ChargeItemDefinition.
  @HiveField(22)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(23)
  Element elementStatus;

  //  A Boolean value to indicate that this charge item definition is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  @HiveField(24)
  bool experimental;

  //  Extensions for experimental
  @HiveField(25)
  Element elementExperimental;

  //  The date  (and optionally time) when the charge item definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the charge item definition
  // changes.
  @HiveField(26)
  DateTime date;

  //  Extensions for date
  @HiveField(27)
  Element elementDate;

  //  The name of the organization or individual that published the charge
  // item definition.
  @HiveField(28)
  String publisher;

  //  Extensions for publisher
  @HiveField(29)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(30)
  List<ContactDetail> contact;

  //  A free text natural language description of the charge item definition
  // from a consumer's perspective.
  @HiveField(31)
  String description;

  //  Extensions for description
  @HiveField(32)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate charge item definition instances.
  @HiveField(33)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the charge item definition is
  // intended to be used.
  @HiveField(34)
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the charge item definition and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the charge item definition.
  @HiveField(35)
  String copyright;

  //  Extensions for copyright
  @HiveField(36)
  Element elementCopyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  @HiveField(37)
  String approvalDate;

  //  Extensions for approvalDate
  @HiveField(38)
  Element elementApprovalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  @HiveField(39)
  String lastReviewDate;

  //  Extensions for lastReviewDate
  @HiveField(40)
  Element elementLastReviewDate;

  //  The period during which the charge item definition content was or is
  // planned to be in active use.
  @HiveField(41)
  Period effectivePeriod;

  //  The defined billing details in this resource pertain to the given
  // billing code.
  @HiveField(42)
  CodeableConcept code;

  //  The defined billing details in this resource pertain to the given
  // product instance(s).
  @HiveField(43)
  List<Reference> instance;

  //  Expressions that describe applicability criteria for the billing code.
  @HiveField(44)
  List<ChargeItemDefinition_Applicability> applicability;

  //  Group of properties which are applicable under the same conditions. If
  // no applicability rules are established for the group, then all
  // properties always apply.
  @HiveField(45)
  List<ChargeItemDefinition_PropertyGroup> propertyGroup;

ChargeItemDefinition(
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
    this.title,
    this.elementTitle,
    this.derivedFromUri,
    this.elementDerivedFromUri,
    this.partOf,
    this.replaces,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.elementCopyright,
    this.approvalDate,
    this.elementApprovalDate,
    this.lastReviewDate,
    this.elementLastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup
    });

  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 112)
class ChargeItemDefinition_Applicability {

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

  //  A brief, natural language description of the condition that
  // effectively communicates the intended semantics.
  @HiveField(3)
  String description;

  //  Extensions for description
  @HiveField(4)
  Element elementDescription;

  //  The media type of the language for the expression, e.g. "text/cql" for
  // Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  // expressions.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  An expression that returns true or false, indicating whether the
  // condition is satisfied. When using FHIRPath expressions, the %context
  // environment variable must be replaced at runtime with the ChargeItem
  // resource to which this definition is applied.
  @HiveField(7)
  String expression;

  //  Extensions for expression
  @HiveField(8)
  Element elementExpression;

ChargeItemDefinition_Applicability(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.language,
    this.elementLanguage,
    this.expression,
    this.elementExpression
    });

  factory ChargeItemDefinition_Applicability.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_ApplicabilityFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_ApplicabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 113)
class ChargeItemDefinition_PropertyGroup {

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

  //  Expressions that describe applicability criteria for the
  // priceComponent.
  @HiveField(3)
  List<ChargeItemDefinition_Applicability> applicability;

  //  The price for a ChargeItem may be calculated as a base price with
  // surcharges/deductions that apply in certain conditions. A
  // ChargeItemDefinition resource that defines the prices, factors and
  // conditions that apply to a billing code is currently under development.
  // The priceComponent element can be used to offer transparency to the
  // recipient of the Invoice of how the prices have been calculated.
  @HiveField(4)
  List<ChargeItemDefinition_PriceComponent> priceComponent;

ChargeItemDefinition_PropertyGroup(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.applicability,
    this.priceComponent
    });

  factory ChargeItemDefinition_PropertyGroup.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PropertyGroupFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PropertyGroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 114)
class ChargeItemDefinition_PriceComponent {

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

  //  This code identifies the type of the component.
  @HiveField(3)
  String type;

  //  Extensions for type
  @HiveField(4)
  Element elementType;

  //  A code that identifies the component. Codes may be used to
  // differentiate between kinds of taxes, surcharges, discounts etc.
  @HiveField(5)
  CodeableConcept code;

  //  The factor that has been applied on the base price for calculating
  // this component.
  @HiveField(6)
  double factor;

  //  Extensions for factor
  @HiveField(7)
  Element elementFactor;

  //  The amount calculated for this component.
  @HiveField(8)
  Money amount;

ChargeItemDefinition_PriceComponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.code,
    this.factor,
    this.elementFactor,
    this.amount
    });

  factory ChargeItemDefinition_PriceComponent.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PriceComponentToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChargeItemDefinitionAdapter extends TypeAdapter<ChargeItemDefinition> {
  @override
  final typeId = 111;

  @override
  ChargeItemDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChargeItemDefinition(
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
      title: fields[16] as String,
      elementTitle: fields[17] as Element,
      derivedFromUri: (fields[18] as List)?.cast<String>(),
      elementDerivedFromUri: (fields[19] as List)?.cast<Element>(),
      partOf: (fields[20] as List)?.cast<String>(),
      replaces: (fields[21] as List)?.cast<String>(),
      status: fields[22] as String,
      elementStatus: fields[23] as Element,
      experimental: fields[24] as bool,
      elementExperimental: fields[25] as Element,
      date: fields[26] as DateTime,
      elementDate: fields[27] as Element,
      publisher: fields[28] as String,
      elementPublisher: fields[29] as Element,
      contact: (fields[30] as List)?.cast<ContactDetail>(),
      description: fields[31] as String,
      elementDescription: fields[32] as Element,
      useContext: (fields[33] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[34] as List)?.cast<CodeableConcept>(),
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      approvalDate: fields[37] as String,
      elementApprovalDate: fields[38] as Element,
      lastReviewDate: fields[39] as String,
      elementLastReviewDate: fields[40] as Element,
      effectivePeriod: fields[41] as Period,
      code: fields[42] as CodeableConcept,
      instance: (fields[43] as List)?.cast<Reference>(),
      applicability:
          (fields[44] as List)?.cast<ChargeItemDefinition_Applicability>(),
      propertyGroup:
          (fields[45] as List)?.cast<ChargeItemDefinition_PropertyGroup>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChargeItemDefinition obj) {
    writer
      ..writeByte(46)
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
      ..write(obj.title)
      ..writeByte(17)
      ..write(obj.elementTitle)
      ..writeByte(18)
      ..write(obj.derivedFromUri)
      ..writeByte(19)
      ..write(obj.elementDerivedFromUri)
      ..writeByte(20)
      ..write(obj.partOf)
      ..writeByte(21)
      ..write(obj.replaces)
      ..writeByte(22)
      ..write(obj.status)
      ..writeByte(23)
      ..write(obj.elementStatus)
      ..writeByte(24)
      ..write(obj.experimental)
      ..writeByte(25)
      ..write(obj.elementExperimental)
      ..writeByte(26)
      ..write(obj.date)
      ..writeByte(27)
      ..write(obj.elementDate)
      ..writeByte(28)
      ..write(obj.publisher)
      ..writeByte(29)
      ..write(obj.elementPublisher)
      ..writeByte(30)
      ..write(obj.contact)
      ..writeByte(31)
      ..write(obj.description)
      ..writeByte(32)
      ..write(obj.elementDescription)
      ..writeByte(33)
      ..write(obj.useContext)
      ..writeByte(34)
      ..write(obj.jurisdiction)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.approvalDate)
      ..writeByte(38)
      ..write(obj.elementApprovalDate)
      ..writeByte(39)
      ..write(obj.lastReviewDate)
      ..writeByte(40)
      ..write(obj.elementLastReviewDate)
      ..writeByte(41)
      ..write(obj.effectivePeriod)
      ..writeByte(42)
      ..write(obj.code)
      ..writeByte(43)
      ..write(obj.instance)
      ..writeByte(44)
      ..write(obj.applicability)
      ..writeByte(45)
      ..write(obj.propertyGroup);
  }
}

class ChargeItemDefinition_ApplicabilityAdapter
    extends TypeAdapter<ChargeItemDefinition_Applicability> {
  @override
  final typeId = 112;

  @override
  ChargeItemDefinition_Applicability read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChargeItemDefinition_Applicability(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      description: fields[3] as String,
      elementDescription: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      expression: fields[7] as String,
      elementExpression: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ChargeItemDefinition_Applicability obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.elementDescription)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.expression)
      ..writeByte(8)
      ..write(obj.elementExpression);
  }
}

class ChargeItemDefinition_PropertyGroupAdapter
    extends TypeAdapter<ChargeItemDefinition_PropertyGroup> {
  @override
  final typeId = 113;

  @override
  ChargeItemDefinition_PropertyGroup read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChargeItemDefinition_PropertyGroup(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      applicability:
          (fields[3] as List)?.cast<ChargeItemDefinition_Applicability>(),
      priceComponent:
          (fields[4] as List)?.cast<ChargeItemDefinition_PriceComponent>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChargeItemDefinition_PropertyGroup obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.applicability)
      ..writeByte(4)
      ..write(obj.priceComponent);
  }
}

class ChargeItemDefinition_PriceComponentAdapter
    extends TypeAdapter<ChargeItemDefinition_PriceComponent> {
  @override
  final typeId = 114;

  @override
  ChargeItemDefinition_PriceComponent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChargeItemDefinition_PriceComponent(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as String,
      elementType: fields[4] as Element,
      code: fields[5] as CodeableConcept,
      factor: fields[6] as double,
      elementFactor: fields[7] as Element,
      amount: fields[8] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, ChargeItemDefinition_PriceComponent obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.elementType)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.factor)
      ..writeByte(7)
      ..write(obj.elementFactor)
      ..writeByte(8)
      ..write(obj.amount);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeItemDefinition _$ChargeItemDefinitionFromJson(Map<String, dynamic> json) {
  return ChargeItemDefinition(
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
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    derivedFromUri:
        (json['derivedFromUri'] as List)?.map((e) => e as String)?.toList(),
    elementDerivedFromUri: (json['elementDerivedFromUri'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: (json['partOf'] as List)?.map((e) => e as String)?.toList(),
    replaces: (json['replaces'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    instance: (json['instance'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applicability: (json['applicability'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_Applicability.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    propertyGroup: (json['propertyGroup'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_PropertyGroup.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemDefinitionToJson(
        ChargeItemDefinition instance) =>
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
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
      'derivedFromUri': instance.derivedFromUri,
      'elementDerivedFromUri':
          instance.elementDerivedFromUri?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf,
      'replaces': instance.replaces,
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'approvalDate': instance.approvalDate,
      'elementApprovalDate': instance.elementApprovalDate?.toJson(),
      'lastReviewDate': instance.lastReviewDate,
      'elementLastReviewDate': instance.elementLastReviewDate?.toJson(),
      'effectivePeriod': instance.effectivePeriod?.toJson(),
      'code': instance.code?.toJson(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
      'applicability':
          instance.applicability?.map((e) => e?.toJson())?.toList(),
      'propertyGroup':
          instance.propertyGroup?.map((e) => e?.toJson())?.toList(),
    };

ChargeItemDefinition_Applicability _$ChargeItemDefinition_ApplicabilityFromJson(
    Map<String, dynamic> json) {
  return ChargeItemDefinition_Applicability(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_ApplicabilityToJson(
        ChargeItemDefinition_Applicability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
    };

ChargeItemDefinition_PropertyGroup _$ChargeItemDefinition_PropertyGroupFromJson(
    Map<String, dynamic> json) {
  return ChargeItemDefinition_PropertyGroup(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    applicability: (json['applicability'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_Applicability.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    priceComponent: (json['priceComponent'] as List)
        ?.map((e) => e == null
            ? null
            : ChargeItemDefinition_PriceComponent.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_PropertyGroupToJson(
        ChargeItemDefinition_PropertyGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'applicability':
          instance.applicability?.map((e) => e?.toJson())?.toList(),
      'priceComponent':
          instance.priceComponent?.map((e) => e?.toJson())?.toList(),
    };

ChargeItemDefinition_PriceComponent
    _$ChargeItemDefinition_PriceComponentFromJson(Map<String, dynamic> json) {
  return ChargeItemDefinition_PriceComponent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChargeItemDefinition_PriceComponentToJson(
        ChargeItemDefinition_PriceComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'code': instance.code?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'amount': instance.amount?.toJson(),
    };
