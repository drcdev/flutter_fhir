import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class CapabilityStatement {
  static Future<CapabilityStatement> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String url,
    Element elementUrl,
    String version,
    Element elementVersion,
    String name,
    Element elementName,
    String title,
    Element elementTitle,
    String status,
    Element elementStatus,
    bool experimental,
    Element elementExperimental,
    DateTime date,
    Element elementDate,
    String publisher,
    Element elementPublisher,
    List<ContactDetail> contact,
    String description,
    Element elementDescription,
    List<UsageContext> useContext,
    List<CodeableConcept> jurisdiction,
    String purpose,
    Element elementPurpose,
    String copyright,
    Element elementCopyright,
    String kind,
    Element elementKind,
    List<String> instantiates,
    List<String> imports,
    CapabilityStatement_Software software,
    CapabilityStatement_Implementation implementation,
    String fhirVersion,
    Element elementFhirVersion,
    List<String> format,
    List<Element> elementFormat,
    List<String> patchFormat,
    List<Element> elementPatchFormat,
    List<String> implementationGuide,
    List<CapabilityStatement_Rest> rest,
    List<CapabilityStatement_Messaging> messaging,
    List<CapabilityStatement_Document> document,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement newCapabilityStatement = new CapabilityStatement(
      resourceType: 'CapabilityStatement',
      id: id ?? await fhirDb.newResourceId('CapabilityStatement'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      url: url,
      elementUrl: elementUrl,
      version: version,
      elementVersion: elementVersion,
      name: name,
      elementName: elementName,
      title: title,
      elementTitle: elementTitle,
      status: status,
      elementStatus: elementStatus,
      experimental: experimental,
      elementExperimental: elementExperimental,
      date: date,
      elementDate: elementDate,
      publisher: publisher,
      elementPublisher: elementPublisher,
      contact: contact,
      description: description,
      elementDescription: elementDescription,
      useContext: useContext,
      jurisdiction: jurisdiction,
      purpose: purpose,
      elementPurpose: elementPurpose,
      copyright: copyright,
      elementCopyright: elementCopyright,
      kind: kind,
      elementKind: elementKind,
      instantiates: instantiates,
      imports: imports,
      software: software,
      implementation: implementation,
      fhirVersion: fhirVersion,
      elementFhirVersion: elementFhirVersion,
      format: format,
      elementFormat: elementFormat,
      patchFormat: patchFormat,
      elementPatchFormat: elementPatchFormat,
      implementationGuide: implementationGuide,
      rest: rest,
      messaging: messaging,
      document: document,
    );
    newCapabilityStatement.meta.createdAt = DateTime.now();
    newCapabilityStatement.meta.lastUpdated =
        newCapabilityStatement.meta.createdAt;
    int saved = await fhirDb.saveResource(newCapabilityStatement);
    return newCapabilityStatement;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  String resourceType = 'CapabilityStatement';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String url;
  Element elementUrl;
  String version;
  Element elementVersion;
  String name;
  Element elementName;
  String title;
  Element elementTitle;
  String status;
  Element elementStatus;
  bool experimental;
  Element elementExperimental;
  DateTime date;
  Element elementDate;
  String publisher;
  Element elementPublisher;
  List<ContactDetail> contact;
  String description;
  Element elementDescription;
  List<UsageContext> useContext;
  List<CodeableConcept> jurisdiction;
  String purpose;
  Element elementPurpose;
  String copyright;
  Element elementCopyright;
  String kind;
  Element elementKind;
  List<String> instantiates;
  List<String> imports;
  CapabilityStatement_Software software;
  CapabilityStatement_Implementation implementation;
  String fhirVersion;
  Element elementFhirVersion;
  List<String> format;
  List<Element> elementFormat;
  List<String> patchFormat;
  List<Element> elementPatchFormat;
  List<String> implementationGuide;
  List<CapabilityStatement_Rest> rest;
  List<CapabilityStatement_Messaging> messaging;
  List<CapabilityStatement_Document> document;

  CapabilityStatement({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.url,
    this.elementUrl,
    this.version,
    this.elementVersion,
    this.name,
    this.elementName,
    this.title,
    this.elementTitle,
    this.status,
    this.elementStatus,
    this.experimental,
    this.elementExperimental,
    this.date,
    this.elementDate,
    this.publisher,
    this.elementPublisher,
    this.contact,
    this.description,
    this.elementDescription,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.elementPurpose,
    this.copyright,
    this.elementCopyright,
    this.kind,
    this.elementKind,
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    this.fhirVersion,
    this.elementFhirVersion,
    this.format,
    this.elementFormat,
    this.patchFormat,
    this.elementPatchFormat,
    this.implementationGuide,
    this.rest,
    this.messaging,
    this.document,
  });

  factory CapabilityStatement.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatementToJson(this);
}

class CapabilityStatement_Software {
  static Future<CapabilityStatement_Software> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String version,
    Element elementVersion,
    DateTime releaseDate,
    Element elementReleaseDate,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Software newCapabilityStatement_Software =
        new CapabilityStatement_Software(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      version: version,
      elementVersion: elementVersion,
      releaseDate: releaseDate,
      elementReleaseDate: elementReleaseDate,
    );
    return newCapabilityStatement_Software;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String version;
  Element elementVersion;
  DateTime releaseDate;
  Element elementReleaseDate;

  CapabilityStatement_Software({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.version,
    this.elementVersion,
    this.releaseDate,
    this.elementReleaseDate,
  });

  factory CapabilityStatement_Software.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_SoftwareFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SoftwareToJson(this);
}

class CapabilityStatement_Implementation {
  static Future<CapabilityStatement_Implementation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String description,
    Element elementDescription,
    String url,
    Element elementUrl,
    Reference custodian,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Implementation newCapabilityStatement_Implementation =
        new CapabilityStatement_Implementation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      description: description,
      elementDescription: elementDescription,
      url: url,
      elementUrl: elementUrl,
      custodian: custodian,
    );
    return newCapabilityStatement_Implementation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String description;
  Element elementDescription;
  String url;
  Element elementUrl;
  Reference custodian;

  CapabilityStatement_Implementation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.elementDescription,
    this.url,
    this.elementUrl,
    this.custodian,
  });

  factory CapabilityStatement_Implementation.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatement_ImplementationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CapabilityStatement_ImplementationToJson(this);
}

class CapabilityStatement_Rest {
  static Future<CapabilityStatement_Rest> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String mode,
    Element elementMode,
    String documentation,
    Element elementDocumentation,
    CapabilityStatement_Security security,
    List<CapabilityStatement_Resource> resource,
    List<CapabilityStatement_Interaction1> interaction,
    List<CapabilityStatement_SearchParam> searchParam,
    List<CapabilityStatement_Operation> operation,
    List<String> compartment,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Rest newCapabilityStatement_Rest =
        new CapabilityStatement_Rest(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      mode: mode,
      elementMode: elementMode,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      security: security,
      resource: resource,
      interaction: interaction,
      searchParam: searchParam,
      operation: operation,
      compartment: compartment,
    );
    return newCapabilityStatement_Rest;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode;
  Element elementMode;
  String documentation;
  Element elementDocumentation;
  CapabilityStatement_Security security;
  List<CapabilityStatement_Resource> resource;
  List<CapabilityStatement_Interaction1> interaction;
  List<CapabilityStatement_SearchParam> searchParam;
  List<CapabilityStatement_Operation> operation;
  List<String> compartment;

  CapabilityStatement_Rest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
  });

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_RestFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_RestToJson(this);
}

class CapabilityStatement_Security {
  static Future<CapabilityStatement_Security> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool cors,
    Element elementCors,
    List<CodeableConcept> service,
    String description,
    Element elementDescription,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Security newCapabilityStatement_Security =
        new CapabilityStatement_Security(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      cors: cors,
      elementCors: elementCors,
      service: service,
      description: description,
      elementDescription: elementDescription,
    );
    return newCapabilityStatement_Security;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool cors;
  Element elementCors;
  List<CodeableConcept> service;
  String description;
  Element elementDescription;

  CapabilityStatement_Security({
    this.id,
    this.extension,
    this.modifierExtension,
    this.cors,
    this.elementCors,
    this.service,
    this.description,
    this.elementDescription,
  });

  factory CapabilityStatement_Security.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_SecurityFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_SecurityToJson(this);
}

class CapabilityStatement_Resource {
  static Future<CapabilityStatement_Resource> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String profile,
    List<String> supportedProfile,
    String documentation,
    Element elementDocumentation,
    List<CapabilityStatement_Interaction> interaction,
    String versioning,
    Element elementVersioning,
    bool readHistory,
    Element elementReadHistory,
    bool updateCreate,
    Element elementUpdateCreate,
    bool conditionalCreate,
    Element elementConditionalCreate,
    String conditionalRead,
    Element elementConditionalRead,
    bool conditionalUpdate,
    Element elementConditionalUpdate,
    String conditionalDelete,
    Element elementConditionalDelete,
    String referencePolicy,
    List<Element> elementReferencePolicy,
    List<String> searchInclude,
    List<Element> elementSearchInclude,
    List<String> searchRevInclude,
    List<Element> elementSearchRevInclude,
    List<CapabilityStatement_SearchParam> searchParam,
    List<CapabilityStatement_Operation> operation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Resource newCapabilityStatement_Resource =
        new CapabilityStatement_Resource(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      profile: profile,
      supportedProfile: supportedProfile,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      interaction: interaction,
      versioning: versioning,
      elementVersioning: elementVersioning,
      readHistory: readHistory,
      elementReadHistory: elementReadHistory,
      updateCreate: updateCreate,
      elementUpdateCreate: elementUpdateCreate,
      conditionalCreate: conditionalCreate,
      elementConditionalCreate: elementConditionalCreate,
      conditionalRead: conditionalRead,
      elementConditionalRead: elementConditionalRead,
      conditionalUpdate: conditionalUpdate,
      elementConditionalUpdate: elementConditionalUpdate,
      conditionalDelete: conditionalDelete,
      elementConditionalDelete: elementConditionalDelete,
      referencePolicy: referencePolicy,
      elementReferencePolicy: elementReferencePolicy,
      searchInclude: searchInclude,
      elementSearchInclude: elementSearchInclude,
      searchRevInclude: searchRevInclude,
      elementSearchRevInclude: elementSearchRevInclude,
      searchParam: searchParam,
      operation: operation,
    );
    return newCapabilityStatement_Resource;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String profile;
  List<String> supportedProfile;
  String documentation;
  Element elementDocumentation;
  List<CapabilityStatement_Interaction> interaction;
  String versioning;
  Element elementVersioning;
  bool readHistory;
  Element elementReadHistory;
  bool updateCreate;
  Element elementUpdateCreate;
  bool conditionalCreate;
  Element elementConditionalCreate;
  String conditionalRead;
  Element elementConditionalRead;
  bool conditionalUpdate;
  Element elementConditionalUpdate;
  String conditionalDelete;
  Element elementConditionalDelete;
  String referencePolicy;
  List<Element> elementReferencePolicy;
  List<String> searchInclude;
  List<Element> elementSearchInclude;
  List<String> searchRevInclude;
  List<Element> elementSearchRevInclude;
  List<CapabilityStatement_SearchParam> searchParam;
  List<CapabilityStatement_Operation> operation;

  CapabilityStatement_Resource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.profile,
    this.supportedProfile,
    this.documentation,
    this.elementDocumentation,
    this.interaction,
    this.versioning,
    this.elementVersioning,
    this.readHistory,
    this.elementReadHistory,
    this.updateCreate,
    this.elementUpdateCreate,
    this.conditionalCreate,
    this.elementConditionalCreate,
    this.conditionalRead,
    this.elementConditionalRead,
    this.conditionalUpdate,
    this.elementConditionalUpdate,
    this.conditionalDelete,
    this.elementConditionalDelete,
    this.referencePolicy,
    this.elementReferencePolicy,
    this.searchInclude,
    this.elementSearchInclude,
    this.searchRevInclude,
    this.elementSearchRevInclude,
    this.searchParam,
    this.operation,
  });

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_ResourceToJson(this);
}

class CapabilityStatement_Interaction {
  static Future<CapabilityStatement_Interaction> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Interaction newCapabilityStatement_Interaction =
        new CapabilityStatement_Interaction(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newCapabilityStatement_Interaction;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String documentation;
  Element elementDocumentation;

  CapabilityStatement_Interaction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.documentation,
    this.elementDocumentation,
  });

  factory CapabilityStatement_Interaction.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_InteractionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CapabilityStatement_InteractionToJson(this);
}

class CapabilityStatement_SearchParam {
  static Future<CapabilityStatement_SearchParam> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String definition,
    String type,
    Element elementType,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_SearchParam newCapabilityStatement_SearchParam =
        new CapabilityStatement_SearchParam(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      definition: definition,
      type: type,
      elementType: elementType,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newCapabilityStatement_SearchParam;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String definition;
  String type;
  Element elementType;
  String documentation;
  Element elementDocumentation;

  CapabilityStatement_SearchParam({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.definition,
    this.type,
    this.elementType,
    this.documentation,
    this.elementDocumentation,
  });

  factory CapabilityStatement_SearchParam.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_SearchParamFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CapabilityStatement_SearchParamToJson(this);
}

class CapabilityStatement_Operation {
  static Future<CapabilityStatement_Operation> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String definition,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Operation newCapabilityStatement_Operation =
        new CapabilityStatement_Operation(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      definition: definition,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newCapabilityStatement_Operation;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String definition;
  String documentation;
  Element elementDocumentation;

  CapabilityStatement_Operation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    @required this.definition,
    this.documentation,
    this.elementDocumentation,
  });

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_OperationFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_OperationToJson(this);
}

class CapabilityStatement_Interaction1 {
  static Future<CapabilityStatement_Interaction1> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    String documentation,
    Element elementDocumentation,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Interaction1 newCapabilityStatement_Interaction1 =
        new CapabilityStatement_Interaction1(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
    );
    return newCapabilityStatement_Interaction1;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  String documentation;
  Element elementDocumentation;

  CapabilityStatement_Interaction1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.documentation,
    this.elementDocumentation,
  });

  factory CapabilityStatement_Interaction1.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatement_Interaction1FromJson(json);
  Map<String, dynamic> toJson() =>
      _$CapabilityStatement_Interaction1ToJson(this);
}

class CapabilityStatement_Messaging {
  static Future<CapabilityStatement_Messaging> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<CapabilityStatement_Endpoint> endpoint,
    int reliableCache,
    Element elementReliableCache,
    String documentation,
    Element elementDocumentation,
    List<CapabilityStatement_SupportedMessage> supportedMessage,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Messaging newCapabilityStatement_Messaging =
        new CapabilityStatement_Messaging(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      endpoint: endpoint,
      reliableCache: reliableCache,
      elementReliableCache: elementReliableCache,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      supportedMessage: supportedMessage,
    );
    return newCapabilityStatement_Messaging;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<CapabilityStatement_Endpoint> endpoint;
  int reliableCache;
  Element elementReliableCache;
  String documentation;
  Element elementDocumentation;
  List<CapabilityStatement_SupportedMessage> supportedMessage;

  CapabilityStatement_Messaging({
    this.id,
    this.extension,
    this.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.elementReliableCache,
    this.documentation,
    this.elementDocumentation,
    this.supportedMessage,
  });

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_MessagingFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_MessagingToJson(this);
}

class CapabilityStatement_Endpoint {
  static Future<CapabilityStatement_Endpoint> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Coding protocol,
    String address,
    Element elementAddress,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Endpoint newCapabilityStatement_Endpoint =
        new CapabilityStatement_Endpoint(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      protocol: protocol,
      address: address,
      elementAddress: elementAddress,
    );
    return newCapabilityStatement_Endpoint;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Coding protocol;
  String address;
  Element elementAddress;

  CapabilityStatement_Endpoint({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.protocol,
    this.address,
    this.elementAddress,
  });

  factory CapabilityStatement_Endpoint.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_EndpointToJson(this);
}

class CapabilityStatement_SupportedMessage {
  static Future<CapabilityStatement_SupportedMessage> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String mode,
    Element elementMode,
    String definition,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_SupportedMessage
        newCapabilityStatement_SupportedMessage =
        new CapabilityStatement_SupportedMessage(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      mode: mode,
      elementMode: elementMode,
      definition: definition,
    );
    return newCapabilityStatement_SupportedMessage;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode;
  Element elementMode;
  String definition;

  CapabilityStatement_SupportedMessage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    @required this.definition,
  });

  factory CapabilityStatement_SupportedMessage.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatement_SupportedMessageFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CapabilityStatement_SupportedMessageToJson(this);
}

class CapabilityStatement_Document {
  static Future<CapabilityStatement_Document> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String mode,
    Element elementMode,
    String documentation,
    Element elementDocumentation,
    String profile,
  }) async {
    var fhirDb = new DatabaseHelper();
    CapabilityStatement_Document newCapabilityStatement_Document =
        new CapabilityStatement_Document(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      mode: mode,
      elementMode: elementMode,
      documentation: documentation,
      elementDocumentation: elementDocumentation,
      profile: profile,
    );
    return newCapabilityStatement_Document;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String mode;
  Element elementMode;
  String documentation;
  Element elementDocumentation;
  String profile;

  CapabilityStatement_Document({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.elementMode,
    this.documentation,
    this.elementDocumentation,
    @required this.profile,
  });

  factory CapabilityStatement_Document.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_DocumentFromJson(json);
  Map<String, dynamic> toJson() => _$CapabilityStatement_DocumentToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapabilityStatement _$CapabilityStatementFromJson(Map<String, dynamic> json) {
  return CapabilityStatement(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    elementExperimental: json['elementExperimental'] == null
        ? null
        : Element.fromJson(json['elementExperimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    elementPublisher: json['elementPublisher'] == null
        ? null
        : Element.fromJson(json['elementPublisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    elementCopyright: json['elementCopyright'] == null
        ? null
        : Element.fromJson(json['elementCopyright'] as Map<String, dynamic>),
    kind: json['kind'] as String,
    elementKind: json['elementKind'] == null
        ? null
        : Element.fromJson(json['elementKind'] as Map<String, dynamic>),
    instantiates:
        (json['instantiates'] as List)?.map((e) => e as String)?.toList(),
    imports: (json['imports'] as List)?.map((e) => e as String)?.toList(),
    software: json['software'] == null
        ? null
        : CapabilityStatement_Software.fromJson(
            json['software'] as Map<String, dynamic>),
    implementation: json['implementation'] == null
        ? null
        : CapabilityStatement_Implementation.fromJson(
            json['implementation'] as Map<String, dynamic>),
    fhirVersion: json['fhirVersion'] as String,
    elementFhirVersion: json['elementFhirVersion'] == null
        ? null
        : Element.fromJson(json['elementFhirVersion'] as Map<String, dynamic>),
    format: (json['format'] as List)?.map((e) => e as String)?.toList(),
    elementFormat: (json['elementFormat'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patchFormat:
        (json['patchFormat'] as List)?.map((e) => e as String)?.toList(),
    elementPatchFormat: (json['elementPatchFormat'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    implementationGuide: (json['implementationGuide'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    rest: (json['rest'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Rest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    messaging: (json['messaging'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Messaging.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    document: (json['document'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Document.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatementToJson(CapabilityStatement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('elementTitle', instance.elementTitle?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('experimental', instance.experimental);
  writeNotNull('elementExperimental', instance.elementExperimental?.toJson());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('elementPublisher', instance.elementPublisher?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e?.toJson())?.toList());
  writeNotNull('purpose', instance.purpose);
  writeNotNull('elementPurpose', instance.elementPurpose?.toJson());
  writeNotNull('copyright', instance.copyright);
  writeNotNull('elementCopyright', instance.elementCopyright?.toJson());
  writeNotNull('kind', instance.kind);
  writeNotNull('elementKind', instance.elementKind?.toJson());
  writeNotNull('instantiates', instance.instantiates);
  writeNotNull('imports', instance.imports);
  writeNotNull('software', instance.software?.toJson());
  writeNotNull('implementation', instance.implementation?.toJson());
  writeNotNull('fhirVersion', instance.fhirVersion);
  writeNotNull('elementFhirVersion', instance.elementFhirVersion?.toJson());
  writeNotNull('format', instance.format);
  writeNotNull('elementFormat',
      instance.elementFormat?.map((e) => e?.toJson())?.toList());
  writeNotNull('patchFormat', instance.patchFormat);
  writeNotNull('elementPatchFormat',
      instance.elementPatchFormat?.map((e) => e?.toJson())?.toList());
  writeNotNull('implementationGuide', instance.implementationGuide);
  writeNotNull('rest', instance.rest?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'messaging', instance.messaging?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'document', instance.document?.map((e) => e?.toJson())?.toList());
  return val;
}

CapabilityStatement_Software _$CapabilityStatement_SoftwareFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Software(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
    releaseDate: json['releaseDate'] == null
        ? null
        : DateTime.parse(json['releaseDate'] as String),
    elementReleaseDate: json['elementReleaseDate'] == null
        ? null
        : Element.fromJson(json['elementReleaseDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SoftwareToJson(
    CapabilityStatement_Software instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('elementVersion', instance.elementVersion?.toJson());
  writeNotNull('releaseDate', instance.releaseDate?.toIso8601String());
  writeNotNull('elementReleaseDate', instance.elementReleaseDate?.toJson());
  return val;
}

CapabilityStatement_Implementation _$CapabilityStatement_ImplementationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Implementation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    custodian: json['custodian'] == null
        ? null
        : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_ImplementationToJson(
    CapabilityStatement_Implementation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('elementUrl', instance.elementUrl?.toJson());
  writeNotNull('custodian', instance.custodian?.toJson());
  return val;
}

CapabilityStatement_Rest _$CapabilityStatement_RestFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Rest(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    security: json['security'] == null
        ? null
        : CapabilityStatement_Security.fromJson(
            json['security'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Resource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction1.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    searchParam: (json['searchParam'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SearchParam.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    operation: (json['operation'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Operation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    compartment:
        (json['compartment'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_RestToJson(
    CapabilityStatement_Rest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull('security', instance.security?.toJson());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'interaction', instance.interaction?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'searchParam', instance.searchParam?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e?.toJson())?.toList());
  writeNotNull('compartment', instance.compartment);
  return val;
}

CapabilityStatement_Security _$CapabilityStatement_SecurityFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Security(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cors: json['cors'] as bool,
    elementCors: json['elementCors'] == null
        ? null
        : Element.fromJson(json['elementCors'] as Map<String, dynamic>),
    service: (json['service'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SecurityToJson(
    CapabilityStatement_Security instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('cors', instance.cors);
  writeNotNull('elementCors', instance.elementCors?.toJson());
  writeNotNull('service', instance.service?.map((e) => e?.toJson())?.toList());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  return val;
}

CapabilityStatement_Resource _$CapabilityStatement_ResourceFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Resource(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    profile: json['profile'] as String,
    supportedProfile:
        (json['supportedProfile'] as List)?.map((e) => e as String)?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    interaction: (json['interaction'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Interaction.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    elementVersioning: json['elementVersioning'] == null
        ? null
        : Element.fromJson(json['elementVersioning'] as Map<String, dynamic>),
    readHistory: json['readHistory'] as bool,
    elementReadHistory: json['elementReadHistory'] == null
        ? null
        : Element.fromJson(json['elementReadHistory'] as Map<String, dynamic>),
    updateCreate: json['updateCreate'] as bool,
    elementUpdateCreate: json['elementUpdateCreate'] == null
        ? null
        : Element.fromJson(json['elementUpdateCreate'] as Map<String, dynamic>),
    conditionalCreate: json['conditionalCreate'] as bool,
    elementConditionalCreate: json['elementConditionalCreate'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalCreate'] as Map<String, dynamic>),
    conditionalRead: json['conditionalRead'] as String,
    elementConditionalRead: json['elementConditionalRead'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalRead'] as Map<String, dynamic>),
    conditionalUpdate: json['conditionalUpdate'] as bool,
    elementConditionalUpdate: json['elementConditionalUpdate'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalUpdate'] as Map<String, dynamic>),
    conditionalDelete: json['conditionalDelete'] as String,
    elementConditionalDelete: json['elementConditionalDelete'] == null
        ? null
        : Element.fromJson(
            json['elementConditionalDelete'] as Map<String, dynamic>),
    referencePolicy: json['referencePolicy'] as String,
    elementReferencePolicy: (json['elementReferencePolicy'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchInclude:
        (json['searchInclude'] as List)?.map((e) => e as String)?.toList(),
    elementSearchInclude: (json['elementSearchInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchRevInclude:
        (json['searchRevInclude'] as List)?.map((e) => e as String)?.toList(),
    elementSearchRevInclude: (json['elementSearchRevInclude'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    searchParam: (json['searchParam'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SearchParam.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    operation: (json['operation'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Operation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_ResourceToJson(
    CapabilityStatement_Resource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('profile', instance.profile);
  writeNotNull('supportedProfile', instance.supportedProfile);
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull(
      'interaction', instance.interaction?.map((e) => e?.toJson())?.toList());
  writeNotNull('versioning', instance.versioning);
  writeNotNull('elementVersioning', instance.elementVersioning?.toJson());
  writeNotNull('readHistory', instance.readHistory);
  writeNotNull('elementReadHistory', instance.elementReadHistory?.toJson());
  writeNotNull('updateCreate', instance.updateCreate);
  writeNotNull('elementUpdateCreate', instance.elementUpdateCreate?.toJson());
  writeNotNull('conditionalCreate', instance.conditionalCreate);
  writeNotNull(
      'elementConditionalCreate', instance.elementConditionalCreate?.toJson());
  writeNotNull('conditionalRead', instance.conditionalRead);
  writeNotNull(
      'elementConditionalRead', instance.elementConditionalRead?.toJson());
  writeNotNull('conditionalUpdate', instance.conditionalUpdate);
  writeNotNull(
      'elementConditionalUpdate', instance.elementConditionalUpdate?.toJson());
  writeNotNull('conditionalDelete', instance.conditionalDelete);
  writeNotNull(
      'elementConditionalDelete', instance.elementConditionalDelete?.toJson());
  writeNotNull('referencePolicy', instance.referencePolicy);
  writeNotNull('elementReferencePolicy',
      instance.elementReferencePolicy?.map((e) => e?.toJson())?.toList());
  writeNotNull('searchInclude', instance.searchInclude);
  writeNotNull('elementSearchInclude',
      instance.elementSearchInclude?.map((e) => e?.toJson())?.toList());
  writeNotNull('searchRevInclude', instance.searchRevInclude);
  writeNotNull('elementSearchRevInclude',
      instance.elementSearchRevInclude?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'searchParam', instance.searchParam?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e?.toJson())?.toList());
  return val;
}

CapabilityStatement_Interaction _$CapabilityStatement_InteractionFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Interaction(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_InteractionToJson(
    CapabilityStatement_Interaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

CapabilityStatement_SearchParam _$CapabilityStatement_SearchParamFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_SearchParam(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_SearchParamToJson(
    CapabilityStatement_SearchParam instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('definition', instance.definition);
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

CapabilityStatement_Operation _$CapabilityStatement_OperationFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Operation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_OperationToJson(
    CapabilityStatement_Operation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('definition', instance.definition);
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

CapabilityStatement_Interaction1 _$CapabilityStatement_Interaction1FromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Interaction1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_Interaction1ToJson(
    CapabilityStatement_Interaction1 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('code', instance.code);
  writeNotNull('elementCode', instance.elementCode?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  return val;
}

CapabilityStatement_Messaging _$CapabilityStatement_MessagingFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Messaging(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_Endpoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reliableCache: json['reliableCache'] as int,
    elementReliableCache: json['elementReliableCache'] == null
        ? null
        : Element.fromJson(
            json['elementReliableCache'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    supportedMessage: (json['supportedMessage'] as List)
        ?.map((e) => e == null
            ? null
            : CapabilityStatement_SupportedMessage.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CapabilityStatement_MessagingToJson(
    CapabilityStatement_Messaging instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'endpoint', instance.endpoint?.map((e) => e?.toJson())?.toList());
  writeNotNull('reliableCache', instance.reliableCache);
  writeNotNull('elementReliableCache', instance.elementReliableCache?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull('supportedMessage',
      instance.supportedMessage?.map((e) => e?.toJson())?.toList());
  return val;
}

CapabilityStatement_Endpoint _$CapabilityStatement_EndpointFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Endpoint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    protocol: json['protocol'] == null
        ? null
        : Coding.fromJson(json['protocol'] as Map<String, dynamic>),
    address: json['address'] as String,
    elementAddress: json['elementAddress'] == null
        ? null
        : Element.fromJson(json['elementAddress'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CapabilityStatement_EndpointToJson(
    CapabilityStatement_Endpoint instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('protocol', instance.protocol?.toJson());
  writeNotNull('address', instance.address);
  writeNotNull('elementAddress', instance.elementAddress?.toJson());
  return val;
}

CapabilityStatement_SupportedMessage
    _$CapabilityStatement_SupportedMessageFromJson(Map<String, dynamic> json) {
  return CapabilityStatement_SupportedMessage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    definition: json['definition'] as String,
  );
}

Map<String, dynamic> _$CapabilityStatement_SupportedMessageToJson(
    CapabilityStatement_SupportedMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('definition', instance.definition);
  return val;
}

CapabilityStatement_Document _$CapabilityStatement_DocumentFromJson(
    Map<String, dynamic> json) {
  return CapabilityStatement_Document(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mode: json['mode'] as String,
    elementMode: json['elementMode'] == null
        ? null
        : Element.fromJson(json['elementMode'] as Map<String, dynamic>),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$CapabilityStatement_DocumentToJson(
    CapabilityStatement_Document instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('mode', instance.mode);
  writeNotNull('elementMode', instance.elementMode?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('elementDocumentation', instance.elementDocumentation?.toJson());
  writeNotNull('profile', instance.profile);
  return val;
}
