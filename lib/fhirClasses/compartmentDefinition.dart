import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 153)
class CompartmentDefinition {

  //  This is a CompartmentDefinition resource
  @HiveField(0)
  final String resourceType= 'CompartmentDefinition';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  An absolute URI that is used to identify this compartment definition
  // when it is referenced in a specification, model, design or an instance;
  // also called its canonical identifier. This SHOULD be globally unique
  // and SHOULD be a literal address at which at which an authoritative
  // instance of this compartment definition is (or will be) published. This
  // URL can be the target of a canonical reference. It SHALL remain the
  // same when the compartment definition is stored on different servers.
  @HiveField(11)
  String url;

  //  Extensions for url
  @HiveField(12)
  Element elementUrl;

  //  The identifier that is used to identify this version of the
  // compartment definition when it is referenced in a specification, model,
  // design or instance. This is an arbitrary value managed by the
  // compartment definition author and is not expected to be globally
  // unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  // managed version is not available. There is also no expectation that
  // versions can be placed in a lexicographical sequence.
  @HiveField(13)
  String version;

  //  Extensions for version
  @HiveField(14)
  Element elementVersion;

  //  A natural language name identifying the compartment definition. This
  // name should be usable as an identifier for the module by machine
  // processing applications such as code generation.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  The status of this compartment definition. Enables tracking the
  // life-cycle of the content.
  @HiveField(17)
  String status; // <code> enum: draft/active/retired/unknown;

  //  Extensions for status
  @HiveField(18)
  Element elementStatus;

  //  A Boolean value to indicate that this compartment definition is
  // authored for testing purposes (or education/evaluation/marketing) and
  // is not intended to be used for genuine usage.
  @HiveField(19)
  bool experimental;

  //  Extensions for experimental
  @HiveField(20)
  Element elementExperimental;

  //  The date  (and optionally time) when the compartment definition was
  // published. The date must change when the business version changes and
  // it must change if the status code changes. In addition, it should
  // change when the substantive content of the compartment definition
  // changes.
  @HiveField(21)
  DateTime date;

  //  Extensions for date
  @HiveField(22)
  Element elementDate;

  //  The name of the organization or individual that published the
  // compartment definition.
  @HiveField(23)
  String publisher;

  //  Extensions for publisher
  @HiveField(24)
  Element elementPublisher;

  //  Contact details to assist a user in finding and communicating with the
  // publisher.
  @HiveField(25)
  List<ContactDetail> contact;

  //  A free text natural language description of the compartment definition
  // from a consumer's perspective.
  @HiveField(26)
  String description;

  //  Extensions for description
  @HiveField(27)
  Element elementDescription;

  //  The content was developed with a focus and intent of supporting the
  // contexts that are listed. These contexts may be general categories
  // (gender, age, ...) or may be references to specific programs (insurance
  // plans, studies, ...) and may be used to assist with indexing and
  // searching for appropriate compartment definition instances.
  @HiveField(28)
  List<UsageContext> useContext;

  //  Explanation of why this compartment definition is needed and why it
  // has been designed as it has.
  @HiveField(29)
  String purpose;

  //  Extensions for purpose
  @HiveField(30)
  Element elementPurpose;

  //  Which compartment this definition describes.
  @HiveField(31)
  String code; // <code> enum: Patient/Encounter/RelatedPerson/Practitioner/Device;

  //  Extensions for code
  @HiveField(32)
  Element elementCode;

  //  Whether the search syntax is supported,.
  @HiveField(33)
  bool search;

  //  Extensions for search
  @HiveField(34)
  Element elementSearch;

  //  Information about how a resource is related to the compartment.
  @HiveField(35)
  List<CompartmentDefinition_Resource> resource;

CompartmentDefinition(
  {this.id,
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
    this.purpose,
    this.elementPurpose,
    this.code,
    this.elementCode,
    this.search,
    this.elementSearch,
    this.resource
    });

  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) => _$CompartmentDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompartmentDefinition_Resource {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The name of a resource supported by the server.
  String code;

  //  Extensions for code
  Element elementCode;

  //  The name of a search parameter that represents the link to the
  // compartment. More than one may be listed because a resource may be
  // linked to a compartment in more than one way,.
  List<String> param;

  //  Extensions for param
  List<Element> elementParam;

  //  Additional documentation about the resource and compartment.
  String documentation;

  //  Extensions for documentation
  Element elementDocumentation;

CompartmentDefinition_Resource(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.param,
    this.elementParam,
    this.documentation,
    this.elementDocumentation
    });

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) => _$CompartmentDefinition_ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CompartmentDefinition_ResourceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompartmentDefinitionAdapter extends TypeAdapter<CompartmentDefinition> {
  @override
  final typeId = 153;

  @override
  CompartmentDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompartmentDefinition(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      url: fields[11] as String,
      elementUrl: fields[12] as Element,
      version: fields[13] as String,
      elementVersion: fields[14] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      status: fields[17] as String,
      elementStatus: fields[18] as Element,
      experimental: fields[19] as bool,
      elementExperimental: fields[20] as Element,
      date: fields[21] as DateTime,
      elementDate: fields[22] as Element,
      publisher: fields[23] as String,
      elementPublisher: fields[24] as Element,
      contact: (fields[25] as List)?.cast<ContactDetail>(),
      description: fields[26] as String,
      elementDescription: fields[27] as Element,
      useContext: (fields[28] as List)?.cast<UsageContext>(),
      purpose: fields[29] as String,
      elementPurpose: fields[30] as Element,
      code: fields[31] as String,
      elementCode: fields[32] as Element,
      search: fields[33] as bool,
      elementSearch: fields[34] as Element,
      resource: (fields[35] as List)?.cast<CompartmentDefinition_Resource>(),
    );
  }

  @override
  void write(BinaryWriter writer, CompartmentDefinition obj) {
    writer
      ..writeByte(36)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.elementUrl)
      ..writeByte(13)
      ..write(obj.version)
      ..writeByte(14)
      ..write(obj.elementVersion)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.elementStatus)
      ..writeByte(19)
      ..write(obj.experimental)
      ..writeByte(20)
      ..write(obj.elementExperimental)
      ..writeByte(21)
      ..write(obj.date)
      ..writeByte(22)
      ..write(obj.elementDate)
      ..writeByte(23)
      ..write(obj.publisher)
      ..writeByte(24)
      ..write(obj.elementPublisher)
      ..writeByte(25)
      ..write(obj.contact)
      ..writeByte(26)
      ..write(obj.description)
      ..writeByte(27)
      ..write(obj.elementDescription)
      ..writeByte(28)
      ..write(obj.useContext)
      ..writeByte(29)
      ..write(obj.purpose)
      ..writeByte(30)
      ..write(obj.elementPurpose)
      ..writeByte(31)
      ..write(obj.code)
      ..writeByte(32)
      ..write(obj.elementCode)
      ..writeByte(33)
      ..write(obj.search)
      ..writeByte(34)
      ..write(obj.elementSearch)
      ..writeByte(35)
      ..write(obj.resource);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompartmentDefinition _$CompartmentDefinitionFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition(
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
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    purpose: json['purpose'] as String,
    elementPurpose: json['elementPurpose'] == null
        ? null
        : Element.fromJson(json['elementPurpose'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    search: json['search'] as bool,
    elementSearch: json['elementSearch'] == null
        ? null
        : Element.fromJson(json['elementSearch'] as Map<String, dynamic>),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : CompartmentDefinition_Resource.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompartmentDefinitionToJson(
        CompartmentDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'experimental': instance.experimental,
      'elementExperimental': instance.elementExperimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'publisher': instance.publisher,
      'elementPublisher': instance.elementPublisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'purpose': instance.purpose,
      'elementPurpose': instance.elementPurpose?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'search': instance.search,
      'elementSearch': instance.elementSearch?.toJson(),
      'resource': instance.resource?.map((e) => e?.toJson())?.toList(),
    };

CompartmentDefinition_Resource _$CompartmentDefinition_ResourceFromJson(
    Map<String, dynamic> json) {
  return CompartmentDefinition_Resource(
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
    param: (json['param'] as List)?.map((e) => e as String)?.toList(),
    elementParam: (json['elementParam'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    documentation: json['documentation'] as String,
    elementDocumentation: json['elementDocumentation'] == null
        ? null
        : Element.fromJson(
            json['elementDocumentation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompartmentDefinition_ResourceToJson(
        CompartmentDefinition_Resource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'param': instance.param,
      'elementParam': instance.elementParam?.map((e) => e?.toJson())?.toList(),
      'documentation': instance.documentation,
      'elementDocumentation': instance.elementDocumentation?.toJson(),
    };
