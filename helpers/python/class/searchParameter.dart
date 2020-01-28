part 'searchParameter.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchParameter {

SearchParameter resourceType;
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
String version;
Element _version;
String name;
Element _name;
String derivedFrom;
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
String code;
Element _code;
List<String> base;
List<Element> _base;
String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
Element _type;
String expression;
Element _expression;
String xpath;
Element _xpath;
String xpathUsage; // <code> enum: normal/phonetic/nearby/distance/other;
Element _xpathUsage;
List<String> target;
List<Element> _target;
bool multipleOr;
Element _multipleOr;
bool multipleAnd;
Element _multipleAnd;
List<Element> _comparator;
List<Element> _modifier;
List<String> chain;
List<Element> _chain;
List<SearchParameter_Component> component;

SearchParameter(
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
      this.version,
      this._version,
      this.name,
      this._name,
      this.derivedFrom,
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
      this.code,
      this._code,
      this.base,
      this._base,
      this.type,
      this._type,
      this.expression,
      this._expression,
      this.xpath,
      this._xpath,
      this.xpathUsage,
      this._xpathUsage,
      this.target,
      this._target,
      this.multipleOr,
      this._multipleOr,
      this.multipleAnd,
      this._multipleAnd,
      this.comparator,
      this._comparator,
      this.modifier,
      this._modifier,
      this.chain,
      this._chain,
      this.component,
      });

  factory SearchParameter.fromJson(Map<String, dynamic> json) => _$SearchParameterFromJson(json);
  Map<String, dynamic> toJson() _$SearchParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchParameter_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String definition;
String expression;
Element _expression;

SearchParameter_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.definition,
      this.expression,
      this._expression,
      });

  factory SearchParameter_Component.fromJson(Map<String, dynamic> json) => _$SearchParameter_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$SearchParameter_ComponentToJson(this);
}

