import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'searchParameter.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchParameter {

  //  This is a SearchParameter resource
  final String resourceType= 'SearchParameter';

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

  //  An absolute URI that is used to identify this search parameter when it
  // is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this search parameter is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // search parameter is stored on different servers.
  String url;

  //  Extensions for url
  Element elementUrl;

  //  The identifier that is used to identify this version of the search
  // parameter when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the search parameter
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A natural language name identifying the search parameter. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  String name;

  //  Extensions for name
  Element elementName;

  //  Where this search parameter is originally defined. If a derivedFrom is
  // provided, then the details in the search parameter must be consistent
  // with the definition from which it is defined. i.e. the parameter should
  // have the same meaning, and (usually) the functionality should be a
  // proper subset of the underlying search parameter.
  String derivedFrom;

  //  The status of this search parameter. Enables tracking the life-cycle
  // of the content.
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A Boolean value to indicate that this search parameter is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  bool experimental;

  //  Extensions for experimental
  Element elementExperimental;

  //  The date  (and optionally time) when the search parameter was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the search parameter changes.
  DateTime date;

  //  Extensions for date
  Element elementDate;

  //  The name of the organization or individual that published the search
  // parameter.
  String publisher;

  //  Extensions for publisher
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  List<ContactDetail> contact;

  //  And how it used.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate search parameter instances.
  List<UsageContext> useContext;

  //  A legal or geographic region in which the search parameter is intended
  // to be used.
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this search parameter is needed and why it has been
  // designed as it has.
  String purpose;

  //  Extensions for purpose
  Element elementPurpose;

  //  The code used in the URL or the parameter name in a parameters
  // resource for this search parameter.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The base resource type(s) that this search parameter can be used
  // against.
  List<String> base;

  //  Extensions for base
  List<Element> elementBase;

  //  The type of value that a search parameter may contain, and how the
  // content is interpreted.
  String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;

  //  Extensions for type
  Element elementType;

  //  A FHIRPath expression that returns a set of elements for the search
  // parameter.
  String expression;

  //  Extensions for expression
  Element elementExpression;

  //  An XPath expression that returns a set of elements for the search
  // parameter.
  String xpath;

  //  Extensions for xpath
  Element elementXpath;

  //  How the search parameter relates to the set of elements returned by
  // evaluating the xpath query.
  String xpathUsage; // <code> enum: normal/phonetic/nearby/distance/other;

  //  Extensions for xpathUsage
  Element elementXpathUsage;

  //  Types of resource (if a resource is referenced).
  List<String> target;

  //  Extensions for target
  List<Element> elementTarget;

  //  Whether multiple values are allowed for each time the parameter
  // exists. Values are separated by commas, and the parameter matches if
  // any of the values match.
  bool multipleOr;

  //  Extensions for multipleOr
  Element elementMultipleOr;

  //  Whether multiple parameters are allowed - e.g. more than one parameter
  // with the same name. The search matches if all the parameters match.
  bool multipleAnd;

  //  Extensions for multipleAnd
  Element elementMultipleAnd;

  //  Comparators supported for the search parameter.
  List<String> comparator; // <code> enum: eq/ne/gt/lt/ge/le/sa/eb/ap> comparator;

  //  Extensions for comparator
  List<Element> elementComparator;

  //  A modifier supported for the search parameter.
  List<String> modifier; // <code> enum: missing/exact/contains/not/text/in/not-in/below/above/type/identifier/ofType> modifier;

  //  Extensions for modifier
  List<Element> elementModifier;

  //  Contains the names of any search parameters which may be chained to
  // the containing search parameter. Chained parameters may be added to
  // search parameters of type reference and specify that resources will
  // only be returned if they contain a reference to a resource which
  // matches the chained parameter value. Values for this field should be
  // drawn from SearchParameter.code for a parameter on the target resource
  // type.
  List<String> chain;

  //  Extensions for chain
  List<Element> elementChain;

  //  Used to define the parts of a composite search parameter.
  List<SearchParameter_Component> component;

SearchParameter(
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
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.derivedFrom,
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
    this.purpose,
    this.elementPurpose,
    this.code,
    this.elementCode,
    this.base,
    this.elementBase,
    this.type,
    this.elementType,
    this.expression,
    this.elementExpression,
    this.xpath,
    this.elementXpath,
    this.xpathUsage,
    this.elementXpathUsage,
    this.target,
    this.elementTarget,
    this.multipleOr,
    this.elementMultipleOr,
    this.multipleAnd,
    this.elementMultipleAnd,
    this.comparator,
    this.elementComparator,
    this.modifier,
    this.elementModifier,
    this.chain,
    this.elementChain,
    this.component
    });

  factory SearchParameter.fromJson(Map<String, dynamic> json) => _$SearchParameterFromJson(json);
  Map<String, dynamic> toJson() => _$SearchParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchParameter_Component {

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

  //  The definition of the search parameter that describes this part.
  String definition;

  //  A sub-expression that defines how to extract values for this component
  // from the output of the main SearchParameter.expression.
  String expression;

  //  Extensions for expression
  Element elementExpression;

SearchParameter_Component(
  this.definition,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.expression,
    this.elementExpression
    });

  factory SearchParameter_Component.fromJson(Map<String, dynamic> json) => _$SearchParameter_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$SearchParameter_ComponentToJson(this);
}
