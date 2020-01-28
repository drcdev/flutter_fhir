part 'valueSet.g.dart';

@JsonSerializable(explicitToJson: true)
class ValueSet {

ValueSet resourceType;
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
bool immutable;
Element _immutable;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
ValueSet_Compose compose;
ValueSet_Expansion expansion;

ValueSet(
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
      this.immutable,
      this._immutable,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.compose,
      this.expansion,
      });

  factory ValueSet.fromJson(Map<String, dynamic> json) => _$ValueSetFromJson(json);
  Map<String, dynamic> toJson() _$ValueSetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Compose {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String lockedDate;
Element _lockedDate;
bool inactive;
Element _inactive;
List<ValueSet_Include> include;
List<ValueSet_Include> exclude;

ValueSet_Compose(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.lockedDate,
      this._lockedDate,
      this.inactive,
      this._inactive,
      this.include,
      this.exclude,
      });

  factory ValueSet_Compose.fromJson(Map<String, dynamic> json) => _$ValueSet_ComposeFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ComposeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Include {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String system;
Element _system;
String version;
Element _version;
List<ValueSet_Concept> concept;
List<ValueSet_Filter> filter;
List<String> valueSet;

ValueSet_Include(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.system,
      this._system,
      this.version,
      this._version,
      this.concept,
      this.filter,
      this.valueSet,
      });

  factory ValueSet_Include.fromJson(Map<String, dynamic> json) => _$ValueSet_IncludeFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_IncludeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Concept {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
List<ValueSet_Designation> designation;

ValueSet_Concept(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.designation,
      });

  factory ValueSet_Concept.fromJson(Map<String, dynamic> json) => _$ValueSet_ConceptFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ConceptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Designation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String language;
Element _language;
Coding use;
String value;
Element _value;

ValueSet_Designation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this._language,
      this.use,
      this.value,
      this._value,
      });

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) => _$ValueSet_DesignationFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Filter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String property;
Element _property;
String op; // <code> enum: =/is-a/descendent-of/is-not-a/regex/in/not-in/generalizes/exists;
Element _op;
String value;
Element _value;

ValueSet_Filter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.property,
      this._property,
      this.op,
      this._op,
      this.value,
      this._value,
      });

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) => _$ValueSet_FilterFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Expansion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String identifier;
Element _identifier;
DateTime timestamp;
Element _timestamp;
int total;
Element _total;
int offset;
Element _offset;
List<ValueSet_Parameter> parameter;
List<ValueSet_Contains> contains;

ValueSet_Expansion(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this._identifier,
      this.timestamp,
      this._timestamp,
      this.total,
      this._total,
      this.offset,
      this._offset,
      this.parameter,
      this.contains,
      });

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) => _$ValueSet_ExpansionFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;
String valueUri; //  pattern: ^\S*$
Element _valueUri;
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _valueCode;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;

ValueSet_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.valueString,
      this._valueString,
      this.valueBoolean,
      this._valueBoolean,
      this.valueInteger,
      this._valueInteger,
      this.valueDecimal,
      this._valueDecimal,
      this.valueUri,
      this._valueUri,
      this.valueCode,
      this._valueCode,
      this.valueDateTime,
      this._valueDateTime,
      });

  factory ValueSet_Parameter.fromJson(Map<String, dynamic> json) => _$ValueSet_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValueSet_Contains {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String system;
Element _system;
bool abstract;
Element _abstract;
bool inactive;
Element _inactive;
String version;
Element _version;
String code;
Element _code;
String display;
Element _display;
List<ValueSet_Designation> designation;
List<ValueSet_Contains> contains;

ValueSet_Contains(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.system,
      this._system,
      this.abstract,
      this._abstract,
      this.inactive,
      this._inactive,
      this.version,
      this._version,
      this.code,
      this._code,
      this.display,
      this._display,
      this.designation,
      this.contains,
      });

  factory ValueSet_Contains.fromJson(Map<String, dynamic> json) => _$ValueSet_ContainsFromJson(json);
  Map<String, dynamic> toJson() _$ValueSet_ContainsToJson(this);
}

