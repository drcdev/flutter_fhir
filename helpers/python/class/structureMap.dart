part 'structureMap.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap {

StructureMap resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
Element _url;
List<Identifier> identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
List<StructureMap_Structure> structure;
List<String> import;
List<StructureMap_Group> group;

StructureMap(
  {this.resourceType,
      this.id,
      this.meta,
      this.implicitRules,
      this._implicitRules,
      this.language,
      this._language,
      this.text,
      this.contained,
      this.extension,
      this.modifierExtension,
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.structure,
      this.import,
      this.group,
      });

  factory StructureMap.fromJson(Map<String, dynamic> json) => _$StructureMapFromJson(json);
  Map<String, dynamic> toJson() _$StructureMapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Structure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String url;
String mode; // <code> enum: source/queried/target/produced;
Element _mode;
String alias;
Element _alias;
String documentation;
Element _documentation;

StructureMap_Structure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.url,
      this.mode,
      this._mode,
      this.alias,
      this._alias,
      this.documentation,
      this._documentation,
      });

  factory StructureMap_Structure.fromJson(Map<String, dynamic> json) => _$StructureMap_StructureFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_StructureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String extends;
Element _extends;
String typeMode; // <code> enum: none/types/type-and-types;
Element _typeMode;
String documentation;
Element _documentation;
List<StructureMap_Input> input;
List<StructureMap_Rule> rule;

StructureMap_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.extends,
      this._extends,
      this.typeMode,
      this._typeMode,
      this.documentation,
      this._documentation,
      this.input,
      this.rule,
      });

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) => _$StructureMap_GroupFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Input {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String type;
Element _type;
String mode; // <code> enum: source/target;
Element _mode;
String documentation;
Element _documentation;

StructureMap_Input(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.type,
      this._type,
      this.mode,
      this._mode,
      this.documentation,
      this._documentation,
      });

  factory StructureMap_Input.fromJson(Map<String, dynamic> json) => _$StructureMap_InputFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_InputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Rule {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
List<StructureMap_Source> source;
List<StructureMap_Target> target;
List<StructureMap_Rule> rule;
List<StructureMap_Dependent> dependent;
String documentation;
Element _documentation;

StructureMap_Rule(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.source,
      this.target,
      this.rule,
      this.dependent,
      this.documentation,
      this._documentation,
      });

  factory StructureMap_Rule.fromJson(Map<String, dynamic> json) => _$StructureMap_RuleFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_RuleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Source {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String context;
Element _context;
int min;
Element _min;
String max;
Element _max;
String type;
Element _type;
String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$
Element _defaultValueBase64Binary;
bool defaultValueBoolean; //  pattern: ^true|false$
Element _defaultValueBoolean;
String defaultValueCanonical; //  pattern: ^\S*$
Element _defaultValueCanonical;
String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _defaultValueCode;
String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
Element _defaultValueDate;
String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _defaultValueDateTime;
double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _defaultValueDecimal;
String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _defaultValueId;
String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$
Element _defaultValueInstant;
int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _defaultValueInteger;
String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$
Element _defaultValueMarkdown;
String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$
Element _defaultValueOid;
int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$
Element _defaultValuePositiveInt;
String defaultValueString; //  pattern: ^[ \r\n\t\S]+$
Element _defaultValueString;
String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$
Element _defaultValueTime;
int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$
Element _defaultValueUnsignedInt;
String defaultValueUri; //  pattern: ^\S*$
Element _defaultValueUri;
String defaultValueUrl; //  pattern: ^\S*$
Element _defaultValueUrl;
String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$
Element _defaultValueUuid;
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
Element _element;
String listMode; // <code> enum: first/not_first/last/not_last/only_one;
Element _listMode;
String variable;
Element _variable;
String condition;
Element _condition;
String check;
Element _check;
String logMessage;
Element _logMessage;

StructureMap_Source(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.context,
      this._context,
      this.min,
      this._min,
      this.max,
      this._max,
      this.type,
      this._type,
      this.defaultValueBase64Binary,
      this._defaultValueBase64Binary,
      this.defaultValueBoolean,
      this._defaultValueBoolean,
      this.defaultValueCanonical,
      this._defaultValueCanonical,
      this.defaultValueCode,
      this._defaultValueCode,
      this.defaultValueDate,
      this._defaultValueDate,
      this.defaultValueDateTime,
      this._defaultValueDateTime,
      this.defaultValueDecimal,
      this._defaultValueDecimal,
      this.defaultValueId,
      this._defaultValueId,
      this.defaultValueInstant,
      this._defaultValueInstant,
      this.defaultValueInteger,
      this._defaultValueInteger,
      this.defaultValueMarkdown,
      this._defaultValueMarkdown,
      this.defaultValueOid,
      this._defaultValueOid,
      this.defaultValuePositiveInt,
      this._defaultValuePositiveInt,
      this.defaultValueString,
      this._defaultValueString,
      this.defaultValueTime,
      this._defaultValueTime,
      this.defaultValueUnsignedInt,
      this._defaultValueUnsignedInt,
      this.defaultValueUri,
      this._defaultValueUri,
      this.defaultValueUrl,
      this._defaultValueUrl,
      this.defaultValueUuid,
      this._defaultValueUuid,
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
      this._element,
      this.listMode,
      this._listMode,
      this.variable,
      this._variable,
      this.condition,
      this._condition,
      this.check,
      this._check,
      this.logMessage,
      this._logMessage,
      });

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) => _$StructureMap_SourceFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_SourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String context;
Element _context;
String contextType; // <code> enum: type/variable;
Element _contextType;
String element;
Element _element;
String variable;
Element _variable;
List<Element> _listMode;
String listRuleId;
Element _listRuleId;
String transform; // <code> enum: create/copy/truncate/escape/cast/append/translate/reference/dateOp/uuid/pointer/evaluate/cc/c/qty/id/cp;
Element _transform;
List<StructureMap_Parameter> parameter;

StructureMap_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.context,
      this._context,
      this.contextType,
      this._contextType,
      this.element,
      this._element,
      this.variable,
      this._variable,
      this.listMode,
      this._listMode,
      this.listRuleId,
      this._listRuleId,
      this.transform,
      this._transform,
      this.parameter,
      });

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) => _$StructureMap_TargetFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$
Element _valueId;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;

StructureMap_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.valueId,
      this._valueId,
      this.valueString,
      this._valueString,
      this.valueBoolean,
      this._valueBoolean,
      this.valueInteger,
      this._valueInteger,
      this.valueDecimal,
      this._valueDecimal,
      });

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) => _$StructureMap_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StructureMap_Dependent {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
List<String> variable;
List<Element> _variable;

StructureMap_Dependent(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.variable,
      this._variable,
      });

  factory StructureMap_Dependent.fromJson(Map<String, dynamic> json) => _$StructureMap_DependentFromJson(json);
  Map<String, dynamic> toJson() _$StructureMap_DependentToJson(this);
}

