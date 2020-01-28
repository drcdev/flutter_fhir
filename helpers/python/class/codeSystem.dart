part 'codeSystem.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeSystem {

CodeSystem resourceType;
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
bool caseSensitive;
Element _caseSensitive;
String valueSet;
String hierarchyMeaning; // <code> enum: grouped-by/is-a/part-of/classified-with;
Element _hierarchyMeaning;
bool compositional;
Element _compositional;
bool versionNeeded;
Element _versionNeeded;
String content; // <code> enum: not-present/example/fragment/complete/supplement;
Element _content;
String supplements;
int count;
Element _count;
List<CodeSystem_Filter> filter;
List<CodeSystem_Property> property;
List<CodeSystem_Concept> concept;

CodeSystem(
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
      this.caseSensitive,
      this._caseSensitive,
      this.valueSet,
      this.hierarchyMeaning,
      this._hierarchyMeaning,
      this.compositional,
      this._compositional,
      this.versionNeeded,
      this._versionNeeded,
      this.content,
      this._content,
      this.supplements,
      this.count,
      this._count,
      this.filter,
      this.property,
      this.concept,
      });

  factory CodeSystem.fromJson(Map<String, dynamic> json) => _$CodeSystemFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Filter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String description;
Element _description;
List<String> operator;
List<Element> _operator;
String value;
Element _value;

CodeSystem_Filter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.description,
      this._description,
      this.operator,
      this._operator,
      this.value,
      this._value,
      });

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) => _$CodeSystem_FilterFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String uri;
Element _uri;
String description;
Element _description;
String type; // <code> enum: code/Coding/string/integer/boolean/dateTime/decimal;
Element _type;

CodeSystem_Property(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.uri,
      this._uri,
      this.description,
      this._description,
      this.type,
      this._type,
      });

  factory CodeSystem_Property.fromJson(Map<String, dynamic> json) => _$CodeSystem_PropertyFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Concept {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
String definition;
Element _definition;
List<CodeSystem_Designation> designation;
List<CodeSystem_Property1> property;
List<CodeSystem_Concept> concept;

CodeSystem_Concept(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.definition,
      this._definition,
      this.designation,
      this.property,
      this.concept,
      });

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) => _$CodeSystem_ConceptFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_ConceptToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Designation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String language;
Element _language;
Coding use;
String value;
Element _value;

CodeSystem_Designation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.language,
      this._language,
      this.use,
      this.value,
      this._value,
      });

  factory CodeSystem_Designation.fromJson(Map<String, dynamic> json) => _$CodeSystem_DesignationFromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_DesignationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CodeSystem_Property1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$
Element _valueCode;
Coding valueCoding;
String valueString; //  pattern: ^[ \r\n\t\S]+$
Element _valueString;
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$
Element _valueInteger;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _valueDateTime;
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$
Element _valueDecimal;

CodeSystem_Property1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.valueCode,
      this._valueCode,
      this.valueCoding,
      this.valueString,
      this._valueString,
      this.valueInteger,
      this._valueInteger,
      this.valueBoolean,
      this._valueBoolean,
      this.valueDateTime,
      this._valueDateTime,
      this.valueDecimal,
      this._valueDecimal,
      });

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) => _$CodeSystem_Property1FromJson(json);
  Map<String, dynamic> toJson() _$CodeSystem_Property1ToJson(this);
}

