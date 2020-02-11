import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 529)
class SearchParameter {

  //  This is a SearchParameter resource
  @HiveField(0)
  final String resourceType= 'SearchParameter';

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

  //  An absolute URI that is used to identify this search parameter when it
  // is referenced in a specification, model, design or an instance; also
  // called its canonical identifier. This SHOULD be globally unique and
  // SHOULD be a literal address at which at which an authoritative instance
  // of this search parameter is (or will be) published. This URL can be the
  // target of a canonical reference. It SHALL remain the same when the
  // search parameter is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the search
  // parameter when it is referenced in a specification, model, design or
  // instance. This is an arbitrary value managed by the search parameter
  // author and is not expected to be globally unique. For example, it might
  // be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  // There is also no expectation that versions can be placed in a
  // lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the search parameter. This name
  // should be usable as an identifier for the module by machine processing
  // applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  Where this search parameter is originally defined. If a derivedFrom is
  // provided, then the details in the search parameter must be consistent
  // with the definition from which it is defined. i.e. the parameter should
  // have the same meaning, and (usually) the functionality should be a
  // proper subset of the underlying search parameter.
  @HiveField(17)
  String derivedFrom;

  //  The status of this search parameter. Enables tracking the life-cycle
  // of the content.
  @HiveField(18)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(19)
  Element elementStatus;

  //  A Boolean value to indicate that this search parameter is authored for
  // testing purposes (or education/evaluation/marketing) and is not
  // intended to be used for genuine usage.
  @HiveField(20)
  bool experimental;

  //  Extensions for experimental
  @HiveField(21)
  Element elementExperimental;

  //  The date  (and optionally time) when the search parameter was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the search parameter changes.
  @HiveField(22)
  DateTime date;

  //  Extensions for date
  @HiveField(23)
  Element elementDate;

  //  The name of the organization or individual that published the search
  // parameter.
  @HiveField(24)
  String publisher;

  //  Extensions for publisher
  @HiveField(25)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(26)
  List<ContactDetail> contact;

  //  And how it used.
  @HiveField(27)
  String description;

  //  Extensions for description
  @HiveField(28)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate search parameter instances.
  @HiveField(29)
  List<UsageContext> useContext;

  //  A legal or geographic region in which the search parameter is intended
  // to be used.
  @HiveField(30)
  List<CodeableConcept> jurisdiction;

  //  Explanation of why this search parameter is needed and why it has been
  // designed as it has.
  @HiveField(31)
  String purpose;

  //  Extensions for purpose
  @HiveField(32)
  Element elementPurpose;

  //  The code used in the URL or the parameter name in a parameters
  // resource for this search parameter.
  @HiveField(33)
  String code;

  //  Extensions for code
  @HiveField(34)
  Element elementCode;

  //  The base resource type(s) that this search parameter can be used
  // against.
  @HiveField(35)
  List<String> base;

  //  Extensions for base
  @HiveField(36)
  List<Element> elementBase;

  //  The type of value that a search parameter may contain, and how the
  // content is interpreted.
  @HiveField(37)
  String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;

  //  Extensions for type
  @HiveField(38)
  Element elementType;

  //  A FHIRPath expression that returns a set of elements for the search
  // parameter.
  @HiveField(39)
  String expression;

  //  Extensions for expression
  @HiveField(40)
  Element elementExpression;

  //  An XPath expression that returns a set of elements for the search
  // parameter.
  @HiveField(41)
  String xpath;

  //  Extensions for xpath
  @HiveField(42)
  Element elementXpath;

  //  How the search parameter relates to the set of elements returned by
  // evaluating the xpath query.
  @HiveField(43)
  String xpathUsage; // <code> enum: normal/phonetic/nearby/distance/other;

  //  Extensions for xpathUsage
  @HiveField(44)
  Element elementXpathUsage;

  //  Types of resource (if a resource is referenced).
  @HiveField(45)
  List<String> target;

  //  Extensions for target
  @HiveField(46)
  List<Element> elementTarget;

  //  Whether multiple values are allowed for each time the parameter
  // exists. Values are separated by commas, and the parameter matches if
  // any of the values match.
  @HiveField(47)
  bool multipleOr;

  //  Extensions for multipleOr
  @HiveField(48)
  Element elementMultipleOr;

  //  Whether multiple parameters are allowed - e.g. more than one parameter
  // with the same name. The search matches if all the parameters match.
  @HiveField(49)
  bool multipleAnd;

  //  Extensions for multipleAnd
  @HiveField(50)
  Element elementMultipleAnd;

  //  Comparators supported for the search parameter.
  @HiveField(51)
  List<String> comparator; // <code> enum: eq/ne/gt/lt/ge/le/sa/eb/ap> comparator;

  //  Extensions for comparator
  @HiveField(52)
  List<Element> elementComparator;

  //  A modifier supported for the search parameter.
  @HiveField(53)
  List<String> modifier; // <code> enum: missing/exact/contains/not/text/in/not-in/below/above/type/identifier/ofType> modifier;

  //  Extensions for modifier
  @HiveField(54)
  List<Element> elementModifier;

  //  Contains the names of any search parameters which may be chained to
  // the containing search parameter. Chained parameters may be added to
  // search parameters of type reference and specify that resources will
  // only be returned if they contain a reference to a resource which
  // matches the chained parameter value. Values for this field should be
  // drawn from SearchParameter.code for a parameter on the target resource
  // type.
  @HiveField(55)
  List<String> chain;

  //  Extensions for chain
  @HiveField(56)
  List<Element> elementChain;

  //  Used to define the parts of a composite search parameter.
  @HiveField(57)
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
@HiveType(typeId: 530)
class SearchParameter_Component {

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

  //  The definition of the search parameter that describes this part.
  @HiveField(3)
  String definition;

  //  A sub-expression that defines how to extract values for this component
  // from the output of the main SearchParameter.expression.
  @HiveField(4)
  String expression;

  //  Extensions for expression
  @HiveField(5)
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


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchParameterAdapter extends TypeAdapter<SearchParameter> {
  @override
  final typeId = 529;

  @override
  SearchParameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchParameter(
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
      version: fields[13] as String,
      elementVersion: fields[14] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      derivedFrom: fields[17] as String,
      status: fields[18] as String,
      elementStatus: fields[19] as Element,
      experimental: fields[20] as bool,
      elementExperimental: fields[21] as Element,
      date: fields[22] as DateTime,
      elementDate: fields[23] as Element,
      publisher: fields[24] as String,
      elementPublisher: fields[25] as Element,
      contact: (fields[26] as List)?.cast<ContactDetail>(),
      description: fields[27] as String,
      elementDescription: fields[28] as Element,
      useContext: (fields[29] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[30] as List)?.cast<CodeableConcept>(),
      purpose: fields[31] as String,
      elementPurpose: fields[32] as Element,
      code: fields[33] as String,
      elementCode: fields[34] as Element,
      base: (fields[35] as List)?.cast<String>(),
      elementBase: (fields[36] as List)?.cast<Element>(),
      type: fields[37] as String,
      elementType: fields[38] as Element,
      expression: fields[39] as String,
      elementExpression: fields[40] as Element,
      xpath: fields[41] as String,
      elementXpath: fields[42] as Element,
      xpathUsage: fields[43] as String,
      elementXpathUsage: fields[44] as Element,
      target: (fields[45] as List)?.cast<String>(),
      elementTarget: (fields[46] as List)?.cast<Element>(),
      multipleOr: fields[47] as bool,
      elementMultipleOr: fields[48] as Element,
      multipleAnd: fields[49] as bool,
      elementMultipleAnd: fields[50] as Element,
      comparator: (fields[51] as List)?.cast<String>(),
      elementComparator: (fields[52] as List)?.cast<Element>(),
      modifier: (fields[53] as List)?.cast<String>(),
      elementModifier: (fields[54] as List)?.cast<Element>(),
      chain: (fields[55] as List)?.cast<String>(),
      elementChain: (fields[56] as List)?.cast<Element>(),
      component: (fields[57] as List)?.cast<SearchParameter_Component>(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchParameter obj) {
    writer
      ..writeByte(58)
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
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.derivedFrom)
      ..writeByte(18)
      ..write(obj.status)
      ..writeByte(19)
      ..write(obj.elementStatus)
      ..writeByte(20)
      ..write(obj.experimental)
      ..writeByte(21)
      ..write(obj.elementExperimental)
      ..writeByte(22)
      ..write(obj.date)
      ..writeByte(23)
      ..write(obj.elementDate)
      ..writeByte(24)
      ..write(obj.publisher)
      ..writeByte(25)
      ..write(obj.elementPublisher)
      ..writeByte(26)
      ..write(obj.contact)
      ..writeByte(27)
      ..write(obj.description)
      ..writeByte(28)
      ..write(obj.elementDescription)
      ..writeByte(29)
      ..write(obj.useContext)
      ..writeByte(30)
      ..write(obj.jurisdiction)
      ..writeByte(31)
      ..write(obj.purpose)
      ..writeByte(32)
      ..write(obj.elementPurpose)
      ..writeByte(33)
      ..write(obj.code)
      ..writeByte(34)
      ..write(obj.elementCode)
      ..writeByte(35)
      ..write(obj.base)
      ..writeByte(36)
      ..write(obj.elementBase)
      ..writeByte(37)
      ..write(obj.type)
      ..writeByte(38)
      ..write(obj.elementType)
      ..writeByte(39)
      ..write(obj.expression)
      ..writeByte(40)
      ..write(obj.elementExpression)
      ..writeByte(41)
      ..write(obj.xpath)
      ..writeByte(42)
      ..write(obj.elementXpath)
      ..writeByte(43)
      ..write(obj.xpathUsage)
      ..writeByte(44)
      ..write(obj.elementXpathUsage)
      ..writeByte(45)
      ..write(obj.target)
      ..writeByte(46)
      ..write(obj.elementTarget)
      ..writeByte(47)
      ..write(obj.multipleOr)
      ..writeByte(48)
      ..write(obj.elementMultipleOr)
      ..writeByte(49)
      ..write(obj.multipleAnd)
      ..writeByte(50)
      ..write(obj.elementMultipleAnd)
      ..writeByte(51)
      ..write(obj.comparator)
      ..writeByte(52)
      ..write(obj.elementComparator)
      ..writeByte(53)
      ..write(obj.modifier)
      ..writeByte(54)
      ..write(obj.elementModifier)
      ..writeByte(55)
      ..write(obj.chain)
      ..writeByte(56)
      ..write(obj.elementChain)
      ..writeByte(57)
      ..write(obj.component);
  }
}

class SearchParameter_ComponentAdapter
    extends TypeAdapter<SearchParameter_Component> {
  @override
  final typeId = 530;

  @override
  SearchParameter_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchParameter_Component(
      fields[3] as String,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      expression: fields[4] as String,
      elementExpression: fields[5] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SearchParameter_Component obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.definition)
      ..writeByte(4)
      ..write(obj.expression)
      ..writeByte(5)
      ..write(obj.elementExpression);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchParameter _$SearchParameterFromJson(Map<String, dynamic> json) {
  return SearchParameter(
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
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    derivedFrom: json['derivedFrom'] as String,
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    base: (json['base'] as List)?.map((e) => e as String)?.toList(),
    elementBase: (json['elementBase'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    elementXpath: json['elementXpath'] == null
        ? null
        : Element.fromJson(json['elementXpath'] as Map<String, dynamic>),
    xpathUsage: json['xpathUsage'] as String,
    elementXpathUsage: json['elementXpathUsage'] == null
        ? null
        : Element.fromJson(json['elementXpathUsage'] as Map<String, dynamic>),
    target: (json['target'] as List)?.map((e) => e as String)?.toList(),
    elementTarget: (json['elementTarget'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    multipleOr: json['multipleOr'] as bool,
    elementMultipleOr: json['elementMultipleOr'] == null
        ? null
        : Element.fromJson(json['elementMultipleOr'] as Map<String, dynamic>),
    multipleAnd: json['multipleAnd'] as bool,
    elementMultipleAnd: json['elementMultipleAnd'] == null
        ? null
        : Element.fromJson(json['elementMultipleAnd'] as Map<String, dynamic>),
    comparator: (json['comparator'] as List)?.map((e) => e as String)?.toList(),
    elementComparator: (json['elementComparator'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifier: (json['modifier'] as List)?.map((e) => e as String)?.toList(),
    elementModifier: (json['elementModifier'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    chain: (json['chain'] as List)?.map((e) => e as String)?.toList(),
    elementChain: (json['elementChain'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : SearchParameter_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SearchParameterToJson(SearchParameter instance) =>
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
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'derivedFrom': instance.derivedFrom,
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
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'base': instance.base,
      'elementBase': instance.elementBase?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'xpath': instance.xpath,
      'elementXpath': instance.elementXpath?.toJson(),
      'xpathUsage': instance.xpathUsage,
      'elementXpathUsage': instance.elementXpathUsage?.toJson(),
      'target': instance.target,
      'elementTarget':
          instance.elementTarget?.map((e) => e?.toJson())?.toList(),
      'multipleOr': instance.multipleOr,
      'elementMultipleOr': instance.elementMultipleOr?.toJson(),
      'multipleAnd': instance.multipleAnd,
      'elementMultipleAnd': instance.elementMultipleAnd?.toJson(),
      'comparator': instance.comparator,
      'elementComparator':
          instance.elementComparator?.map((e) => e?.toJson())?.toList(),
      'modifier': instance.modifier,
      'elementModifier':
          instance.elementModifier?.map((e) => e?.toJson())?.toList(),
      'chain': instance.chain,
      'elementChain': instance.elementChain?.map((e) => e?.toJson())?.toList(),
      'component': instance.component?.map((e) => e?.toJson())?.toList(),
    };

SearchParameter_Component _$SearchParameter_ComponentFromJson(
    Map<String, dynamic> json) {
  return SearchParameter_Component(
    json['definition'] as String,
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchParameter_ComponentToJson(
        SearchParameter_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'definition': instance.definition,
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
    };
