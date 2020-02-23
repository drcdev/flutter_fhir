import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class StructureMap {
  static Future<StructureMap> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    Element elementUrl,
    List<Identifier> identifier,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    String copyright,
    Element elementCopyright,
    List<StructureMap_Structure> structure,
    List<String> import,
    List<StructureMap_Group> group,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap newStructureMap = new StructureMap(
      resourceType: 'StructureMap',
      id: id ?? await fhirDb.newResourceId('StructureMap'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      identifier: identifier,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      copyright: copyright,
      elementCopyright: elementCopyright,
      structure: structure,
      import: import,
      group: group,
    );
    newStructureMap.meta.createdAt = DateTime.now();
    newStructureMap.meta.lastUpdated = newStructureMap.meta.createdAt;
    int saved = await fhirDb.saveResource(newStructureMap);
    return newStructureMap;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'StructureMap';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  String url;
  @HiveField(12)
  Element elementUrl;
  @HiveField(13)
  List<Identifier> identifier;
  @HiveField(14)
  String version;
  @HiveField(15)
  Element elementVersion;
  @HiveField(16)
  String name;
  @HiveField(17)
  Element elementName;
  @HiveField(18)
  String title;
  @HiveField(19)
  Element elementTitle;
  @HiveField(20)
  String status;
  @HiveField(21)
  Element elementStatus;
  @HiveField(22)
  bool experimental;
  @HiveField(23)
  Element elementExperimental;
  @HiveField(24)
  DateTime date;
  @HiveField(25)
  Element elementDate;
  @HiveField(26)
  String publisher;
  @HiveField(27)
  Element elementPublisher;
  @HiveField(28)
  List<ContactDetail> contact;
  @HiveField(29)
  String description;
  @HiveField(30)
  Element elementDescription;
  @HiveField(31)
  List<UsageContext> useContext;
  @HiveField(32)
  List<CodeableConcept> jurisdiction;
  @HiveField(33)
  String purpose;
  @HiveField(34)
  Element elementPurpose;
  @HiveField(35)
  String copyright;
  @HiveField(36)
  Element elementCopyright;
  @HiveField(37)
  List<StructureMap_Structure> structure;
  @HiveField(38)
  List<String> import;
  @HiveField(39)
  List<StructureMap_Group> group;

  StructureMap({
    @required this.resourceType,
    this.id,
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
    this.copyright,
    this.elementCopyright,
    this.structure,
    this.import,
    @required this.group,
  });

  factory StructureMap.fromJson(Map<String, dynamic> json) =>
      _$StructureMapFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMapToJson(this);
}

class StructureMap_Structure {
  static Future<StructureMap_Structure> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    String mode,
    Element elementMode,
    String alias,
    Element elementAlias,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Structure newStructureMap_Structure =
        new StructureMap_Structure(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      mode: mode,
      elementMode: elementMode,
      alias: alias,
      elementAlias: elementAlias,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newStructureMap_Structure;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String url;
  @HiveField(4)
  String mode;
  @HiveField(5)
  Element elementMode;
  @HiveField(6)
  String alias;
  @HiveField(7)
  Element elementAlias;
  @HiveField(8)
  String documentation;
  @HiveField(9)
  Element elementDocumentation;

  StructureMap_Structure({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.url,
    this.mode,
    this.elementMode,
    this.alias,
    this.elementAlias,
    this.documentation,
    this.elementDocumentation,
  });

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_StructureFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_StructureToJson(this);
}

class StructureMap_Group {
  static Future<StructureMap_Group> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String extend,
    Element elementExtends,
    String typeMode,
    Element elementTypeMode,
    String documentation,
    Element elementDocumentation,
    List<StructureMap_Input> input,
    List<StructureMap_Rule> rule,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Group newStructureMap_Group = new StructureMap_Group(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      extend: extend,
      elementExtends: elementExtends,
      typeMode: typeMode,
      elementTypeMode: elementTypeMode,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      input: input,
      rule: rule,
    );
    return newStructureMap_Group;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String extend;
  @HiveField(6)
  Element elementExtends;
  @HiveField(7)
  String typeMode;
  @HiveField(8)
  Element elementTypeMode;
  @HiveField(9)
  String documentation;
  @HiveField(10)
  Element elementDocumentation;
  @HiveField(11)
  List<StructureMap_Input> input;
  @HiveField(12)
  List<StructureMap_Rule> rule;

  StructureMap_Group({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.extend,
    this.elementExtends,
    this.typeMode,
    this.elementTypeMode,
    this.documentation,
    this.elementDocumentation,
    @required this.input,
    @required this.rule,
  });

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_GroupToJson(this);
}

class StructureMap_Input {
  static Future<StructureMap_Input> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String type,
    Element elementType,
    String mode,
    Element elementMode,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Input newStructureMap_Input = new StructureMap_Input(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      type: type,
      elementType: elementType,
      mode: mode,
      elementMode: elementMode,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newStructureMap_Input;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  String type;
  @HiveField(6)
  Element elementType;
  @HiveField(7)
  String mode;
  @HiveField(8)
  Element elementMode;
  @HiveField(9)
  String documentation;
  @HiveField(10)
  Element elementDocumentation;

  StructureMap_Input({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation,
  });

  factory StructureMap_Input.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_InputFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_InputToJson(this);
}

class StructureMap_Rule {
  static Future<StructureMap_Rule> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    List<StructureMap_Source> source,
    List<StructureMap_Target> target,
    List<StructureMap_Rule> rule,
    List<StructureMap_Dependent> dependent,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Rule newStructureMap_Rule = new StructureMap_Rule(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      source: source,
      target: target,
      rule: rule,
      dependent: dependent,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newStructureMap_Rule;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  List<StructureMap_Source> source;
  @HiveField(6)
  List<StructureMap_Target> target;
  @HiveField(7)
  List<StructureMap_Rule> rule;
  @HiveField(8)
  List<StructureMap_Dependent> dependent;
  @HiveField(9)
  String documentation;
  @HiveField(10)
  Element elementDocumentation;

  StructureMap_Rule({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    @required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.elementDocumentation,
  });

  factory StructureMap_Rule.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_RuleToJson(this);
}

class StructureMap_Source {
  static Future<StructureMap_Source> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String context,
    Element elementContext,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
    String type,
    Element elementType,
    String defaultValueBase64Binary,
    Element elementDefaultValueBase64Binary,
    bool defaultValueBoolean,
    Element elementDefaultValueBoolean,
    String defaultValueCanonical,
    Element elementDefaultValueCanonical,
    String defaultValueCode,
    Element elementDefaultValueCode,
    String defaultValueDate,
    Element elementDefaultValueDate,
    String defaultValueDateTime,
    Element elementDefaultValueDateTime,
    int defaultValueDecimal,
    Element elementDefaultValueDecimal,
    String defaultValueId,
    Element elementDefaultValueId,
    String defaultValueInstant,
    Element elementDefaultValueInstant,
    int defaultValueInteger,
    Element elementDefaultValueInteger,
    String defaultValueMarkdown,
    Element elementDefaultValueMarkdown,
    String defaultValueOid,
    Element elementDefaultValueOid,
    int defaultValuePositiveInt,
    Element elementDefaultValuePositiveInt,
    String defaultValueString,
    Element elementDefaultValueString,
    String defaultValueTime,
    Element elementDefaultValueTime,
    int defaultValueUnsignedInt,
    Element elementDefaultValueUnsignedInt,
    String defaultValueUri,
    Element elementDefaultValueUri,
    String defaultValueUrl,
    Element elementDefaultValueUrl,
    String defaultValueUuid,
    Element elementDefaultValueUuid,
    Address defaultValueAddress,
    Age defaultValueAge,
    Annotation defaultValueAnnotation,
    Attachment defaultValueAttachment,
    CodeableConcept defaultValueCodeableConcept,
    Coding defaultValueCoding,
    ContactPoint defaultValueContactPoint,
    Count defaultValueCount,
    Distance defaultValueDistance,
    Duration defaultValueDuration,
    HumanName defaultValueHumanName,
    Identifier defaultValueIdentifier,
    Money defaultValueMoney,
    Period defaultValuePeriod,
    Quantity defaultValueQuantity,
    Range defaultValueRange,
    Ratio defaultValueRatio,
    Reference defaultValueReference,
    SampledData defaultValueSampledData,
    Signature defaultValueSignature,
    Timing defaultValueTiming,
    ContactDetail defaultValueContactDetail,
    Contributor defaultValueContributor,
    DataRequirement defaultValueDataRequirement,
    Expression defaultValueExpression,
    ParameterDefinition defaultValueParameterDefinition,
    RelatedArtifact defaultValueRelatedArtifact,
    TriggerDefinition defaultValueTriggerDefinition,
    UsageContext defaultValueUsageContext,
    Dosage defaultValueDosage,
    Meta defaultValueMeta,
    String element,
    Element elementElement,
    String listMode,
    Element elementListMode,
    String variable,
    Element elementVariable,
    String condition,
    Element elementCondition,
    String check,
    Element elementCheck,
    String logMessage,
    Element elementLogMessage,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Source newStructureMap_Source = new StructureMap_Source(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      context: context,
      elementContext: elementContext,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
      type: type,
      elementType: elementType,
      defaultValueBase64Binary: defaultValueBase64Binary,
      elementDefaultValueBase64Binary: elementDefaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean,
      elementDefaultValueBoolean: elementDefaultValueBoolean,
      defaultValueCanonical: defaultValueCanonical,
      elementDefaultValueCanonical: elementDefaultValueCanonical,
      defaultValueCode: defaultValueCode,
      elementDefaultValueCode: elementDefaultValueCode,
      defaultValueDate: defaultValueDate,
      elementDefaultValueDate: elementDefaultValueDate,
      defaultValueDateTime: defaultValueDateTime,
      elementDefaultValueDateTime: elementDefaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal,
      elementDefaultValueDecimal: elementDefaultValueDecimal,
      defaultValueId: defaultValueId,
      elementDefaultValueId: elementDefaultValueId,
      defaultValueInstant: defaultValueInstant,
      elementDefaultValueInstant: elementDefaultValueInstant,
      defaultValueInteger: defaultValueInteger,
      elementDefaultValueInteger: elementDefaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown,
      elementDefaultValueMarkdown: elementDefaultValueMarkdown,
      defaultValueOid: defaultValueOid,
      elementDefaultValueOid: elementDefaultValueOid,
      defaultValuePositiveInt: defaultValuePositiveInt,
      elementDefaultValuePositiveInt: elementDefaultValuePositiveInt,
      defaultValueString: defaultValueString,
      elementDefaultValueString: elementDefaultValueString,
      defaultValueTime: defaultValueTime,
      elementDefaultValueTime: elementDefaultValueTime,
      defaultValueUnsignedInt: defaultValueUnsignedInt,
      elementDefaultValueUnsignedInt: elementDefaultValueUnsignedInt,
      defaultValueUri: defaultValueUri,
      elementDefaultValueUri: elementDefaultValueUri,
      defaultValueUrl: defaultValueUrl,
      elementDefaultValueUrl: elementDefaultValueUrl,
      defaultValueUuid: defaultValueUuid,
      elementDefaultValueUuid: elementDefaultValueUuid,
      defaultValueAddress: defaultValueAddress,
      defaultValueAge: defaultValueAge,
      defaultValueAnnotation: defaultValueAnnotation,
      defaultValueAttachment: defaultValueAttachment,
      defaultValueCodeableConcept: defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding,
      defaultValueContactPoint: defaultValueContactPoint,
      defaultValueCount: defaultValueCount,
      defaultValueDistance: defaultValueDistance,
      defaultValueDuration: defaultValueDuration,
      defaultValueHumanName: defaultValueHumanName,
      defaultValueIdentifier: defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity,
      defaultValueRange: defaultValueRange,
      defaultValueRatio: defaultValueRatio,
      defaultValueReference: defaultValueReference,
      defaultValueSampledData: defaultValueSampledData,
      defaultValueSignature: defaultValueSignature,
      defaultValueTiming: defaultValueTiming,
      defaultValueContactDetail: defaultValueContactDetail,
      defaultValueContributor: defaultValueContributor,
      defaultValueDataRequirement: defaultValueDataRequirement,
      defaultValueExpression: defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition,
      defaultValueRelatedArtifact: defaultValueRelatedArtifact,
      defaultValueTriggerDefinition: defaultValueTriggerDefinition,
      defaultValueUsageContext: defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage,
      defaultValueMeta: defaultValueMeta,
      element: element,
      elementElement: elementElement,
      listMode: listMode,
      elementListMode: elementListMode,
      variable: variable,
      elementVariable: elementVariable,
      condition: condition,
      elementCondition: elementCondition,
      check: check,
      elementCheck: elementCheck,
      logMessage: logMessage,
      elementLogMessage: elementLogMessage,
    );
    return newStructureMap_Source;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String context;
  @HiveField(4)
  Element elementContext;
  @HiveField(5)
  int min;
  @HiveField(6)
  Element elementMin;
  @HiveField(7)
  String max;
  @HiveField(8)
  Element elementMax;
  @HiveField(9)
  String type;
  @HiveField(10)
  Element elementType;
  @HiveField(11)
  String defaultValueBase64Binary;
  @HiveField(12)
  Element elementDefaultValueBase64Binary;
  @HiveField(13)
  bool defaultValueBoolean;
  @HiveField(14)
  Element elementDefaultValueBoolean;
  @HiveField(15)
  String defaultValueCanonical;
  @HiveField(16)
  Element elementDefaultValueCanonical;
  @HiveField(17)
  String defaultValueCode;
  @HiveField(18)
  Element elementDefaultValueCode;
  @HiveField(19)
  String defaultValueDate;
  @HiveField(20)
  Element elementDefaultValueDate;
  @HiveField(21)
  String defaultValueDateTime;
  @HiveField(22)
  Element elementDefaultValueDateTime;
  @HiveField(23)
  int defaultValueDecimal;
  @HiveField(24)
  Element elementDefaultValueDecimal;
  @HiveField(25)
  String defaultValueId;
  @HiveField(26)
  Element elementDefaultValueId;
  @HiveField(27)
  String defaultValueInstant;
  @HiveField(28)
  Element elementDefaultValueInstant;
  @HiveField(29)
  int defaultValueInteger;
  @HiveField(30)
  Element elementDefaultValueInteger;
  @HiveField(31)
  String defaultValueMarkdown;
  @HiveField(32)
  Element elementDefaultValueMarkdown;
  @HiveField(33)
  String defaultValueOid;
  @HiveField(34)
  Element elementDefaultValueOid;
  @HiveField(35)
  int defaultValuePositiveInt;
  @HiveField(36)
  Element elementDefaultValuePositiveInt;
  @HiveField(37)
  String defaultValueString;
  @HiveField(38)
  Element elementDefaultValueString;
  @HiveField(39)
  String defaultValueTime;
  @HiveField(40)
  Element elementDefaultValueTime;
  @HiveField(41)
  int defaultValueUnsignedInt;
  @HiveField(42)
  Element elementDefaultValueUnsignedInt;
  @HiveField(43)
  String defaultValueUri;
  @HiveField(44)
  Element elementDefaultValueUri;
  @HiveField(45)
  String defaultValueUrl;
  @HiveField(46)
  Element elementDefaultValueUrl;
  @HiveField(47)
  String defaultValueUuid;
  @HiveField(48)
  Element elementDefaultValueUuid;
  @HiveField(49)
  Address defaultValueAddress;
  @HiveField(50)
  Age defaultValueAge;
  @HiveField(51)
  Annotation defaultValueAnnotation;
  @HiveField(52)
  Attachment defaultValueAttachment;
  @HiveField(53)
  CodeableConcept defaultValueCodeableConcept;
  @HiveField(54)
  Coding defaultValueCoding;
  @HiveField(55)
  ContactPoint defaultValueContactPoint;
  @HiveField(56)
  Count defaultValueCount;
  @HiveField(57)
  Distance defaultValueDistance;
  @HiveField(58)
  Duration defaultValueDuration;
  @HiveField(59)
  HumanName defaultValueHumanName;
  @HiveField(60)
  Identifier defaultValueIdentifier;
  @HiveField(61)
  Money defaultValueMoney;
  @HiveField(62)
  Period defaultValuePeriod;
  @HiveField(63)
  Quantity defaultValueQuantity;
  @HiveField(64)
  Range defaultValueRange;
  @HiveField(65)
  Ratio defaultValueRatio;
  @HiveField(66)
  Reference defaultValueReference;
  @HiveField(67)
  SampledData defaultValueSampledData;
  @HiveField(68)
  Signature defaultValueSignature;
  @HiveField(69)
  Timing defaultValueTiming;
  @HiveField(70)
  ContactDetail defaultValueContactDetail;
  @HiveField(71)
  Contributor defaultValueContributor;
  @HiveField(72)
  DataRequirement defaultValueDataRequirement;
  @HiveField(73)
  Expression defaultValueExpression;
  @HiveField(74)
  ParameterDefinition defaultValueParameterDefinition;
  @HiveField(75)
  RelatedArtifact defaultValueRelatedArtifact;
  @HiveField(76)
  TriggerDefinition defaultValueTriggerDefinition;
  @HiveField(77)
  UsageContext defaultValueUsageContext;
  @HiveField(78)
  Dosage defaultValueDosage;
  @HiveField(79)
  Meta defaultValueMeta;
  @HiveField(80)
  String element;
  @HiveField(81)
  Element elementElement;
  @HiveField(82)
  String listMode;
  @HiveField(83)
  Element elementListMode;
  @HiveField(84)
  String variable;
  @HiveField(85)
  Element elementVariable;
  @HiveField(86)
  String condition;
  @HiveField(87)
  Element elementCondition;
  @HiveField(88)
  String check;
  @HiveField(89)
  Element elementCheck;
  @HiveField(90)
  String logMessage;
  @HiveField(91)
  Element elementLogMessage;

  StructureMap_Source({
    this.id,
    this.extension,
    this.modifierExtension,
    this.context,
    this.elementContext,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.type,
    this.elementType,
    this.defaultValueBase64Binary,
    this.elementDefaultValueBase64Binary,
    this.defaultValueBoolean,
    this.elementDefaultValueBoolean,
    this.defaultValueCanonical,
    this.elementDefaultValueCanonical,
    this.defaultValueCode,
    this.elementDefaultValueCode,
    this.defaultValueDate,
    this.elementDefaultValueDate,
    this.defaultValueDateTime,
    this.elementDefaultValueDateTime,
    this.defaultValueDecimal,
    this.elementDefaultValueDecimal,
    this.defaultValueId,
    this.elementDefaultValueId,
    this.defaultValueInstant,
    this.elementDefaultValueInstant,
    this.defaultValueInteger,
    this.elementDefaultValueInteger,
    this.defaultValueMarkdown,
    this.elementDefaultValueMarkdown,
    this.defaultValueOid,
    this.elementDefaultValueOid,
    this.defaultValuePositiveInt,
    this.elementDefaultValuePositiveInt,
    this.defaultValueString,
    this.elementDefaultValueString,
    this.defaultValueTime,
    this.elementDefaultValueTime,
    this.defaultValueUnsignedInt,
    this.elementDefaultValueUnsignedInt,
    this.defaultValueUri,
    this.elementDefaultValueUri,
    this.defaultValueUrl,
    this.elementDefaultValueUrl,
    this.defaultValueUuid,
    this.elementDefaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueMeta,
    this.element,
    this.elementElement,
    this.listMode,
    this.elementListMode,
    this.variable,
    this.elementVariable,
    this.condition,
    this.elementCondition,
    this.check,
    this.elementCheck,
    this.logMessage,
    this.elementLogMessage,
  });

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_SourceToJson(this);
}

class StructureMap_Target {
  static Future<StructureMap_Target> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String context,
    Element elementContext,
    String contextType,
    Element elementContextType,
    String element,
    Element elementElement,
    String variable,
    Element elementVariable,
    String listMode,
    List<Element> elementListMode,
    String listRuleId,
    Element elementListRuleId,
    String transform,
    Element elementTransform,
    List<StructureMap_Parameter> parameter,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Target newStructureMap_Target = new StructureMap_Target(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      context: context,
      elementContext: elementContext,
      contextType: contextType,
      elementContextType: elementContextType,
      element: element,
      elementElement: elementElement,
      variable: variable,
      elementVariable: elementVariable,
      listMode: listMode,
      elementListMode: elementListMode,
      listRuleId: listRuleId,
      elementListRuleId: elementListRuleId,
      transform: transform,
      elementTransform: elementTransform,
      parameter: parameter,
    );
    return newStructureMap_Target;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String context;
  @HiveField(4)
  Element elementContext;
  @HiveField(5)
  String contextType;
  @HiveField(6)
  Element elementContextType;
  @HiveField(7)
  String element;
  @HiveField(8)
  Element elementElement;
  @HiveField(9)
  String variable;
  @HiveField(10)
  Element elementVariable;
  @HiveField(11)
  String listMode;
  @HiveField(12)
  List<Element> elementListMode;
  @HiveField(13)
  String listRuleId;
  @HiveField(14)
  Element elementListRuleId;
  @HiveField(15)
  String transform;
  @HiveField(16)
  Element elementTransform;
  @HiveField(17)
  List<StructureMap_Parameter> parameter;

  StructureMap_Target({
    this.id,
    this.extension,
    this.modifierExtension,
    this.context,
    this.elementContext,
    this.contextType,
    this.elementContextType,
    this.element,
    this.elementElement,
    this.variable,
    this.elementVariable,
    this.listMode,
    this.elementListMode,
    this.listRuleId,
    this.elementListRuleId,
    this.transform,
    this.elementTransform,
    this.parameter,
  });

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_TargetToJson(this);
}

class StructureMap_Parameter {
  static Future<StructureMap_Parameter> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String valueId,
    Element elementValueId,
    String valueString,
    Element elementValueString,
    bool valueBoolean,
    Element elementValueBoolean,
    int valueInteger,
    Element elementValueInteger,
    int valueDecimal,
    Element elementValueDecimal,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Parameter newStructureMap_Parameter =
        new StructureMap_Parameter(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      valueId: valueId,
      elementValueId: elementValueId,
      valueString: valueString,
      elementValueString: elementValueString,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueDecimal: valueDecimal,
      elementValueDecimal: elementValueDecimal,
    );
    return newStructureMap_Parameter;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String valueId;
  @HiveField(4)
  Element elementValueId;
  @HiveField(5)
  String valueString;
  @HiveField(6)
  Element elementValueString;
  @HiveField(7)
  bool valueBoolean;
  @HiveField(8)
  Element elementValueBoolean;
  @HiveField(9)
  int valueInteger;
  @HiveField(10)
  Element elementValueInteger;
  @HiveField(11)
  int valueDecimal;
  @HiveField(12)
  Element elementValueDecimal;

  StructureMap_Parameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueId,
    this.elementValueId,
    this.valueString,
    this.elementValueString,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueInteger,
    this.elementValueInteger,
    this.valueDecimal,
    this.elementValueDecimal,
  });

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_ParameterToJson(this);
}

class StructureMap_Dependent {
  static Future<StructureMap_Dependent> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    List<String> variable,
    List<Element> elementVariable,
  }) async {
    var fhirDb = new DatabaseHelper();
    StructureMap_Dependent newStructureMap_Dependent =
        new StructureMap_Dependent(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      variable: variable,
      elementVariable: elementVariable,
    );
    return newStructureMap_Dependent;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String name;
  @HiveField(4)
  Element elementName;
  @HiveField(5)
  List<String> variable;
  @HiveField(6)
  List<Element> elementVariable;

  StructureMap_Dependent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.variable,
    this.elementVariable,
  });

  factory StructureMap_Dependent.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_DependentFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_DependentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructureMap _$StructureMapFromJson(Map<String, dynamic> json) {
  return StructureMap(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
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
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    structure: (json['structure'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Structure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    import: (json['import'] as List)?.map((e) => e as String)?.toList(),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMapToJson(StructureMap instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull(
      'structure', instance.structure?.map((e) => e?.toJson())?.toList());
  writeNotNull('import', instance.import);
  writeNotNull('group', instance.group?.map((e) => e?.toJson())?.toList());
  return val;
}

StructureMap_Structure _$StructureMap_StructureFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Structure(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    alias: json['alias'] as String,
    elementAlias: json['elementAlias'] == null
        ? null
        : Element.fromJson(json['elementAlias'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_StructureToJson(
    StructureMap_Structure instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('alias', instance.alias);
  writeNotNull('elementAlias', instance.elementAlias?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

StructureMap_Group _$StructureMap_GroupFromJson(Map<String, dynamic> json) {
  return StructureMap_Group(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    extend: json['extend'] as String,
    elementExtends: json['elementExtends'] == null
        ? null
        : Element.fromJson(json['elementExtends'] as Map<String, dynamic>),
    typeMode: json['typeMode'] as String,
    elementTypeMode: json['elementTypeMode'] == null
        ? null
        : Element.fromJson(json['elementTypeMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    input: (json['input'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Input.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_GroupToJson(StructureMap_Group instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('extend', instance.extend);
  writeNotNull('elementExtends', instance.elementExtends?.toJson());
  writeNotNull('typeMode', instance.typeMode);
  writeNotNull('elementTypeMode', instance.elementTypeMode?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull('input', instance.input?.map((e) => e?.toJson())?.toList());
  writeNotNull('rule', instance.rule?.map((e) => e?.toJson())?.toList());
  return val;
}

StructureMap_Input _$StructureMap_InputFromJson(Map<String, dynamic> json) {
  return StructureMap_Input(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_InputToJson(StructureMap_Input instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

StructureMap_Rule _$StructureMap_RuleFromJson(Map<String, dynamic> json) {
  return StructureMap_Rule(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    source: (json['source'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Source.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    target: (json['target'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Target.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rule: (json['rule'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Rule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dependent: (json['dependent'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Dependent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_RuleToJson(StructureMap_Rule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  writeNotNull('target', instance.target?.map((e) => e?.toJson())?.toList());
  writeNotNull('rule', instance.rule?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'dependent', instance.dependent?.map((e) => e?.toJson())?.toList());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

StructureMap_Source _$StructureMap_SourceFromJson(Map<String, dynamic> json) {
  return StructureMap_Source(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] as String,
    elementContext: json['elementContext'] == null
        ? null
        : Element.fromJson(json['elementContext'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    elementDefaultValueBase64Binary: json['elementDefaultValueBase64Binary'] ==
            null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBase64Binary'] as Map<String, dynamic>),
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    elementDefaultValueBoolean: json['elementDefaultValueBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBoolean'] as Map<String, dynamic>),
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    elementDefaultValueCanonical: json['elementDefaultValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCanonical'] as Map<String, dynamic>),
    defaultValueCode: json['defaultValueCode'] as String,
    elementDefaultValueCode: json['elementDefaultValueCode'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCode'] as Map<String, dynamic>),
    defaultValueDate: json['defaultValueDate'] as String,
    elementDefaultValueDate: json['elementDefaultValueDate'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDate'] as Map<String, dynamic>),
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    elementDefaultValueDateTime: json['elementDefaultValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDateTime'] as Map<String, dynamic>),
    defaultValueDecimal: json['defaultValueDecimal'] as int,
    elementDefaultValueDecimal: json['elementDefaultValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDecimal'] as Map<String, dynamic>),
    defaultValueId: json['defaultValueId'] as String,
    elementDefaultValueId: json['elementDefaultValueId'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueId'] as Map<String, dynamic>),
    defaultValueInstant: json['defaultValueInstant'] as String,
    elementDefaultValueInstant: json['elementDefaultValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInstant'] as Map<String, dynamic>),
    defaultValueInteger: json['defaultValueInteger'] as int,
    elementDefaultValueInteger: json['elementDefaultValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInteger'] as Map<String, dynamic>),
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    elementDefaultValueMarkdown: json['elementDefaultValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueMarkdown'] as Map<String, dynamic>),
    defaultValueOid: json['defaultValueOid'] as String,
    elementDefaultValueOid: json['elementDefaultValueOid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueOid'] as Map<String, dynamic>),
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    elementDefaultValuePositiveInt:
        json['elementDefaultValuePositiveInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValuePositiveInt'] as Map<String, dynamic>),
    defaultValueString: json['defaultValueString'] as String,
    elementDefaultValueString: json['elementDefaultValueString'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueString'] as Map<String, dynamic>),
    defaultValueTime: json['defaultValueTime'] as String,
    elementDefaultValueTime: json['elementDefaultValueTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueTime'] as Map<String, dynamic>),
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    elementDefaultValueUnsignedInt:
        json['elementDefaultValueUnsignedInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValueUnsignedInt'] as Map<String, dynamic>),
    defaultValueUri: json['defaultValueUri'] as String,
    elementDefaultValueUri: json['elementDefaultValueUri'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUri'] as Map<String, dynamic>),
    defaultValueUrl: json['defaultValueUrl'] as String,
    elementDefaultValueUrl: json['elementDefaultValueUrl'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUrl'] as Map<String, dynamic>),
    defaultValueUuid: json['defaultValueUuid'] as String,
    elementDefaultValueUuid: json['elementDefaultValueUuid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUuid'] as Map<String, dynamic>),
    defaultValueAddress: json['defaultValueAddress'] == null
        ? null
        : Address.fromJson(json['defaultValueAddress'] as Map<String, dynamic>),
    defaultValueAge: json['defaultValueAge'] == null
        ? null
        : Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>),
    defaultValueAnnotation: json['defaultValueAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['defaultValueAnnotation'] as Map<String, dynamic>),
    defaultValueAttachment: json['defaultValueAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['defaultValueAttachment'] as Map<String, dynamic>),
    defaultValueCodeableConcept: json['defaultValueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['defaultValueCodeableConcept'] as Map<String, dynamic>),
    defaultValueCoding: json['defaultValueCoding'] == null
        ? null
        : Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>),
    defaultValueContactPoint: json['defaultValueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['defaultValueContactPoint'] as Map<String, dynamic>),
    defaultValueCount: json['defaultValueCount'] == null
        ? null
        : Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>),
    defaultValueDistance: json['defaultValueDistance'] == null
        ? null
        : Distance.fromJson(
            json['defaultValueDistance'] as Map<String, dynamic>),
    defaultValueDuration: json['defaultValueDuration'] == null
        ? null
        : Duration.fromJson(
            json['defaultValueDuration'] as Map<String, dynamic>),
    defaultValueHumanName: json['defaultValueHumanName'] == null
        ? null
        : HumanName.fromJson(
            json['defaultValueHumanName'] as Map<String, dynamic>),
    defaultValueIdentifier: json['defaultValueIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['defaultValueIdentifier'] as Map<String, dynamic>),
    defaultValueMoney: json['defaultValueMoney'] == null
        ? null
        : Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>),
    defaultValuePeriod: json['defaultValuePeriod'] == null
        ? null
        : Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>),
    defaultValueQuantity: json['defaultValueQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['defaultValueQuantity'] as Map<String, dynamic>),
    defaultValueRange: json['defaultValueRange'] == null
        ? null
        : Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>),
    defaultValueRatio: json['defaultValueRatio'] == null
        ? null
        : Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>),
    defaultValueReference: json['defaultValueReference'] == null
        ? null
        : Reference.fromJson(
            json['defaultValueReference'] as Map<String, dynamic>),
    defaultValueSampledData: json['defaultValueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['defaultValueSampledData'] as Map<String, dynamic>),
    defaultValueSignature: json['defaultValueSignature'] == null
        ? null
        : Signature.fromJson(
            json['defaultValueSignature'] as Map<String, dynamic>),
    defaultValueTiming: json['defaultValueTiming'] == null
        ? null
        : Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>),
    defaultValueContactDetail: json['defaultValueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['defaultValueContactDetail'] as Map<String, dynamic>),
    defaultValueContributor: json['defaultValueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['defaultValueContributor'] as Map<String, dynamic>),
    defaultValueDataRequirement: json['defaultValueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['defaultValueDataRequirement'] as Map<String, dynamic>),
    defaultValueExpression: json['defaultValueExpression'] == null
        ? null
        : Expression.fromJson(
            json['defaultValueExpression'] as Map<String, dynamic>),
    defaultValueParameterDefinition: json['defaultValueParameterDefinition'] ==
            null
        ? null
        : ParameterDefinition.fromJson(
            json['defaultValueParameterDefinition'] as Map<String, dynamic>),
    defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['defaultValueRelatedArtifact'] as Map<String, dynamic>),
    defaultValueTriggerDefinition: json['defaultValueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['defaultValueTriggerDefinition'] as Map<String, dynamic>),
    defaultValueUsageContext: json['defaultValueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['defaultValueUsageContext'] as Map<String, dynamic>),
    defaultValueDosage: json['defaultValueDosage'] == null
        ? null
        : Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>),
    defaultValueMeta: json['defaultValueMeta'] == null
        ? null
        : Meta.fromJson(json['defaultValueMeta'] as Map<String, dynamic>),
    element: json['element'] as String,
    elementElement: json['elementElement'] == null
        ? null
        : Element.fromJson(json['elementElement'] as Map<String, dynamic>),
    listMode: json['listMode'] as String,
    elementListMode: json['elementListMode'] == null
        ? null
        : Element.fromJson(json['elementListMode'] as Map<String, dynamic>),
    variable: json['variable'] as String,
    elementVariable: json['elementVariable'] == null
        ? null
        : Element.fromJson(json['elementVariable'] as Map<String, dynamic>),
    condition: json['condition'] as String,
    elementCondition: json['elementCondition'] == null
        ? null
        : Element.fromJson(json['elementCondition'] as Map<String, dynamic>),
    check: json['check'] as String,
    elementCheck: json['elementCheck'] == null
        ? null
        : Element.fromJson(json['elementCheck'] as Map<String, dynamic>),
    logMessage: json['logMessage'] as String,
    elementLogMessage: json['elementLogMessage'] == null
        ? null
        : Element.fromJson(json['elementLogMessage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_SourceToJson(StructureMap_Source instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('context', instance.context);
  writeNotNull('elementContext', instance.elementContext?.toJson());
  writeNotNull('min', instance.min);
  writeNotNull('elementMin', instance.elementMin?.toJson());
  writeNotNull('max', instance.max);
  writeNotNull('elementMax', instance.elementMax?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('defaultValueBase64Binary', instance.defaultValueBase64Binary);
  writeNotNull('elementDefaultValueBase64Binary',
      instance.elementDefaultValueBase64Binary?.toJson());
  writeNotNull('defaultValueBoolean', instance.defaultValueBoolean);
  writeNotNull('elementDefaultValueBoolean',
      instance.elementDefaultValueBoolean?.toJson());
  writeNotNull('defaultValueCanonical', instance.defaultValueCanonical);
  writeNotNull('elementDefaultValueCanonical',
      instance.elementDefaultValueCanonical?.toJson());
  writeNotNull('defaultValueCode', instance.defaultValueCode);
  writeNotNull(
      'elementDefaultValueCode', instance.elementDefaultValueCode?.toJson());
  writeNotNull('defaultValueDate', instance.defaultValueDate);
  writeNotNull(
      'elementDefaultValueDate', instance.elementDefaultValueDate?.toJson());
  writeNotNull('defaultValueDateTime', instance.defaultValueDateTime);
  writeNotNull('elementDefaultValueDateTime',
      instance.elementDefaultValueDateTime?.toJson());
  writeNotNull('defaultValueDecimal', instance.defaultValueDecimal);
  writeNotNull('elementDefaultValueDecimal',
      instance.elementDefaultValueDecimal?.toJson());
  writeNotNull('defaultValueId', instance.defaultValueId);
  writeNotNull(
      'elementDefaultValueId', instance.elementDefaultValueId?.toJson());
  writeNotNull('defaultValueInstant', instance.defaultValueInstant);
  writeNotNull('elementDefaultValueInstant',
      instance.elementDefaultValueInstant?.toJson());
  writeNotNull('defaultValueInteger', instance.defaultValueInteger);
  writeNotNull('elementDefaultValueInteger',
      instance.elementDefaultValueInteger?.toJson());
  writeNotNull('defaultValueMarkdown', instance.defaultValueMarkdown);
  writeNotNull('elementDefaultValueMarkdown',
      instance.elementDefaultValueMarkdown?.toJson());
  writeNotNull('defaultValueOid', instance.defaultValueOid);
  writeNotNull(
      'elementDefaultValueOid', instance.elementDefaultValueOid?.toJson());
  writeNotNull('defaultValuePositiveInt', instance.defaultValuePositiveInt);
  writeNotNull('elementDefaultValuePositiveInt',
      instance.elementDefaultValuePositiveInt?.toJson());
  writeNotNull('defaultValueString', instance.defaultValueString);
  writeNotNull('elementDefaultValueString',
      instance.elementDefaultValueString?.toJson());
  writeNotNull('defaultValueTime', instance.defaultValueTime);
  writeNotNull(
      'elementDefaultValueTime', instance.elementDefaultValueTime?.toJson());
  writeNotNull('defaultValueUnsignedInt', instance.defaultValueUnsignedInt);
  writeNotNull('elementDefaultValueUnsignedInt',
      instance.elementDefaultValueUnsignedInt?.toJson());
  writeNotNull('defaultValueUri', instance.defaultValueUri);
  writeNotNull(
      'elementDefaultValueUri', instance.elementDefaultValueUri?.toJson());
  writeNotNull('defaultValueUrl', instance.defaultValueUrl);
  writeNotNull(
      'elementDefaultValueUrl', instance.elementDefaultValueUrl?.toJson());
  writeNotNull('defaultValueUuid', instance.defaultValueUuid);
  writeNotNull(
      'elementDefaultValueUuid', instance.elementDefaultValueUuid?.toJson());
  writeNotNull('defaultValueAddress', instance.defaultValueAddress?.toJson());
  writeNotNull('defaultValueAge', instance.defaultValueAge?.toJson());
  writeNotNull(
      'defaultValueAnnotation', instance.defaultValueAnnotation?.toJson());
  writeNotNull(
      'defaultValueAttachment', instance.defaultValueAttachment?.toJson());
  writeNotNull('defaultValueCodeableConcept',
      instance.defaultValueCodeableConcept?.toJson());
  writeNotNull('defaultValueCoding', instance.defaultValueCoding?.toJson());
  writeNotNull(
      'defaultValueContactPoint', instance.defaultValueContactPoint?.toJson());
  writeNotNull('defaultValueCount', instance.defaultValueCount?.toJson());
  writeNotNull('defaultValueDistance', instance.defaultValueDistance?.toJson());
  writeNotNull('defaultValueDuration', instance.defaultValueDuration?.toJson());
  writeNotNull(
      'defaultValueHumanName', instance.defaultValueHumanName?.toJson());
  writeNotNull(
      'defaultValueIdentifier', instance.defaultValueIdentifier?.toJson());
  writeNotNull('defaultValueMoney', instance.defaultValueMoney?.toJson());
  writeNotNull('defaultValuePeriod', instance.defaultValuePeriod?.toJson());
  writeNotNull('defaultValueQuantity', instance.defaultValueQuantity?.toJson());
  writeNotNull('defaultValueRange', instance.defaultValueRange?.toJson());
  writeNotNull('defaultValueRatio', instance.defaultValueRatio?.toJson());
  writeNotNull(
      'defaultValueReference', instance.defaultValueReference?.toJson());
  writeNotNull(
      'defaultValueSampledData', instance.defaultValueSampledData?.toJson());
  writeNotNull(
      'defaultValueSignature', instance.defaultValueSignature?.toJson());
  writeNotNull('defaultValueTiming', instance.defaultValueTiming?.toJson());
  writeNotNull('defaultValueContactDetail',
      instance.defaultValueContactDetail?.toJson());
  writeNotNull(
      'defaultValueContributor', instance.defaultValueContributor?.toJson());
  writeNotNull('defaultValueDataRequirement',
      instance.defaultValueDataRequirement?.toJson());
  writeNotNull(
      'defaultValueExpression', instance.defaultValueExpression?.toJson());
  writeNotNull('defaultValueParameterDefinition',
      instance.defaultValueParameterDefinition?.toJson());
  writeNotNull('defaultValueRelatedArtifact',
      instance.defaultValueRelatedArtifact?.toJson());
  writeNotNull('defaultValueTriggerDefinition',
      instance.defaultValueTriggerDefinition?.toJson());
  writeNotNull(
      'defaultValueUsageContext', instance.defaultValueUsageContext?.toJson());
  writeNotNull('defaultValueDosage', instance.defaultValueDosage?.toJson());
  writeNotNull('defaultValueMeta', instance.defaultValueMeta?.toJson());
  writeNotNull('element', instance.element);
  writeNotNull('elementElement', instance.elementElement?.toJson());
  writeNotNull('listMode', instance.listMode);
  writeNotNull('elementListMode', instance.elementListMode?.toJson());
  writeNotNull('variable', instance.variable);
  writeNotNull('elementVariable', instance.elementVariable?.toJson());
  writeNotNull('condition', instance.condition);
  writeNotNull('elementCondition', instance.elementCondition?.toJson());
  writeNotNull('check', instance.check);
  writeNotNull('elementCheck', instance.elementCheck?.toJson());
  writeNotNull('logMessage', instance.logMessage);
  writeNotNull('elementLogMessage', instance.elementLogMessage?.toJson());
  return val;
}

StructureMap_Target _$StructureMap_TargetFromJson(Map<String, dynamic> json) {
  return StructureMap_Target(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    context: json['context'] as String,
    elementContext: json['elementContext'] == null
        ? null
        : Element.fromJson(json['elementContext'] as Map<String, dynamic>),
    contextType: json['contextType'] as String,
    elementContextType: json['elementContextType'] == null
        ? null
        : Element.fromJson(json['elementContextType'] as Map<String, dynamic>),
    element: json['element'] as String,
    elementElement: json['elementElement'] == null
        ? null
        : Element.fromJson(json['elementElement'] as Map<String, dynamic>),
    variable: json['variable'] as String,
    elementVariable: json['elementVariable'] == null
        ? null
        : Element.fromJson(json['elementVariable'] as Map<String, dynamic>),
    listMode: json['listMode'] as String,
    elementListMode: (json['elementListMode'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    listRuleId: json['listRuleId'] as String,
    elementListRuleId: json['elementListRuleId'] == null
        ? null
        : Element.fromJson(json['elementListRuleId'] as Map<String, dynamic>),
    transform: json['transform'] as String,
    elementTransform: json['elementTransform'] == null
        ? null
        : Element.fromJson(json['elementTransform'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : StructureMap_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_TargetToJson(StructureMap_Target instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('context', instance.context);
  writeNotNull('elementContext', instance.elementContext?.toJson());
  writeNotNull('contextType', instance.contextType);
  writeNotNull('elementContextType', instance.elementContextType?.toJson());
  writeNotNull('element', instance.element);
  writeNotNull('elementElement', instance.elementElement?.toJson());
  writeNotNull('variable', instance.variable);
  writeNotNull('elementVariable', instance.elementVariable?.toJson());
  writeNotNull('listMode', instance.listMode);
  writeNotNull('elementListMode',
      instance.elementListMode?.map((e) => e?.toJson())?.toList());
  writeNotNull('listRuleId', instance.listRuleId);
  writeNotNull('elementListRuleId', instance.elementListRuleId?.toJson());
  writeNotNull('transform', instance.transform);
  writeNotNull('elementTransform', instance.elementTransform?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e?.toJson())?.toList());
  return val;
}

StructureMap_Parameter _$StructureMap_ParameterFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StructureMap_ParameterToJson(
    StructureMap_Parameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('valueId', instance.valueId);
  writeNotNull('elementValueId', instance.elementValueId?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueInteger', instance.valueInteger);
  writeNotNull('elementValueInteger', instance.elementValueInteger?.toJson());
  writeNotNull('valueDecimal', instance.valueDecimal);
  writeNotNull('elementValueDecimal', instance.elementValueDecimal?.toJson());
  return val;
}

StructureMap_Dependent _$StructureMap_DependentFromJson(
    Map<String, dynamic> json) {
  return StructureMap_Dependent(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    variable: (json['variable'] as List)?.map((e) => e as String)?.toList(),
    elementVariable: (json['elementVariable'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StructureMap_DependentToJson(
    StructureMap_Dependent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('variable', instance.variable);
  writeNotNull('elementVariable',
      instance.elementVariable?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StructureMapAdapter extends TypeAdapter<StructureMap> {
  @override
  StructureMap read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap(
      resourceType: fields[0] as String,
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
      name: fields[16] as String,
      elementName: fields[17] as Element,
      title: fields[18] as String,
      elementTitle: fields[19] as Element,
      status: fields[20] as String,
      elementStatus: fields[21] as Element,
      experimental: fields[22] as bool,
      elementExperimental: fields[23] as Element,
      date: fields[24] as DateTime,
      elementDate: fields[25] as Element,
      publisher: fields[26] as String,
      elementPublisher: fields[27] as Element,
      contact: (fields[28] as List)?.cast<ContactDetail>(),
      description: fields[29] as String,
      elementDescription: fields[30] as Element,
      useContext: (fields[31] as List)?.cast<UsageContext>(),
      jurisdiction: (fields[32] as List)?.cast<CodeableConcept>(),
      purpose: fields[33] as String,
      elementPurpose: fields[34] as Element,
      copyright: fields[35] as String,
      elementCopyright: fields[36] as Element,
      structure: (fields[37] as List)?.cast<StructureMap_Structure>(),
      import: (fields[38] as List)?.cast<String>(),
      group: (fields[39] as List)?.cast<StructureMap_Group>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap obj) {
    writer
      ..writeByte(40)
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
      ..write(obj.name)
      ..writeByte(17)
      ..write(obj.elementName)
      ..writeByte(18)
      ..write(obj.title)
      ..writeByte(19)
      ..write(obj.elementTitle)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
      ..write(obj.elementStatus)
      ..writeByte(22)
      ..write(obj.experimental)
      ..writeByte(23)
      ..write(obj.elementExperimental)
      ..writeByte(24)
      ..write(obj.date)
      ..writeByte(25)
      ..write(obj.elementDate)
      ..writeByte(26)
      ..write(obj.publisher)
      ..writeByte(27)
      ..write(obj.elementPublisher)
      ..writeByte(28)
      ..write(obj.contact)
      ..writeByte(29)
      ..write(obj.description)
      ..writeByte(30)
      ..write(obj.elementDescription)
      ..writeByte(31)
      ..write(obj.useContext)
      ..writeByte(32)
      ..write(obj.jurisdiction)
      ..writeByte(33)
      ..write(obj.purpose)
      ..writeByte(34)
      ..write(obj.elementPurpose)
      ..writeByte(35)
      ..write(obj.copyright)
      ..writeByte(36)
      ..write(obj.elementCopyright)
      ..writeByte(37)
      ..write(obj.structure)
      ..writeByte(38)
      ..write(obj.import)
      ..writeByte(39)
      ..write(obj.group);
  }
}

class StructureMap_StructureAdapter
    extends TypeAdapter<StructureMap_Structure> {
  @override
  StructureMap_Structure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Structure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      url: fields[3] as String,
      mode: fields[4] as String,
      elementMode: fields[5] as Element,
      alias: fields[6] as String,
      elementAlias: fields[7] as Element,
      documentation: fields[8] as String,
      elementDocumentation: fields[9] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Structure obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.mode)
      ..writeByte(5)
      ..write(obj.elementMode)
      ..writeByte(6)
      ..write(obj.alias)
      ..writeByte(7)
      ..write(obj.elementAlias)
      ..writeByte(8)
      ..write(obj.documentation)
      ..writeByte(9)
      ..write(obj.elementDocumentation);
  }
}

class StructureMap_GroupAdapter extends TypeAdapter<StructureMap_Group> {
  @override
  StructureMap_Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Group(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      extend: fields[5] as String,
      elementExtends: fields[6] as Element,
      typeMode: fields[7] as String,
      elementTypeMode: fields[8] as Element,
      documentation: fields[9] as String,
      elementDocumentation: fields[10] as Element,
      input: (fields[11] as List)?.cast<StructureMap_Input>(),
      rule: (fields[12] as List)?.cast<StructureMap_Rule>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Group obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.extend)
      ..writeByte(6)
      ..write(obj.elementExtends)
      ..writeByte(7)
      ..write(obj.typeMode)
      ..writeByte(8)
      ..write(obj.elementTypeMode)
      ..writeByte(9)
      ..write(obj.documentation)
      ..writeByte(10)
      ..write(obj.elementDocumentation)
      ..writeByte(11)
      ..write(obj.input)
      ..writeByte(12)
      ..write(obj.rule);
  }
}

class StructureMap_InputAdapter extends TypeAdapter<StructureMap_Input> {
  @override
  StructureMap_Input read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Input(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
      mode: fields[7] as String,
      elementMode: fields[8] as Element,
      documentation: fields[9] as String,
      elementDocumentation: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Input obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType)
      ..writeByte(7)
      ..write(obj.mode)
      ..writeByte(8)
      ..write(obj.elementMode)
      ..writeByte(9)
      ..write(obj.documentation)
      ..writeByte(10)
      ..write(obj.elementDocumentation);
  }
}

class StructureMap_RuleAdapter extends TypeAdapter<StructureMap_Rule> {
  @override
  StructureMap_Rule read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Rule(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      source: (fields[5] as List)?.cast<StructureMap_Source>(),
      target: (fields[6] as List)?.cast<StructureMap_Target>(),
      rule: (fields[7] as List)?.cast<StructureMap_Rule>(),
      dependent: (fields[8] as List)?.cast<StructureMap_Dependent>(),
      documentation: fields[9] as String,
      elementDocumentation: fields[10] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Rule obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.source)
      ..writeByte(6)
      ..write(obj.target)
      ..writeByte(7)
      ..write(obj.rule)
      ..writeByte(8)
      ..write(obj.dependent)
      ..writeByte(9)
      ..write(obj.documentation)
      ..writeByte(10)
      ..write(obj.elementDocumentation);
  }
}

class StructureMap_SourceAdapter extends TypeAdapter<StructureMap_Source> {
  @override
  StructureMap_Source read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Source(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      context: fields[3] as String,
      elementContext: fields[4] as Element,
      min: fields[5] as int,
      elementMin: fields[6] as Element,
      max: fields[7] as String,
      elementMax: fields[8] as Element,
      type: fields[9] as String,
      elementType: fields[10] as Element,
      defaultValueBase64Binary: fields[11] as String,
      elementDefaultValueBase64Binary: fields[12] as Element,
      defaultValueBoolean: fields[13] as bool,
      elementDefaultValueBoolean: fields[14] as Element,
      defaultValueCanonical: fields[15] as String,
      elementDefaultValueCanonical: fields[16] as Element,
      defaultValueCode: fields[17] as String,
      elementDefaultValueCode: fields[18] as Element,
      defaultValueDate: fields[19] as String,
      elementDefaultValueDate: fields[20] as Element,
      defaultValueDateTime: fields[21] as String,
      elementDefaultValueDateTime: fields[22] as Element,
      defaultValueDecimal: fields[23] as int,
      elementDefaultValueDecimal: fields[24] as Element,
      defaultValueId: fields[25] as String,
      elementDefaultValueId: fields[26] as Element,
      defaultValueInstant: fields[27] as String,
      elementDefaultValueInstant: fields[28] as Element,
      defaultValueInteger: fields[29] as int,
      elementDefaultValueInteger: fields[30] as Element,
      defaultValueMarkdown: fields[31] as String,
      elementDefaultValueMarkdown: fields[32] as Element,
      defaultValueOid: fields[33] as String,
      elementDefaultValueOid: fields[34] as Element,
      defaultValuePositiveInt: fields[35] as int,
      elementDefaultValuePositiveInt: fields[36] as Element,
      defaultValueString: fields[37] as String,
      elementDefaultValueString: fields[38] as Element,
      defaultValueTime: fields[39] as String,
      elementDefaultValueTime: fields[40] as Element,
      defaultValueUnsignedInt: fields[41] as int,
      elementDefaultValueUnsignedInt: fields[42] as Element,
      defaultValueUri: fields[43] as String,
      elementDefaultValueUri: fields[44] as Element,
      defaultValueUrl: fields[45] as String,
      elementDefaultValueUrl: fields[46] as Element,
      defaultValueUuid: fields[47] as String,
      elementDefaultValueUuid: fields[48] as Element,
      defaultValueAddress: fields[49] as Address,
      defaultValueAge: fields[50] as Age,
      defaultValueAnnotation: fields[51] as Annotation,
      defaultValueAttachment: fields[52] as Attachment,
      defaultValueCodeableConcept: fields[53] as CodeableConcept,
      defaultValueCoding: fields[54] as Coding,
      defaultValueContactPoint: fields[55] as ContactPoint,
      defaultValueCount: fields[56] as Count,
      defaultValueDistance: fields[57] as Distance,
      defaultValueDuration: fields[58] as Duration,
      defaultValueHumanName: fields[59] as HumanName,
      defaultValueIdentifier: fields[60] as Identifier,
      defaultValueMoney: fields[61] as Money,
      defaultValuePeriod: fields[62] as Period,
      defaultValueQuantity: fields[63] as Quantity,
      defaultValueRange: fields[64] as Range,
      defaultValueRatio: fields[65] as Ratio,
      defaultValueReference: fields[66] as Reference,
      defaultValueSampledData: fields[67] as SampledData,
      defaultValueSignature: fields[68] as Signature,
      defaultValueTiming: fields[69] as Timing,
      defaultValueContactDetail: fields[70] as ContactDetail,
      defaultValueContributor: fields[71] as Contributor,
      defaultValueDataRequirement: fields[72] as DataRequirement,
      defaultValueExpression: fields[73] as Expression,
      defaultValueParameterDefinition: fields[74] as ParameterDefinition,
      defaultValueRelatedArtifact: fields[75] as RelatedArtifact,
      defaultValueTriggerDefinition: fields[76] as TriggerDefinition,
      defaultValueUsageContext: fields[77] as UsageContext,
      defaultValueDosage: fields[78] as Dosage,
      defaultValueMeta: fields[79] as Meta,
      element: fields[80] as String,
      elementElement: fields[81] as Element,
      listMode: fields[82] as String,
      elementListMode: fields[83] as Element,
      variable: fields[84] as String,
      elementVariable: fields[85] as Element,
      condition: fields[86] as String,
      elementCondition: fields[87] as Element,
      check: fields[88] as String,
      elementCheck: fields[89] as Element,
      logMessage: fields[90] as String,
      elementLogMessage: fields[91] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Source obj) {
    writer
      ..writeByte(92)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.context)
      ..writeByte(4)
      ..write(obj.elementContext)
      ..writeByte(5)
      ..write(obj.min)
      ..writeByte(6)
      ..write(obj.elementMin)
      ..writeByte(7)
      ..write(obj.max)
      ..writeByte(8)
      ..write(obj.elementMax)
      ..writeByte(9)
      ..write(obj.type)
      ..writeByte(10)
      ..write(obj.elementType)
      ..writeByte(11)
      ..write(obj.defaultValueBase64Binary)
      ..writeByte(12)
      ..write(obj.elementDefaultValueBase64Binary)
      ..writeByte(13)
      ..write(obj.defaultValueBoolean)
      ..writeByte(14)
      ..write(obj.elementDefaultValueBoolean)
      ..writeByte(15)
      ..write(obj.defaultValueCanonical)
      ..writeByte(16)
      ..write(obj.elementDefaultValueCanonical)
      ..writeByte(17)
      ..write(obj.defaultValueCode)
      ..writeByte(18)
      ..write(obj.elementDefaultValueCode)
      ..writeByte(19)
      ..write(obj.defaultValueDate)
      ..writeByte(20)
      ..write(obj.elementDefaultValueDate)
      ..writeByte(21)
      ..write(obj.defaultValueDateTime)
      ..writeByte(22)
      ..write(obj.elementDefaultValueDateTime)
      ..writeByte(23)
      ..write(obj.defaultValueDecimal)
      ..writeByte(24)
      ..write(obj.elementDefaultValueDecimal)
      ..writeByte(25)
      ..write(obj.defaultValueId)
      ..writeByte(26)
      ..write(obj.elementDefaultValueId)
      ..writeByte(27)
      ..write(obj.defaultValueInstant)
      ..writeByte(28)
      ..write(obj.elementDefaultValueInstant)
      ..writeByte(29)
      ..write(obj.defaultValueInteger)
      ..writeByte(30)
      ..write(obj.elementDefaultValueInteger)
      ..writeByte(31)
      ..write(obj.defaultValueMarkdown)
      ..writeByte(32)
      ..write(obj.elementDefaultValueMarkdown)
      ..writeByte(33)
      ..write(obj.defaultValueOid)
      ..writeByte(34)
      ..write(obj.elementDefaultValueOid)
      ..writeByte(35)
      ..write(obj.defaultValuePositiveInt)
      ..writeByte(36)
      ..write(obj.elementDefaultValuePositiveInt)
      ..writeByte(37)
      ..write(obj.defaultValueString)
      ..writeByte(38)
      ..write(obj.elementDefaultValueString)
      ..writeByte(39)
      ..write(obj.defaultValueTime)
      ..writeByte(40)
      ..write(obj.elementDefaultValueTime)
      ..writeByte(41)
      ..write(obj.defaultValueUnsignedInt)
      ..writeByte(42)
      ..write(obj.elementDefaultValueUnsignedInt)
      ..writeByte(43)
      ..write(obj.defaultValueUri)
      ..writeByte(44)
      ..write(obj.elementDefaultValueUri)
      ..writeByte(45)
      ..write(obj.defaultValueUrl)
      ..writeByte(46)
      ..write(obj.elementDefaultValueUrl)
      ..writeByte(47)
      ..write(obj.defaultValueUuid)
      ..writeByte(48)
      ..write(obj.elementDefaultValueUuid)
      ..writeByte(49)
      ..write(obj.defaultValueAddress)
      ..writeByte(50)
      ..write(obj.defaultValueAge)
      ..writeByte(51)
      ..write(obj.defaultValueAnnotation)
      ..writeByte(52)
      ..write(obj.defaultValueAttachment)
      ..writeByte(53)
      ..write(obj.defaultValueCodeableConcept)
      ..writeByte(54)
      ..write(obj.defaultValueCoding)
      ..writeByte(55)
      ..write(obj.defaultValueContactPoint)
      ..writeByte(56)
      ..write(obj.defaultValueCount)
      ..writeByte(57)
      ..write(obj.defaultValueDistance)
      ..writeByte(58)
      ..write(obj.defaultValueDuration)
      ..writeByte(59)
      ..write(obj.defaultValueHumanName)
      ..writeByte(60)
      ..write(obj.defaultValueIdentifier)
      ..writeByte(61)
      ..write(obj.defaultValueMoney)
      ..writeByte(62)
      ..write(obj.defaultValuePeriod)
      ..writeByte(63)
      ..write(obj.defaultValueQuantity)
      ..writeByte(64)
      ..write(obj.defaultValueRange)
      ..writeByte(65)
      ..write(obj.defaultValueRatio)
      ..writeByte(66)
      ..write(obj.defaultValueReference)
      ..writeByte(67)
      ..write(obj.defaultValueSampledData)
      ..writeByte(68)
      ..write(obj.defaultValueSignature)
      ..writeByte(69)
      ..write(obj.defaultValueTiming)
      ..writeByte(70)
      ..write(obj.defaultValueContactDetail)
      ..writeByte(71)
      ..write(obj.defaultValueContributor)
      ..writeByte(72)
      ..write(obj.defaultValueDataRequirement)
      ..writeByte(73)
      ..write(obj.defaultValueExpression)
      ..writeByte(74)
      ..write(obj.defaultValueParameterDefinition)
      ..writeByte(75)
      ..write(obj.defaultValueRelatedArtifact)
      ..writeByte(76)
      ..write(obj.defaultValueTriggerDefinition)
      ..writeByte(77)
      ..write(obj.defaultValueUsageContext)
      ..writeByte(78)
      ..write(obj.defaultValueDosage)
      ..writeByte(79)
      ..write(obj.defaultValueMeta)
      ..writeByte(80)
      ..write(obj.element)
      ..writeByte(81)
      ..write(obj.elementElement)
      ..writeByte(82)
      ..write(obj.listMode)
      ..writeByte(83)
      ..write(obj.elementListMode)
      ..writeByte(84)
      ..write(obj.variable)
      ..writeByte(85)
      ..write(obj.elementVariable)
      ..writeByte(86)
      ..write(obj.condition)
      ..writeByte(87)
      ..write(obj.elementCondition)
      ..writeByte(88)
      ..write(obj.check)
      ..writeByte(89)
      ..write(obj.elementCheck)
      ..writeByte(90)
      ..write(obj.logMessage)
      ..writeByte(91)
      ..write(obj.elementLogMessage);
  }
}

class StructureMap_TargetAdapter extends TypeAdapter<StructureMap_Target> {
  @override
  StructureMap_Target read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Target(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      context: fields[3] as String,
      elementContext: fields[4] as Element,
      contextType: fields[5] as String,
      elementContextType: fields[6] as Element,
      element: fields[7] as String,
      elementElement: fields[8] as Element,
      variable: fields[9] as String,
      elementVariable: fields[10] as Element,
      listMode: fields[11] as String,
      elementListMode: (fields[12] as List)?.cast<Element>(),
      listRuleId: fields[13] as String,
      elementListRuleId: fields[14] as Element,
      transform: fields[15] as String,
      elementTransform: fields[16] as Element,
      parameter: (fields[17] as List)?.cast<StructureMap_Parameter>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Target obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.context)
      ..writeByte(4)
      ..write(obj.elementContext)
      ..writeByte(5)
      ..write(obj.contextType)
      ..writeByte(6)
      ..write(obj.elementContextType)
      ..writeByte(7)
      ..write(obj.element)
      ..writeByte(8)
      ..write(obj.elementElement)
      ..writeByte(9)
      ..write(obj.variable)
      ..writeByte(10)
      ..write(obj.elementVariable)
      ..writeByte(11)
      ..write(obj.listMode)
      ..writeByte(12)
      ..write(obj.elementListMode)
      ..writeByte(13)
      ..write(obj.listRuleId)
      ..writeByte(14)
      ..write(obj.elementListRuleId)
      ..writeByte(15)
      ..write(obj.transform)
      ..writeByte(16)
      ..write(obj.elementTransform)
      ..writeByte(17)
      ..write(obj.parameter);
  }
}

class StructureMap_ParameterAdapter
    extends TypeAdapter<StructureMap_Parameter> {
  @override
  StructureMap_Parameter read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Parameter(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      valueId: fields[3] as String,
      elementValueId: fields[4] as Element,
      valueString: fields[5] as String,
      elementValueString: fields[6] as Element,
      valueBoolean: fields[7] as bool,
      elementValueBoolean: fields[8] as Element,
      valueInteger: fields[9] as int,
      elementValueInteger: fields[10] as Element,
      valueDecimal: fields[11] as int,
      elementValueDecimal: fields[12] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Parameter obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.valueId)
      ..writeByte(4)
      ..write(obj.elementValueId)
      ..writeByte(5)
      ..write(obj.valueString)
      ..writeByte(6)
      ..write(obj.elementValueString)
      ..writeByte(7)
      ..write(obj.valueBoolean)
      ..writeByte(8)
      ..write(obj.elementValueBoolean)
      ..writeByte(9)
      ..write(obj.valueInteger)
      ..writeByte(10)
      ..write(obj.elementValueInteger)
      ..writeByte(11)
      ..write(obj.valueDecimal)
      ..writeByte(12)
      ..write(obj.elementValueDecimal);
  }
}

class StructureMap_DependentAdapter
    extends TypeAdapter<StructureMap_Dependent> {
  @override
  StructureMap_Dependent read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StructureMap_Dependent(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      name: fields[3] as String,
      elementName: fields[4] as Element,
      variable: (fields[5] as List)?.cast<String>(),
      elementVariable: (fields[6] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, StructureMap_Dependent obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.elementName)
      ..writeByte(5)
      ..write(obj.variable)
      ..writeByte(6)
      ..write(obj.elementVariable);
  }
}
