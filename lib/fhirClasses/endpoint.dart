import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 100)
class Endpoint {

  //  This is a Endpoint resource
  @HiveField(0)
  final String resourceType= 'Endpoint';

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

  //  Identifier for the organization that is used to identify the endpoint
  // across multiple disparate systems.
  @HiveField(11)
  List<Identifier> identifier;

  //  active | suspended | error | off | test.
  @HiveField(12)
  String status; // <code> enum: active/suspended/error/off/entered-in-error/test;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  A coded value that represents the technical details of the usage of
  // this endpoint, such as what WSDLs should be used in what way. (e.g.
  // XDS.b/DICOM/cds-hook).
  @HiveField(14)
  Coding connectionType;

  //  A friendly name that this endpoint can be referred to with.
  @HiveField(15)
  String name;

  //  Extensions for name
  @HiveField(16)
  Element elementName;

  //  The organization that manages this endpoint (even if technically
  // another organization is hosting this in the cloud, it is the
  // organization associated with the data).
  @HiveField(17)
  Reference managingOrganization;

  //  Contact details for a human to contact about the subscription. The
  // primary use of this for system administrator troubleshooting.
  @HiveField(18)
  List<ContactPoint> contact;

  //  The interval during which the endpoint is expected to be operational.
  @HiveField(19)
  Period period;

  //  The payload type describes the acceptable content that can be
  // communicated on the endpoint.
  @HiveField(20)
  List<CodeableConcept> payloadType;

  //  The mime type to send the payload in - e.g. application/fhir+xml,
  // application/fhir+json. If the mime type is not specified, then the
  // sender could send any content (including no content depending on the
  // connectionType).
  @HiveField(21)
  List<String> payloadMimeType;

  //  Extensions for payloadMimeType
  @HiveField(22)
  List<Element> elementPayloadMimeType;

  //  The uri that describes the actual end-point to connect to.
  @HiveField(23)
  String address;

  //  Extensions for address
  @HiveField(24)
  Element elementAddress;

  //  Additional headers / information to send as part of the notification.
  @HiveField(25)
  List<String> header;

  //  Extensions for header
  @HiveField(26)
  List<Element> elementHeader;

Endpoint(
  this.connectionType,
    this.payloadType,
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
    this.identifier,
    this.status,
    this.elementStatus,
    this.name,
    this.elementName,
    this.managingOrganization,
    this.contact,
    this.period,
    this.payloadMimeType,
    this.elementPayloadMimeType,
    this.address,
    this.elementAddress,
    this.header,
    this.elementHeader
    });

  factory Endpoint.fromJson(Map<String, dynamic> json) => _$EndpointFromJson(json);
  Map<String, dynamic> toJson() => _$EndpointToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EndpointAdapter extends TypeAdapter<Endpoint> {
  @override
  final typeId = 100;

  @override
  Endpoint read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Endpoint(
      fields[14] as Coding,
      (fields[20] as List)?.cast<CodeableConcept>(),
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      managingOrganization: fields[17] as Reference,
      contact: (fields[18] as List)?.cast<ContactPoint>(),
      period: fields[19] as Period,
      payloadMimeType: (fields[21] as List)?.cast<String>(),
      elementPayloadMimeType: (fields[22] as List)?.cast<Element>(),
      address: fields[23] as String,
      elementAddress: fields[24] as Element,
      header: (fields[25] as List)?.cast<String>(),
      elementHeader: (fields[26] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, Endpoint obj) {
    writer
      ..writeByte(27)
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
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.connectionType)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.managingOrganization)
      ..writeByte(18)
      ..write(obj.contact)
      ..writeByte(19)
      ..write(obj.period)
      ..writeByte(20)
      ..write(obj.payloadType)
      ..writeByte(21)
      ..write(obj.payloadMimeType)
      ..writeByte(22)
      ..write(obj.elementPayloadMimeType)
      ..writeByte(23)
      ..write(obj.address)
      ..writeByte(24)
      ..write(obj.elementAddress)
      ..writeByte(25)
      ..write(obj.header)
      ..writeByte(26)
      ..write(obj.elementHeader);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpoint _$EndpointFromJson(Map<String, dynamic> json) {
  return Endpoint(
    json['connectionType'] == null
        ? null
        : Coding.fromJson(json['connectionType'] as Map<String, dynamic>),
    (json['payloadType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    managingOrganization: json['managingOrganization'] == null
        ? null
        : Reference.fromJson(
            json['managingOrganization'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    payloadMimeType:
        (json['payloadMimeType'] as List)?.map((e) => e as String)?.toList(),
    elementPayloadMimeType: (json['elementPayloadMimeType'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] as String,
    elementAddress: json['elementAddress'] == null
        ? null
        : Element.fromJson(json['elementAddress'] as Map<String, dynamic>),
    header: (json['header'] as List)?.map((e) => e as String)?.toList(),
    elementHeader: (json['elementHeader'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EndpointToJson(Endpoint instance) => <String, dynamic>{
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'connectionType': instance.connectionType?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'managingOrganization': instance.managingOrganization?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'period': instance.period?.toJson(),
      'payloadType': instance.payloadType?.map((e) => e?.toJson())?.toList(),
      'payloadMimeType': instance.payloadMimeType,
      'elementPayloadMimeType':
          instance.elementPayloadMimeType?.map((e) => e?.toJson())?.toList(),
      'address': instance.address,
      'elementAddress': instance.elementAddress?.toJson(),
      'header': instance.header,
      'elementHeader':
          instance.elementHeader?.map((e) => e?.toJson())?.toList(),
    };
