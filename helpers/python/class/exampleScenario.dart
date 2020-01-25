

part 'exampleScenario.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleScenario {

  This is a ExampleScenario resource resourceType;
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
  enum: draftactiveretiredunknown status;
  Element _status;
  bool experimental;
  Element _experimental;
  StringTime date;
  Element _date;
  String publisher;
  Element _publisher;
  List<ContactDetail> contact;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String copyright;
  Element _copyright;
  String purpose;
  Element _purpose;
  List<ExampleScenario_Actor> actor;
  List<ExampleScenario_Instance> instance;
  List<ExampleScenario_Process> process;
  List<String> workflow;


ExampleScenario(
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
this.status,
this._status,
this.experimental,
this._experimental,
this.date,
this._date,
this.publisher,
this._publisher,
this.contact,
this.useContext,
this.jurisdiction,
this.copyright,
this._copyright,
this.purpose,
this._purpose,
this.actor,
this.instance,
this.process,
this.workflow});

  factory ExampleScenario.fromJson(Map<String, dynamic> json) => _$ExampleScenarioFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleScenarioToJson(this);
}