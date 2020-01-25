

part 'capabilityStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement {

  This is a CapabilityStatement resource resourceType;
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
  enum: instancecapabilityrequirements kind;
  Element _kind;
  List<String> instantiates;
  List<String> imports;
  CapabilityStatement_Software software;
  CapabilityStatement_Implementation implementation;
  enum: 0.010.050.060.110.0.800.0.810.0.820.4.00.5.01.0.01.0.11.0.21.1.01.4.01.6.01.8.03.0.03.0.13.3.03.5.04.0.04.0.1 fhirVersion;
  Element _fhirVersion;
  List<String> format;
  List<Element> _format;
  List<String> patchFormat;
  List<Element> _patchFormat;
  List<String> implementationGuide;
  List<CapabilityStatement_Rest> rest;
  List<CapabilityStatement_Messaging> messaging;
  List<CapabilityStatement_Document> document;


CapabilityStatement(
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
this.instantiates,
this.imports,
this.software,
this.implementation,
this.fhirVersion,
this._fhirVersion,
this.format,
this._format,
this.patchFormat,
this._patchFormat,
this.implementationGuide,
this.rest,
this.messaging,
this.document});

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) => _$CapabilityStatementFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatementToJson(this);
}