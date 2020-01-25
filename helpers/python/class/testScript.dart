

part 'testScript.g.dart';

@JsonSerializable(explicitToJson: true)
class TestScript {

  This is a TestScript resource resourceType;
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
  Identifier identifier;
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
  List<TestScript_Origin> origin;
  List<TestScript_Destination> destination;
  TestScript_Metadata metadata;
  List<TestScript_Fixture> fixture;
  List<Reference> profile;
  List<TestScript_Variable> variable;
  TestScript_Setup setup;
  List<TestScript_Test> test;
  TestScript_Teardown teardown;


TestScript(
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
this.origin,
this.destination,
this.metadata,
this.fixture,
this.profile,
this.variable,
this.setup,
this.test,
this.teardown});

  factory TestScript.fromJson(Map<String, dynamic> json) => _$TestScriptFromJson(json);
  Map<String, dynamic> toJson() => _$TestScriptToJson(this);
}