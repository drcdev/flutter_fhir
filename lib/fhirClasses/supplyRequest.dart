import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 194)
class SupplyRequest {

  //  This is a SupplyRequest resource
  @HiveField(0)
  final String resourceType= 'SupplyRequest';

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

  //  Business identifiers assigned to this SupplyRequest by the author
  // and/or other systems. These identifiers remain constant as the resource
  // is updated and propagates from server to server.
  @HiveField(11)
  List<Identifier> identifier;

  //  Status of the supply request.
  @HiveField(12)
  String status; // <code> enum: draft/active/suspended/cancelled/completed/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Category of supply, e.g.  central, non-stock, etc. This is used to
  // support work flows associated with the supply process.
  @HiveField(14)
  CodeableConcept category;

  //  Indicates how quickly this SupplyRequest should be addressed with
  // respect to other requests.
  @HiveField(15)
  String priority;

  //  Extensions for priority
  @HiveField(16)
  Element elementPriority;

  //  The item that is requested to be supplied. This is either a link to a
  // resource representing the details of the item or a code that identifies
  // the item from a known list.
  @HiveField(17)
  CodeableConcept itemCodeableConcept;

  //  The item that is requested to be supplied. This is either a link to a
  // resource representing the details of the item or a code that identifies
  // the item from a known list.
  @HiveField(18)
  Reference itemReference;

  //  The amount that is being ordered of the indicated item.
  @HiveField(19)
  Quantity quantity;

  //  Specific parameters for the ordered item.  For example, the size of
  // the indicated item.
  @HiveField(20)
  List<SupplyRequest_Parameter> parameter;

  //  When the request should be fulfilled.
  @HiveField(21)
  String occurrenceDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for occurrenceDateTime
  @HiveField(22)
  Element elementOccurrenceDateTime;

  //  When the request should be fulfilled.
  @HiveField(23)
  Period occurrencePeriod;

  //  When the request should be fulfilled.
  @HiveField(24)
  Timing occurrenceTiming;

  //  When the request was made.
  @HiveField(25)
  DateTime authoredOn;

  //  Extensions for authoredOn
  @HiveField(26)
  Element elementAuthoredOn;

  //  The device, practitioner, etc. who initiated the request.
  @HiveField(27)
  Reference requester;

  //  Who is intended to fulfill the request.
  @HiveField(28)
  List<Reference> supplier;

  //  The reason why the supply item was requested.
  @HiveField(29)
  List<CodeableConcept> reasonCode;

  //  The reason why the supply item was requested.
  @HiveField(30)
  List<Reference> reasonReference;

  //  Where the supply is expected to come from.
  @HiveField(31)
  Reference deliverFrom;

  //  Where the supply is destined to go.
  @HiveField(32)
  Reference deliverTo;

SupplyRequest(
  this.quantity,
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
    this.category,
    this.priority,
    this.elementPriority,
    this.itemCodeableConcept,
    this.itemReference,
    this.parameter,
    this.occurrenceDateTime,
    this.elementOccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.elementAuthoredOn,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo
    });

  factory SupplyRequest.fromJson(Map<String, dynamic> json) => _$SupplyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplyRequest_Parameter {

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

  //  A code or string that identifies the device detail being asserted.
  CodeableConcept code;

  //  The value of the device detail.
  CodeableConcept valueCodeableConcept;

  //  The value of the device detail.
  Quantity valueQuantity;

  //  The value of the device detail.
  Range valueRange;

  //  The value of the device detail.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

SupplyRequest_Parameter(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    this.elementValueBoolean
    });

  factory SupplyRequest_Parameter.fromJson(Map<String, dynamic> json) => _$SupplyRequest_ParameterFromJson(json);
  Map<String, dynamic> toJson() => _$SupplyRequest_ParameterToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SupplyRequestAdapter extends TypeAdapter<SupplyRequest> {
  @override
  final typeId = 194;

  @override
  SupplyRequest read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SupplyRequest(
      fields[19] as Quantity,
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
      category: fields[14] as CodeableConcept,
      priority: fields[15] as String,
      elementPriority: fields[16] as Element,
      itemCodeableConcept: fields[17] as CodeableConcept,
      itemReference: fields[18] as Reference,
      parameter: (fields[20] as List)?.cast<SupplyRequest_Parameter>(),
      occurrenceDateTime: fields[21] as String,
      elementOccurrenceDateTime: fields[22] as Element,
      occurrencePeriod: fields[23] as Period,
      occurrenceTiming: fields[24] as Timing,
      authoredOn: fields[25] as DateTime,
      elementAuthoredOn: fields[26] as Element,
      requester: fields[27] as Reference,
      supplier: (fields[28] as List)?.cast<Reference>(),
      reasonCode: (fields[29] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[30] as List)?.cast<Reference>(),
      deliverFrom: fields[31] as Reference,
      deliverTo: fields[32] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, SupplyRequest obj) {
    writer
      ..writeByte(33)
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
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.priority)
      ..writeByte(16)
      ..write(obj.elementPriority)
      ..writeByte(17)
      ..write(obj.itemCodeableConcept)
      ..writeByte(18)
      ..write(obj.itemReference)
      ..writeByte(19)
      ..write(obj.quantity)
      ..writeByte(20)
      ..write(obj.parameter)
      ..writeByte(21)
      ..write(obj.occurrenceDateTime)
      ..writeByte(22)
      ..write(obj.elementOccurrenceDateTime)
      ..writeByte(23)
      ..write(obj.occurrencePeriod)
      ..writeByte(24)
      ..write(obj.occurrenceTiming)
      ..writeByte(25)
      ..write(obj.authoredOn)
      ..writeByte(26)
      ..write(obj.elementAuthoredOn)
      ..writeByte(27)
      ..write(obj.requester)
      ..writeByte(28)
      ..write(obj.supplier)
      ..writeByte(29)
      ..write(obj.reasonCode)
      ..writeByte(30)
      ..write(obj.reasonReference)
      ..writeByte(31)
      ..write(obj.deliverFrom)
      ..writeByte(32)
      ..write(obj.deliverTo);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplyRequest _$SupplyRequestFromJson(Map<String, dynamic> json) {
  return SupplyRequest(
    json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
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
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : SupplyRequest_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    occurrenceDateTime: json['occurrenceDateTime'] as String,
    elementOccurrenceDateTime: json['elementOccurrenceDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementOccurrenceDateTime'] as Map<String, dynamic>),
    occurrencePeriod: json['occurrencePeriod'] == null
        ? null
        : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
    occurrenceTiming: json['occurrenceTiming'] == null
        ? null
        : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
    authoredOn: json['authoredOn'] == null
        ? null
        : DateTime.parse(json['authoredOn'] as String),
    elementAuthoredOn: json['elementAuthoredOn'] == null
        ? null
        : Element.fromJson(json['elementAuthoredOn'] as Map<String, dynamic>),
    requester: json['requester'] == null
        ? null
        : Reference.fromJson(json['requester'] as Map<String, dynamic>),
    supplier: (json['supplier'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    deliverFrom: json['deliverFrom'] == null
        ? null
        : Reference.fromJson(json['deliverFrom'] as Map<String, dynamic>),
    deliverTo: json['deliverTo'] == null
        ? null
        : Reference.fromJson(json['deliverTo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SupplyRequestToJson(SupplyRequest instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'category': instance.category?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'occurrenceDateTime': instance.occurrenceDateTime,
      'elementOccurrenceDateTime': instance.elementOccurrenceDateTime?.toJson(),
      'occurrencePeriod': instance.occurrencePeriod?.toJson(),
      'occurrenceTiming': instance.occurrenceTiming?.toJson(),
      'authoredOn': instance.authoredOn?.toIso8601String(),
      'elementAuthoredOn': instance.elementAuthoredOn?.toJson(),
      'requester': instance.requester?.toJson(),
      'supplier': instance.supplier?.map((e) => e?.toJson())?.toList(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'deliverFrom': instance.deliverFrom?.toJson(),
      'deliverTo': instance.deliverTo?.toJson(),
    };

SupplyRequest_Parameter _$SupplyRequest_ParameterFromJson(
    Map<String, dynamic> json) {
  return SupplyRequest_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SupplyRequest_ParameterToJson(
        SupplyRequest_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
    };
