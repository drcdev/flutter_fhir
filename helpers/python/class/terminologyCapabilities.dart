

part 'terminologyCapabilities.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminologyCapabilities {

  This is a TerminologyCapabilities resource resourceType;
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
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  StringTime date;
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
  enum: explicitall codeSearch;
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
this.closure});

  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) => _$TerminologyCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() => _$TerminologyCapabilitiesToJson(this);
}