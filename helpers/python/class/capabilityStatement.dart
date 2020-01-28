part 'capabilityStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class CapabilityStatement {

CapabilityStatement resourceType;
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
String kind; // <code> enum: instance/capability/requirements;
Element _kind;
List<String> instantiates;
List<String> imports;
CapabilityStatement_Software software;
CapabilityStatement_Implementation implementation;
String fhirVersion; // <code> enum: 0.01/0.05/0.06/0.11/0.0.80/0.0.81/0.0.82/0.4.0/0.5.0/1.0.0/1.0.1/1.0.2/1.1.0/1.4.0/1.6.0/1.8.0/3.0.0/3.0.1/3.3.0/3.5.0/4.0.0/4.0.1;
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
      this.document,
      });

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) => _$CapabilityStatementFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Software {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String version;
Element _version;
DateTime releaseDate;
Element _releaseDate;

CapabilityStatement_Software(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.version,
      this._version,
      this.releaseDate,
      this._releaseDate,
      });

  factory CapabilityStatement_Software.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SoftwareFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SoftwareToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Implementation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
String url;
Element _url;
Reference custodian;

CapabilityStatement_Implementation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.description,
      this._description,
      this.url,
      this._url,
      this.custodian,
      });

  factory CapabilityStatement_Implementation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ImplementationFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_ImplementationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Rest {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: client/server;
Element _mode;
String documentation;
Element _documentation;
CapabilityStatement_Security security;
List<CapabilityStatement_Resource> resource;
List<CapabilityStatement_Interaction1> interaction;
List<CapabilityStatement_SearchParam> searchParam;
List<CapabilityStatement_Operation> operation;
List<String> compartment;

CapabilityStatement_Rest(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.documentation,
      this._documentation,
      this.security,
      this.resource,
      this.interaction,
      this.searchParam,
      this.operation,
      this.compartment,
      });

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_RestFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_RestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Security {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool cors;
Element _cors;
List<CodeableConcept> service;
String description;
Element _description;

CapabilityStatement_Security(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.cors,
      this._cors,
      this.service,
      this.description,
      this._description,
      });

  factory CapabilityStatement_Security.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SecurityFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SecurityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Resource {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String type;
Element _type;
String profile;
List<String> supportedProfile;
String documentation;
Element _documentation;
List<CapabilityStatement_Interaction> interaction;
String versioning; // <code> enum: no-version/versioned/versioned-update;
Element _versioning;
bool readHistory;
Element _readHistory;
bool updateCreate;
Element _updateCreate;
bool conditionalCreate;
Element _conditionalCreate;
String conditionalRead; // <code> enum: not-supported/modified-since/not-match/full-support;
Element _conditionalRead;
bool conditionalUpdate;
Element _conditionalUpdate;
String conditionalDelete; // <code> enum: not-supported/single/multiple;
Element _conditionalDelete;
List<Element> _referencePolicy;
List<String> searchInclude;
List<Element> _searchInclude;
List<String> searchRevInclude;
List<Element> _searchRevInclude;
List<CapabilityStatement_SearchParam> searchParam;
List<CapabilityStatement_Operation> operation;

CapabilityStatement_Resource(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this._type,
      this.profile,
      this.supportedProfile,
      this.documentation,
      this._documentation,
      this.interaction,
      this.versioning,
      this._versioning,
      this.readHistory,
      this._readHistory,
      this.updateCreate,
      this._updateCreate,
      this.conditionalCreate,
      this._conditionalCreate,
      this.conditionalRead,
      this._conditionalRead,
      this.conditionalUpdate,
      this._conditionalUpdate,
      this.conditionalDelete,
      this._conditionalDelete,
      this.referencePolicy,
      this._referencePolicy,
      this.searchInclude,
      this._searchInclude,
      this.searchRevInclude,
      this._searchRevInclude,
      this.searchParam,
      this.operation,
      });

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_ResourceFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: read/vread/update/patch/delete/history-instance/history-type/create/search-type;
Element _code;
String documentation;
Element _documentation;

CapabilityStatement_Interaction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_Interaction.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_InteractionFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_InteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SearchParam {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String definition;
String type; // <code> enum: number/date/string/token/reference/composite/quantity/uri/special;
Element _type;
String documentation;
Element _documentation;

CapabilityStatement_SearchParam(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.definition,
      this.type,
      this._type,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SearchParamFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SearchParamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Operation {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String name;
Element _name;
String definition;
String documentation;
Element _documentation;

CapabilityStatement_Operation(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.name,
      this._name,
      this.definition,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_OperationFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_OperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Interaction1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code; // <code> enum: transaction/batch/search-system/history-system;
Element _code;
String documentation;
Element _documentation;

CapabilityStatement_Interaction1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.documentation,
      this._documentation,
      });

  factory CapabilityStatement_Interaction1.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_Interaction1FromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_Interaction1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Messaging {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CapabilityStatement_Endpoint> endpoint;
int reliableCache;
Element _reliableCache;
String documentation;
Element _documentation;
List<CapabilityStatement_SupportedMessage> supportedMessage;

CapabilityStatement_Messaging(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.endpoint,
      this.reliableCache,
      this._reliableCache,
      this.documentation,
      this._documentation,
      this.supportedMessage,
      });

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_MessagingFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_MessagingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Endpoint {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Coding protocol;
String address;
Element _address;

CapabilityStatement_Endpoint(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.protocol,
      this.address,
      this._address,
      });

  factory CapabilityStatement_Endpoint.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_EndpointFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_EndpointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_SupportedMessage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: sender/receiver;
Element _mode;
String definition;

CapabilityStatement_SupportedMessage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.definition,
      });

  factory CapabilityStatement_SupportedMessage.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_SupportedMessageFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_SupportedMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CapabilityStatement_Document {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: producer/consumer;
Element _mode;
String documentation;
Element _documentation;
String profile;

CapabilityStatement_Document(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.documentation,
      this._documentation,
      this.profile,
      });

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) => _$CapabilityStatement_DocumentFromJson(json);
  Map<String, dynamic> toJson() _$CapabilityStatement_DocumentToJson(this);
}

