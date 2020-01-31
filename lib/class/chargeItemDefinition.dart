import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/reference.dart';
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

part 'chargeItemDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition {

  //  This is a ChargeItemDefinition resource
  final String resourceType= 'ChargeItemDefinition';

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

  //  An absolute URI that is used to identify this charge item definition
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this charge item definition is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the charge item definition is stored on different servers.
  String url;

  //  Extensions for url
  Element element_url;

  //  A formal identifier that is used to identify this charge item
  // definition when it is represented in other formats, or referenced in a
  // specification, model, design or an instance.
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
  String version;

  //  Extensions for version
  Element element_version;

  //  A short, descriptive, user-friendly title for the charge item
  // definition.
  String title;

  //  Extensions for title
  Element element_title;

  //  The URL pointing to an externally-defined charge item definition that
  // is adhered to in whole or in part by this definition.
  List<String> derivedFromUri;

  //  Extensions for derivedFromUri
  List<Element> element_derivedFromUri;

  //  A larger definition of which this particular definition is a component
  // or step.
  List<String> partOf;

  //  As new versions of a protocol or guideline are defined, allows
  // identification of what versions are replaced by a new instance.
  List<String> replaces;

  //  The current state of the ChargeItemDefinition.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element element_status;

  //  A Boolean value to indicate that this charge item definition is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element element_experimental;

  //  The date  (and optionally time) when the charge item definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the charge item definition
  // changes.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  The name of the organization or individual that published the charge
  // item definition.
  String publisher;

  //  Extensions for publisher
  Element element_publisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  A free text natural language description of the charge item definition
  // from a consumer's perspective.
  String description;

  //  Extensions for description
  Element element_description;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate charge item definition instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the charge item definition is
  // intended to be used.
  List<CodeableConcept> jurisdiction;

  //  A copyright statement relating to the charge item definition and/or
  // its contents. Copyright statements are generally legal restrictions on
  // the use and publishing of the charge item definition.
  String copyright;

  //  Extensions for copyright
  Element element_copyright;

  //  The date on which the resource content was approved by the publisher.
  // Approval happens once when the content is officially approved for
  // usage.
  String approvalDate;

  //  Extensions for approvalDate
  Element element_approvalDate;

  //  The date on which the resource content was last reviewed. Review
  // happens periodically after approval but does not change the original
  // approval date.
  String lastReviewDate;

  //  Extensions for lastReviewDate
  Element element_lastReviewDate;

  //  The period during which the charge item definition content was or is
  // planned to be in active use.
  Period effectivePeriod;

  //  The defined billing details in this resource pertain to the given
  // billing code.
  CodeableConcept code;

  //  The defined billing details in this resource pertain to the given
  // product instance(s).
  List<Reference> instance;

  //  Expressions that describe applicability criteria for the billing code.
  List<ChargeItemDefinition_Applicability> applicability;

  //  Group of properties which are applicable under the same conditions. If
  // no applicability rules are established for the group, then all
  // properties always apply.
  List<ChargeItemDefinition_PropertyGroup> propertyGroup;

ChargeItemDefinition(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.element_url,
    this.identifier,
    this.version,
    this.element_version,
    this.title,
    this.element_title,
    this.derivedFromUri,
    this.element_derivedFromUri,
    this.partOf,
    this.replaces,
    this.status,
    this.element_status,
    this.experimental,
    this.element_experimental,
    this.date,
    this.element_date,
    this.publisher,
    this.element_publisher,
    this.contact,
    this.description,
    this.element_description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.element_copyright,
    this.approvalDate,
    this.element_approvalDate,
    this.lastReviewDate,
    this.element_lastReviewDate,
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
class ChargeItemDefinition_Applicability {

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

  //  A brief, natural language description of the condition that
  // effectively communicates the intended semantics.
  String description;

  //  Extensions for description
  Element element_description;

  //  The media type of the language for the expression, e.g. "text/cql" for
  // Clinical Query Language expressions or "text/fhirpath" for FHIRPath
  // expressions.
  String language;

  //  Extensions for language
  Element element_language;

  //  An expression that returns true or false, indicating whether the
  // condition is satisfied. When using FHIRPath expressions, the %context
  // environment variable must be replaced at runtime with the ChargeItem
  // resource to which this definition is applied.
  String expression;

  //  Extensions for expression
  Element element_expression;

ChargeItemDefinition_Applicability(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.language,
    this.element_language,
    this.expression,
    this.element_expression
    });

  factory ChargeItemDefinition_Applicability.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_ApplicabilityFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_ApplicabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChargeItemDefinition_PropertyGroup {

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

  //  Expressions that describe applicability criteria for the
  // priceComponent.
  List<ChargeItemDefinition_Applicability> applicability;

  //  The price for a ChargeItem may be calculated as a base price with
  // surcharges/deductions that apply in certain conditions. A
  // ChargeItemDefinition resource that defines the prices, factors and
  // conditions that apply to a billing code is currently under development.
  // The priceComponent element can be used to offer transparency to the
  // recipient of the Invoice of how the prices have been calculated.
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
class ChargeItemDefinition_PriceComponent {

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

  //  This code identifies the type of the component.
  String type;

  //  Extensions for type
  Element element_type;

  //  A code that identifies the component. Codes may be used to
  // differentiate between kinds of taxes, surcharges, discounts etc.
  CodeableConcept code;

  //  The factor that has been applied on the base price for calculating
  // this component.
  double factor;

  //  Extensions for factor
  Element element_factor;

  //  The amount calculated for this component.
  Money amount;

ChargeItemDefinition_PriceComponent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.code,
    this.factor,
    this.element_factor,
    this.amount
    });

  factory ChargeItemDefinition_PriceComponent.fromJson(Map<String, dynamic> json) => _$ChargeItemDefinition_PriceComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ChargeItemDefinition_PriceComponentToJson(this);
}

