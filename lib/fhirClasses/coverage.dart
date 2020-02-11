import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 191)
class Coverage {

  //  This is a Coverage resource
  @HiveField(0)
  final String resourceType= 'Coverage';

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

  //  A unique identifier assigned to this coverage.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The type of coverage: social program, medical plan, accident coverage
  // (workers compensation, auto), group health or payment by an individual
  // or organization.
  @HiveField(14)
  CodeableConcept type;

  //  The party who 'owns' the insurance policy.
  @HiveField(15)
  Reference policyHolder;

  //  The party who has signed-up for or 'owns' the contractual relationship
  // to the policy or to whom the benefit of the policy for services
  // rendered to them or their family is due.
  @HiveField(16)
  Reference subscriber;

  //  The insurer assigned ID for the Subscriber.
  @HiveField(17)
  String subscriberId;

  //  Extensions for subscriberId
  @HiveField(18)
  Element elementSubscriberId;

  //  The party who benefits from the insurance coverage; the patient when
  // products and/or services are provided.
  @HiveField(19)
  Reference beneficiary;

  //  A unique identifier for a dependent under the coverage.
  @HiveField(20)
  String dependent;

  //  Extensions for dependent
  @HiveField(21)
  Element elementDependent;

  //  The relationship of beneficiary (patient) to the subscriber.
  @HiveField(22)
  CodeableConcept relationship;

  //  Time period during which the coverage is in force. A missing start
  // date indicates the start date isn't known, a missing end date means the
  // coverage is continuing to be in force.
  @HiveField(23)
  Period period;

  //  The program or plan underwriter or payor including both insurance and
  // non-insurance agreements, such as patient-pay agreements.
  @HiveField(24)
  List<Reference> payor;

  //  A suite of underwriter specific classifiers.
  @HiveField(25)
  List<Coverage_Class> classs;

  //  The order of applicability of this coverage relative to other
  // coverages which are currently in force. Note, there may be gaps in the
  // numbering and this does not imply primary, secondary etc. as the
  // specific positioning of coverages depends upon the episode of care.
  @HiveField(26)
  int order;

  //  Extensions for order
  @HiveField(27)
  Element elementOrder;

  //  The insurer-specific identifier for the insurer-defined network of
  // providers to which the beneficiary may seek treatment which will be
  // covered at the 'in-network' rate, otherwise 'out of network' terms and
  // conditions apply.
  @HiveField(28)
  String network;

  //  Extensions for network
  @HiveField(29)
  Element elementNetwork;

  //  A suite of codes indicating the cost category and associated amount
  // which have been detailed in the policy and may have been  included on
  // the health card.
  @HiveField(30)
  List<Coverage_CostToBeneficiary> costToBeneficiary;

  //  When 'subrogation=true' this insurance instance has been included not
  // for adjudication but to provide insurers with the details to recover
  // costs.
  @HiveField(31)
  bool subrogation;

  //  Extensions for subrogation
  @HiveField(32)
  Element elementSubrogation;

  //  The policy(s) which constitute this insurance coverage.
  @HiveField(33)
  List<Reference> contract;

Coverage(
  this.beneficiary,
    this.payor,
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
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.elementSubscriberId,
    this.dependent,
    this.elementDependent,
    this.relationship,
    this.period,
    this.classs,
    this.order,
    this.elementOrder,
    this.network,
    this.elementNetwork,
    this.costToBeneficiary,
    this.subrogation,
    this.elementSubrogation,
    this.contract
    });

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 192)
class Coverage_Class {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of classification for which an insurer-specific class label
  // or number and optional name is provided, for example may be used to
  // identify a class of coverage or employer group, Policy, Plan.
  @HiveField(3)
  CodeableConcept type;

  //  The alphanumeric string value associated with the insurer issued
  // label.
  @HiveField(4)
  String value;

  //  Extensions for value
  @HiveField(5)
  Element elementValue;

  //  A short description for the class.
  @HiveField(6)
  String name;

  //  Extensions for name
  @HiveField(7)
  Element elementName;

Coverage_Class(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.elementValue,
    this.name,
    this.elementName
    });

  factory Coverage_Class.fromJson(Map<String, dynamic> json) => _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ClassToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 193)
class Coverage_CostToBeneficiary {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The category of patient centric costs associated with treatment.
  @HiveField(3)
  CodeableConcept type;

  //  The amount due from the patient for the cost category.
  @HiveField(4)
  Quantity valueQuantity;

  //  The amount due from the patient for the cost category.
  @HiveField(5)
  Money valueMoney;

  //  A suite of codes indicating exceptions or reductions to patient costs
  // and their effective periods.
  @HiveField(6)
  List<Coverage_Exception> exception;

Coverage_CostToBeneficiary(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception
    });

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) => _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_CostToBeneficiaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 194)
class Coverage_Exception {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
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
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The code for the specific exception.
  @HiveField(3)
  CodeableConcept type;

  //  The timeframe during when the exception is in force.
  @HiveField(4)
  Period period;

Coverage_Exception(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.period
    });

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) => _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ExceptionToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoverageAdapter extends TypeAdapter<Coverage> {
  @override
  final typeId = 191;

  @override
  Coverage read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage(
      fields[19] as Reference,
      (fields[24] as List)?.cast<Reference>(),
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
      type: fields[14] as CodeableConcept,
      policyHolder: fields[15] as Reference,
      subscriber: fields[16] as Reference,
      subscriberId: fields[17] as String,
      elementSubscriberId: fields[18] as Element,
      dependent: fields[20] as String,
      elementDependent: fields[21] as Element,
      relationship: fields[22] as CodeableConcept,
      period: fields[23] as Period,
      classs: (fields[25] as List)?.cast<Coverage_Class>(),
      order: fields[26] as int,
      elementOrder: fields[27] as Element,
      network: fields[28] as String,
      elementNetwork: fields[29] as Element,
      costToBeneficiary:
          (fields[30] as List)?.cast<Coverage_CostToBeneficiary>(),
      subrogation: fields[31] as bool,
      elementSubrogation: fields[32] as Element,
      contract: (fields[33] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Coverage obj) {
    writer
      ..writeByte(34)
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
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.policyHolder)
      ..writeByte(16)
      ..write(obj.subscriber)
      ..writeByte(17)
      ..write(obj.subscriberId)
      ..writeByte(18)
      ..write(obj.elementSubscriberId)
      ..writeByte(19)
      ..write(obj.beneficiary)
      ..writeByte(20)
      ..write(obj.dependent)
      ..writeByte(21)
      ..write(obj.elementDependent)
      ..writeByte(22)
      ..write(obj.relationship)
      ..writeByte(23)
      ..write(obj.period)
      ..writeByte(24)
      ..write(obj.payor)
      ..writeByte(25)
      ..write(obj.classs)
      ..writeByte(26)
      ..write(obj.order)
      ..writeByte(27)
      ..write(obj.elementOrder)
      ..writeByte(28)
      ..write(obj.network)
      ..writeByte(29)
      ..write(obj.elementNetwork)
      ..writeByte(30)
      ..write(obj.costToBeneficiary)
      ..writeByte(31)
      ..write(obj.subrogation)
      ..writeByte(32)
      ..write(obj.elementSubrogation)
      ..writeByte(33)
      ..write(obj.contract);
  }
}

class Coverage_ClassAdapter extends TypeAdapter<Coverage_Class> {
  @override
  final typeId = 192;

  @override
  Coverage_Class read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage_Class(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      value: fields[4] as String,
      elementValue: fields[5] as Element,
      name: fields[6] as String,
      elementName: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Coverage_Class obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.value)
      ..writeByte(5)
      ..write(obj.elementValue)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName);
  }
}

class Coverage_CostToBeneficiaryAdapter
    extends TypeAdapter<Coverage_CostToBeneficiary> {
  @override
  final typeId = 193;

  @override
  Coverage_CostToBeneficiary read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage_CostToBeneficiary(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      valueQuantity: fields[4] as Quantity,
      valueMoney: fields[5] as Money,
      exception: (fields[6] as List)?.cast<Coverage_Exception>(),
    );
  }

  @override
  void write(BinaryWriter writer, Coverage_CostToBeneficiary obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.valueQuantity)
      ..writeByte(5)
      ..write(obj.valueMoney)
      ..writeByte(6)
      ..write(obj.exception);
  }
}

class Coverage_ExceptionAdapter extends TypeAdapter<Coverage_Exception> {
  @override
  final typeId = 194;

  @override
  Coverage_Exception read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coverage_Exception(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      period: fields[4] as Period,
    );
  }

  @override
  void write(BinaryWriter writer, Coverage_Exception obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.period);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return Coverage(
    json['beneficiary'] == null
        ? null
        : Reference.fromJson(json['beneficiary'] as Map<String, dynamic>),
    (json['payor'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    policyHolder: json['policyHolder'] == null
        ? null
        : Reference.fromJson(json['policyHolder'] as Map<String, dynamic>),
    subscriber: json['subscriber'] == null
        ? null
        : Reference.fromJson(json['subscriber'] as Map<String, dynamic>),
    subscriberId: json['subscriberId'] as String,
    elementSubscriberId: json['elementSubscriberId'] == null
        ? null
        : Element.fromJson(json['elementSubscriberId'] as Map<String, dynamic>),
    dependent: json['dependent'] as String,
    elementDependent: json['elementDependent'] == null
        ? null
        : Element.fromJson(json['elementDependent'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    classs: (json['classs'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_Class.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    order: json['order'] as int,
    elementOrder: json['elementOrder'] == null
        ? null
        : Element.fromJson(json['elementOrder'] as Map<String, dynamic>),
    network: json['network'] as String,
    elementNetwork: json['elementNetwork'] == null
        ? null
        : Element.fromJson(json['elementNetwork'] as Map<String, dynamic>),
    costToBeneficiary: (json['costToBeneficiary'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_CostToBeneficiary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subrogation: json['subrogation'] as bool,
    elementSubrogation: json['elementSubrogation'] == null
        ? null
        : Element.fromJson(json['elementSubrogation'] as Map<String, dynamic>),
    contract: (json['contract'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageToJson(Coverage instance) => <String, dynamic>{
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
      'type': instance.type?.toJson(),
      'policyHolder': instance.policyHolder?.toJson(),
      'subscriber': instance.subscriber?.toJson(),
      'subscriberId': instance.subscriberId,
      'elementSubscriberId': instance.elementSubscriberId?.toJson(),
      'beneficiary': instance.beneficiary?.toJson(),
      'dependent': instance.dependent,
      'elementDependent': instance.elementDependent?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'period': instance.period?.toJson(),
      'payor': instance.payor?.map((e) => e?.toJson())?.toList(),
      'classs': instance.classs?.map((e) => e?.toJson())?.toList(),
      'order': instance.order,
      'elementOrder': instance.elementOrder?.toJson(),
      'network': instance.network,
      'elementNetwork': instance.elementNetwork?.toJson(),
      'costToBeneficiary':
          instance.costToBeneficiary?.map((e) => e?.toJson())?.toList(),
      'subrogation': instance.subrogation,
      'elementSubrogation': instance.elementSubrogation?.toJson(),
      'contract': instance.contract?.map((e) => e?.toJson())?.toList(),
    };

Coverage_Class _$Coverage_ClassFromJson(Map<String, dynamic> json) {
  return Coverage_Class(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] as String,
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Coverage_ClassToJson(Coverage_Class instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
    };

Coverage_CostToBeneficiary _$Coverage_CostToBeneficiaryFromJson(
    Map<String, dynamic> json) {
  return Coverage_CostToBeneficiary(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    exception: (json['exception'] as List)
        ?.map((e) => e == null
            ? null
            : Coverage_Exception.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Coverage_CostToBeneficiaryToJson(
        Coverage_CostToBeneficiary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'exception': instance.exception?.map((e) => e?.toJson())?.toList(),
    };

Coverage_Exception _$Coverage_ExceptionFromJson(Map<String, dynamic> json) {
  return Coverage_Exception(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Coverage_ExceptionToJson(Coverage_Exception instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'period': instance.period?.toJson(),
    };
