part 'terminologyCapabilities.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities {

TerminologyCapabilities resourceType;
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
String kind;
Element _kind;
TerminologyCapabilities_Software software;
TerminologyCapabilities_Implementation implementation;
bool lockedDate;
Element _lockedDate;
List<TerminologyCapabilities_CodeSystem> codeSystem;
TerminologyCapabilities_Expansion expansion;
String codeSearch; // <code> enum: explicit/all;
Element _codeSearch;
TerminologyCapabilities_ValidateCode validateCode;
TerminologyCapabilities_Translation translation;
TerminologyCapabilities_Closure closure;

TerminologyCapabilities(
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
      this.kind,
      this._kind,
      this.software,
      this.implementation,
      this.lockedDate,
      this._lockedDate,
      this.codeSystem,
      this.expansion,
      this.codeSearch,
      this._codeSearch,
      this.validateCode,
      this.translation,
      this.closure,
      });

  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilitiesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Software {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String version;
Element _version;

TerminologyCapabilities_Software(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.version,
      this._version,
      });

  factory TerminologyCapabilities_Software.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_SoftwareFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_SoftwareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Implementation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String url;
Element _url;

TerminologyCapabilities_Implementation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.url,
      this._url,
      });

  factory TerminologyCapabilities_Implementation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ImplementationFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ImplementationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_CodeSystem {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uri;
List<TerminologyCapabilities_Version> version;
bool subsumption;
Element _subsumption;

TerminologyCapabilities_CodeSystem(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uri,
      this.version,
      this.subsumption,
      this._subsumption,
      });

  factory TerminologyCapabilities_CodeSystem.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_CodeSystemFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_CodeSystemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Version {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
bool isDefault;
Element _isDefault;
bool compositional;
Element _compositional;
List<String> language;
List<Element> _language;
List<TerminologyCapabilities_Filter> filter;
List<String> property;
List<Element> _property;

TerminologyCapabilities_Version(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.isDefault,
      this._isDefault,
      this.compositional,
      this._compositional,
      this.language,
      this._language,
      this.filter,
      this.property,
      this._property,
      });

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_VersionFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_VersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Filter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
List<String> op;
List<Element> _op;

TerminologyCapabilities_Filter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.op,
      this._op,
      });

  factory TerminologyCapabilities_Filter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_FilterFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_FilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Expansion {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool hierarchical;
Element _hierarchical;
bool paging;
Element _paging;
bool incomplete;
Element _incomplete;
List<TerminologyCapabilities_Parameter> parameter;
String textFilter;
Element _textFilter;

TerminologyCapabilities_Expansion(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.hierarchical,
      this._hierarchical,
      this.paging,
      this._paging,
      this.incomplete,
      this._incomplete,
      this.parameter,
      this.textFilter,
      this._textFilter,
      });

  factory TerminologyCapabilities_Expansion.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ExpansionFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ExpansionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Parameter {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String documentation;
Element _documentation;

TerminologyCapabilities_Parameter(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.documentation,
      this._documentation,
      });

  factory TerminologyCapabilities_Parameter.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ParameterFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ParameterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_ValidateCode {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool translations;
Element _translations;

TerminologyCapabilities_ValidateCode(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.translations,
      this._translations,
      });

  factory TerminologyCapabilities_ValidateCode.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ValidateCodeFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ValidateCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Translation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool needsMap;
Element _needsMap;

TerminologyCapabilities_Translation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.needsMap,
      this._needsMap,
      });

  factory TerminologyCapabilities_Translation.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_TranslationFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_TranslationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities_Closure {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool translation;
Element _translation;

TerminologyCapabilities_Closure(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.translation,
      this._translation,
      });

  factory TerminologyCapabilities_Closure.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilities_ClosureFromJson(json);
  Map<String, dynamic> toJson() _$TerminologyCapabilities_ClosureToJson(this);
}

