import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
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

@JsonSerializable(explicitToJson: true)
class StructureMap {


	static Future<StructureMap> newInstance({
		String  resourceType,
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
		List<StructureMap_Group> group}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap newStructureMap = new StructureMap(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('StructureMap'),
			meta: meta,
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
	int saved = await fhirDb.saveResource(newStructureMap);
	return newStructureMap;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String resourceType= 'StructureMap';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  List<Identifier> identifier;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String status; // <code> enum: draft/active/retired/unknown;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  String copyright;
  Element elementCopyright;
  List<StructureMap_Structure> structure;
  List<String> import;
  List<StructureMap_Group> group;

StructureMap(
  {@required this.resourceType,
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
    @required this.group
    });

  factory StructureMap.fromJson(Map<String, dynamic> json) => _$StructureMapFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMapToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementDocumentation}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Structure newStructureMap_Structure = new StructureMap_Structure(
			id: await fhirDb.newResourceId('StructureMap_Structure'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  String mode; // <code> enum: source/queried/target/produced;
  Element elementMode;
  String alias;
  Element elementAlias;
  String documentation;
  Element elementDocumentation;

StructureMap_Structure(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.url,
    this.mode,
    this.elementMode,
    this.alias,
    this.elementAlias,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) => _$StructureMap_StructureFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_StructureToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<StructureMap_Rule> rule}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Group newStructureMap_Group = new StructureMap_Group(
			id: await fhirDb.newResourceId('StructureMap_Group'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String extend;
  Element elementExtends;
  String typeMode; // <code> enum: none/types/type-and-types;
  Element elementTypeMode;
  String documentation;
  Element elementDocumentation;
  List<StructureMap_Input> input;
  List<StructureMap_Rule> rule;

StructureMap_Group(
  {this.id,
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
    @required this.rule
    });

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) => _$StructureMap_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementDocumentation}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Input newStructureMap_Input = new StructureMap_Input(
			id: await fhirDb.newResourceId('StructureMap_Input'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String type;
  Element elementType;
  String mode; // <code> enum: source/target;
  Element elementMode;
  String documentation;
  Element elementDocumentation;

StructureMap_Input(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Input.fromJson(Map<String, dynamic> json) => _$StructureMap_InputFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_InputToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementDocumentation}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Rule newStructureMap_Rule = new StructureMap_Rule(
			id: await fhirDb.newResourceId('StructureMap_Rule'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  List<StructureMap_Source> source;
  List<StructureMap_Target> target;
  List<StructureMap_Rule> rule;
  List<StructureMap_Dependent> dependent;
  String documentation;
  Element elementDocumentation;

StructureMap_Rule(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    @required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.elementDocumentation
    });

  factory StructureMap_Rule.fromJson(Map<String, dynamic> json) => _$StructureMap_RuleFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_RuleToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementLogMessage}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Source newStructureMap_Source = new StructureMap_Source(
			id: await fhirDb.newResourceId('StructureMap_Source'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String context;
  Element elementContext;
  int min;
  Element elementMin;
  String max;
  Element elementMax;
  String type;
  Element elementType;
  String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
  Element elementDefaultValueBase64Binary;
  bool defaultValueBoolean; //  pattern: ^true|false$
  Element elementDefaultValueBoolean;
  String defaultValueCanonical; //  pattern: ^\S*$
  Element elementDefaultValueCanonical;
  String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
  Element elementDefaultValueCode;
  String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementDefaultValueDate;
  String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
  Element elementDefaultValueDateTime;
  int defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementDefaultValueDecimal;
  String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
  Element elementDefaultValueId;
  String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
  Element elementDefaultValueInstant;
  int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementDefaultValueInteger;
  String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$
  Element elementDefaultValueMarkdown;
  String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
  Element elementDefaultValueOid;
  int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$
  Element elementDefaultValuePositiveInt;
  String defaultValueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementDefaultValueString;
  String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
  Element elementDefaultValueTime;
  int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
  Element elementDefaultValueUnsignedInt;
  String defaultValueUri; //  pattern: ^\S*$
  Element elementDefaultValueUri;
  String defaultValueUrl; //  pattern: ^\S*$
  Element elementDefaultValueUrl;
  String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
  Element elementDefaultValueUuid;
  Address defaultValueAddress;
  Age defaultValueAge;
  Annotation defaultValueAnnotation;
  Attachment defaultValueAttachment;
  CodeableConcept defaultValueCodeableConcept;
  Coding defaultValueCoding;
  ContactPoint defaultValueContactPoint;
  Count defaultValueCount;
  Distance defaultValueDistance;
  Duration defaultValueDuration;
  HumanName defaultValueHumanName;
  Identifier defaultValueIdentifier;
  Money defaultValueMoney;
  Period defaultValuePeriod;
  Quantity defaultValueQuantity;
  Range defaultValueRange;
  Ratio defaultValueRatio;
  Reference defaultValueReference;
  SampledData defaultValueSampledData;
  Signature defaultValueSignature;
  Timing defaultValueTiming;
  ContactDetail defaultValueContactDetail;
  Contributor defaultValueContributor;
  DataRequirement defaultValueDataRequirement;
  Expression defaultValueExpression;
  ParameterDefinition defaultValueParameterDefinition;
  RelatedArtifact defaultValueRelatedArtifact;
  TriggerDefinition defaultValueTriggerDefinition;
  UsageContext defaultValueUsageContext;
  Dosage defaultValueDosage;
  Meta defaultValueMeta;
  String element;
  Element elementElement;
  String listMode; // <code> enum: first/not_first/last/not_last/only_one;
  Element elementListMode;
  String variable;
  Element elementVariable;
  String condition;
  Element elementCondition;
  String check;
  Element elementCheck;
  String logMessage;
  Element elementLogMessage;

StructureMap_Source(
  {this.id,
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
    this.elementLogMessage
    });

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) => _$StructureMap_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		List<String> listMode,
		List<Element> elementListMode,
		String listRuleId,
		Element elementListRuleId,
		String transform,
		Element elementTransform,
		List<StructureMap_Parameter> parameter}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Target newStructureMap_Target = new StructureMap_Target(
			id: await fhirDb.newResourceId('StructureMap_Target'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String context;
  Element elementContext;
  String contextType; // <code> enum: type/variable;
  Element elementContextType;
  String element;
  Element elementElement;
  String variable;
  Element elementVariable;
  List<String> listMode; // <code> enum: first/share/last/collate> listMode;
  List<Element> elementListMode;
  String listRuleId;
  Element elementListRuleId;
  String transform; // <code> enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp;
  Element elementTransform;
  List<StructureMap_Parameter> parameter;

StructureMap_Target(
  {this.id,
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
    this.parameter
    });

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) => _$StructureMap_TargetFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
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
		Element elementValueDecimal}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Parameter newStructureMap_Parameter = new StructureMap_Parameter(
			id: await fhirDb.newResourceId('StructureMap_Parameter'),
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
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
  Element elementValueId;
  String valueString; //  pattern: ^[ \r\n\t\S]+$
  Element elementValueString;
  bool valueBoolean; //  pattern: ^true|false$
  Element elementValueBoolean;
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
  Element elementValueInteger;
  int valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
  Element elementValueDecimal;

StructureMap_Parameter(
  {this.id,
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
    this.elementValueDecimal
    });

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) => _$StructureMap_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Dependent {


	static Future<StructureMap_Dependent> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		String name,
		Element elementName,
		List<String> variable,
		List<Element> elementVariable}) async {
	var fhirDb = new DatabaseHelper();
	StructureMap_Dependent newStructureMap_Dependent = new StructureMap_Dependent(
			id: await fhirDb.newResourceId('StructureMap_Dependent'),
			extension: extension,
			modifierExtension: modifierExtension,
			name: name,
			elementName: elementName,
			variable: variable,
			elementVariable: elementVariable,
);
	return newStructureMap_Dependent;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  List<String> variable;
  List<Element> elementVariable;

StructureMap_Dependent(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.variable,
    this.elementVariable
    });

  factory StructureMap_Dependent.fromJson(Map<String, dynamic> json) => _$StructureMap_DependentFromJson(json);
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

Map<String, dynamic> _$StructureMapToJson(StructureMap instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
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
      'copyright': instance.copyright,
      'elementCopyright': instance.elementCopyright?.toJson(),
      'structure': instance.structure?.map((e) => e?.toJson())?.toList(),
      'import': instance.import,
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
    };

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
        StructureMap_Structure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

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

Map<String, dynamic> _$StructureMap_GroupToJson(StructureMap_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'extend': instance.extend,
      'elementExtends': instance.elementExtends?.toJson(),
      'typeMode': instance.typeMode,
      'elementTypeMode': instance.elementTypeMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
      'input': instance.input?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
    };

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

Map<String, dynamic> _$StructureMap_InputToJson(StructureMap_Input instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'mode': instance.mode,
      'elementMode': instance.elementMode?.toJson(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

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

Map<String, dynamic> _$StructureMap_RuleToJson(StructureMap_Rule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'source': instance.source?.map((e) => e?.toJson())?.toList(),
      'target': instance.target?.map((e) => e?.toJson())?.toList(),
      'rule': instance.rule?.map((e) => e?.toJson())?.toList(),
      'dependent': instance.dependent?.map((e) => e?.toJson())?.toList(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };

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

Map<String, dynamic> _$StructureMap_SourceToJson(
        StructureMap_Source instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'context': instance.context,
      'elementContext': instance.elementContext?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'elementDefaultValueBase64Binary':
          instance.elementDefaultValueBase64Binary?.toJson(),
      'defaultValueBoolean': instance.defaultValueBoolean,
      'elementDefaultValueBoolean':
          instance.elementDefaultValueBoolean?.toJson(),
      'defaultValueCanonical': instance.defaultValueCanonical,
      'elementDefaultValueCanonical':
          instance.elementDefaultValueCanonical?.toJson(),
      'defaultValueCode': instance.defaultValueCode,
      'elementDefaultValueCode': instance.elementDefaultValueCode?.toJson(),
      'defaultValueDate': instance.defaultValueDate,
      'elementDefaultValueDate': instance.elementDefaultValueDate?.toJson(),
      'defaultValueDateTime': instance.defaultValueDateTime,
      'elementDefaultValueDateTime':
          instance.elementDefaultValueDateTime?.toJson(),
      'defaultValueDecimal': instance.defaultValueDecimal,
      'elementDefaultValueDecimal':
          instance.elementDefaultValueDecimal?.toJson(),
      'defaultValueId': instance.defaultValueId,
      'elementDefaultValueId': instance.elementDefaultValueId?.toJson(),
      'defaultValueInstant': instance.defaultValueInstant,
      'elementDefaultValueInstant':
          instance.elementDefaultValueInstant?.toJson(),
      'defaultValueInteger': instance.defaultValueInteger,
      'elementDefaultValueInteger':
          instance.elementDefaultValueInteger?.toJson(),
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'elementDefaultValueMarkdown':
          instance.elementDefaultValueMarkdown?.toJson(),
      'defaultValueOid': instance.defaultValueOid,
      'elementDefaultValueOid': instance.elementDefaultValueOid?.toJson(),
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'elementDefaultValuePositiveInt':
          instance.elementDefaultValuePositiveInt?.toJson(),
      'defaultValueString': instance.defaultValueString,
      'elementDefaultValueString': instance.elementDefaultValueString?.toJson(),
      'defaultValueTime': instance.defaultValueTime,
      'elementDefaultValueTime': instance.elementDefaultValueTime?.toJson(),
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'elementDefaultValueUnsignedInt':
          instance.elementDefaultValueUnsignedInt?.toJson(),
      'defaultValueUri': instance.defaultValueUri,
      'elementDefaultValueUri': instance.elementDefaultValueUri?.toJson(),
      'defaultValueUrl': instance.defaultValueUrl,
      'elementDefaultValueUrl': instance.elementDefaultValueUrl?.toJson(),
      'defaultValueUuid': instance.defaultValueUuid,
      'elementDefaultValueUuid': instance.elementDefaultValueUuid?.toJson(),
      'defaultValueAddress': instance.defaultValueAddress?.toJson(),
      'defaultValueAge': instance.defaultValueAge?.toJson(),
      'defaultValueAnnotation': instance.defaultValueAnnotation?.toJson(),
      'defaultValueAttachment': instance.defaultValueAttachment?.toJson(),
      'defaultValueCodeableConcept':
          instance.defaultValueCodeableConcept?.toJson(),
      'defaultValueCoding': instance.defaultValueCoding?.toJson(),
      'defaultValueContactPoint': instance.defaultValueContactPoint?.toJson(),
      'defaultValueCount': instance.defaultValueCount?.toJson(),
      'defaultValueDistance': instance.defaultValueDistance?.toJson(),
      'defaultValueDuration': instance.defaultValueDuration?.toJson(),
      'defaultValueHumanName': instance.defaultValueHumanName?.toJson(),
      'defaultValueIdentifier': instance.defaultValueIdentifier?.toJson(),
      'defaultValueMoney': instance.defaultValueMoney?.toJson(),
      'defaultValuePeriod': instance.defaultValuePeriod?.toJson(),
      'defaultValueQuantity': instance.defaultValueQuantity?.toJson(),
      'defaultValueRange': instance.defaultValueRange?.toJson(),
      'defaultValueRatio': instance.defaultValueRatio?.toJson(),
      'defaultValueReference': instance.defaultValueReference?.toJson(),
      'defaultValueSampledData': instance.defaultValueSampledData?.toJson(),
      'defaultValueSignature': instance.defaultValueSignature?.toJson(),
      'defaultValueTiming': instance.defaultValueTiming?.toJson(),
      'defaultValueContactDetail': instance.defaultValueContactDetail?.toJson(),
      'defaultValueContributor': instance.defaultValueContributor?.toJson(),
      'defaultValueDataRequirement':
          instance.defaultValueDataRequirement?.toJson(),
      'defaultValueExpression': instance.defaultValueExpression?.toJson(),
      'defaultValueParameterDefinition':
          instance.defaultValueParameterDefinition?.toJson(),
      'defaultValueRelatedArtifact':
          instance.defaultValueRelatedArtifact?.toJson(),
      'defaultValueTriggerDefinition':
          instance.defaultValueTriggerDefinition?.toJson(),
      'defaultValueUsageContext': instance.defaultValueUsageContext?.toJson(),
      'defaultValueDosage': instance.defaultValueDosage?.toJson(),
      'defaultValueMeta': instance.defaultValueMeta?.toJson(),
      'element': instance.element,
      'elementElement': instance.elementElement?.toJson(),
      'listMode': instance.listMode,
      'elementListMode': instance.elementListMode?.toJson(),
      'variable': instance.variable,
      'elementVariable': instance.elementVariable?.toJson(),
      'condition': instance.condition,
      'elementCondition': instance.elementCondition?.toJson(),
      'check': instance.check,
      'elementCheck': instance.elementCheck?.toJson(),
      'logMessage': instance.logMessage,
      'elementLogMessage': instance.elementLogMessage?.toJson(),
    };

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
    listMode: (json['listMode'] as List)?.map((e) => e as String)?.toList(),
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

Map<String, dynamic> _$StructureMap_TargetToJson(
        StructureMap_Target instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'context': instance.context,
      'elementContext': instance.elementContext?.toJson(),
      'contextType': instance.contextType,
      'elementContextType': instance.elementContextType?.toJson(),
      'element': instance.element,
      'elementElement': instance.elementElement?.toJson(),
      'variable': instance.variable,
      'elementVariable': instance.elementVariable?.toJson(),
      'listMode': instance.listMode,
      'elementListMode':
          instance.elementListMode?.map((e) => e?.toJson())?.toList(),
      'listRuleId': instance.listRuleId,
      'elementListRuleId': instance.elementListRuleId?.toJson(),
      'transform': instance.transform,
      'elementTransform': instance.elementTransform?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
    };

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
        StructureMap_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
    };

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
        StructureMap_Dependent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'variable': instance.variable,
      'elementVariable':
          instance.elementVariable?.map((e) => e?.toJson())?.toList(),
    };
