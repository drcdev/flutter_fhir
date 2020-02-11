import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 200)
class CoverageEligibilityResponse {

  //  This is a CoverageEligibilityResponse resource
  @HiveField(0)
  final String resourceType= 'CoverageEligibilityResponse';

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

  //  A unique identifier assigned to this coverage eligiblity request.
  @HiveField(11)
  List<Identifier> identifier;

  //  The status of the resource instance.
  @HiveField(12)
  String status;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  Code to specify whether requesting: prior authorization requirements
  // for some service categories or billing codes; benefits for coverages
  // specified or discovered; discovery and return of coverages for the
  // patient; and/or validation that the specified coverage is in-force at
  // the date/period specified or 'now' if not specified.
  @HiveField(14)
  List<String> purpose; // <code> enum: auth-requirements/benefits/discovery/validation> purpose;

  //  Extensions for purpose
  @HiveField(15)
  List<Element> elementPurpose;

  //  The party who is the beneficiary of the supplied coverage and for whom
  // eligibility is sought.
  @HiveField(16)
  Reference patient;

  //  The date or dates when the enclosed suite of services were performed
  // or completed.
  @HiveField(17)
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for servicedDate
  @HiveField(18)
  Element elementServicedDate;

  //  The date or dates when the enclosed suite of services were performed
  // or completed.
  @HiveField(19)
  Period servicedPeriod;

  //  The date this resource was created.
  @HiveField(20)
  DateTime created;

  //  Extensions for created
  @HiveField(21)
  Element elementCreated;

  //  The provider which is responsible for the request.
  @HiveField(22)
  Reference requestor;

  //  Reference to the original request resource.
  @HiveField(23)
  Reference request;

  //  The outcome of the request processing.
  @HiveField(24)
  String outcome; // <code> enum: queued/complete/error/partial;

  //  Extensions for outcome
  @HiveField(25)
  Element elementOutcome;

  //  A human readable description of the status of the adjudication.
  @HiveField(26)
  String disposition;

  //  Extensions for disposition
  @HiveField(27)
  Element elementDisposition;

  //  The Insurer who issued the coverage in question and is the author of
  // the response.
  @HiveField(28)
  Reference insurer;

  //  Financial instruments for reimbursement for the health care products
  // and services.
  @HiveField(29)
  List<CoverageEligibilityResponse_Insurance> insurance;

  //  A reference from the Insurer to which these services pertain to be
  // used on further communication and as proof that the request occurred.
  @HiveField(30)
  String preAuthRef;

  //  Extensions for preAuthRef
  @HiveField(31)
  Element elementPreAuthRef;

  //  A code for the form to be used for printing the content.
  @HiveField(32)
  CodeableConcept form;

  //  Errors encountered during the processing of the request.
  @HiveField(33)
  List<CoverageEligibilityResponse_Error> error;

CoverageEligibilityResponse(
  this.patient,
    this.request,
    this.insurer,
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
    this.purpose,
    this.elementPurpose,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.created,
    this.elementCreated,
    this.requestor,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.insurance,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.form,
    this.error
    });

  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Insurance {

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

  //  Reference to the insurance card level information contained in the
  // Coverage resource. The coverage issuing insurer will use these details
  // to locate the patient's actual coverage within the insurer's
  // information system.
  Reference coverage;

  //  Flag indicating if the coverage provided is inforce currently if no
  // service date(s) specified or for the whole duration of the service
  // dates.
  bool inforce;

  //  Extensions for inforce
  Element elementInforce;

  //  The term of the benefits documented in this response.
  Period benefitPeriod;

  //  Benefits and optionally current balances, and authorization details by
  // category or service.
  List<CoverageEligibilityResponse_Item> item;

CoverageEligibilityResponse_Insurance(
  this.coverage,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.inforce,
    this.elementInforce,
    this.benefitPeriod,
    this.item
    });

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Item {

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

  //  Code to identify the general type of benefits under which products and
  // services are provided.
  CodeableConcept category;

  //  This contains the product, service, drug or other billing code for the
  // item.
  CodeableConcept productOrService;

  //  Item typification or modifiers codes to convey additional context for
  // the product or service.
  List<CodeableConcept> modifier;

  //  The practitioner who is eligible for the provision of the product or
  // service.
  Reference provider;

  //  True if the indicated class of service is excluded from the plan,
  // missing or False indicates the product or service is included in the
  // coverage.
  bool excluded;

  //  Extensions for excluded
  Element elementExcluded;

  //  A short name or tag for the benefit.
  String name;

  //  Extensions for name
  Element elementName;

  //  A richer description of the benefit or services covered.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Is a flag to indicate whether the benefits refer to in-network
  // providers or out-of-network providers.
  CodeableConcept network;

  //  Indicates if the benefits apply to an individual or to the family.
  CodeableConcept unit;

  //  The term or period of the values such as 'maximum lifetime benefit' or
  // 'maximum annual visits'.
  CodeableConcept term;

  //  Benefits used to date.
  List<CoverageEligibilityResponse_Benefit> benefit;

  //  A boolean flag indicating whether a preauthorization is required prior
  // to actual service delivery.
  bool authorizationRequired;

  //  Extensions for authorizationRequired
  Element elementAuthorizationRequired;

  //  Codes or comments regarding information or actions associated with the
  // preauthorization.
  List<CodeableConcept> authorizationSupporting;

  //  A web location for obtaining requirements or descriptive information
  // regarding the preauthorization.
  String authorizationUrl;

  //  Extensions for authorizationUrl
  Element elementAuthorizationUrl;

CoverageEligibilityResponse_Item(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,
    this.elementExcluded,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,
    this.elementAuthorizationRequired,
    this.authorizationSupporting,
    this.authorizationUrl,
    this.elementAuthorizationUrl
    });

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Benefit {

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

  //  Classification of benefit being provided.
  CodeableConcept type;

  //  The quantity of the benefit which is permitted under the coverage.
  int allowedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for allowedUnsignedInt
  Element elementAllowedUnsignedInt;

  //  The quantity of the benefit which is permitted under the coverage.
  String allowedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for allowedString
  Element elementAllowedString;

  //  The quantity of the benefit which is permitted under the coverage.
  Money allowedMoney;

  //  The quantity of the benefit which have been consumed to date.
  int usedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for usedUnsignedInt
  Element elementUsedUnsignedInt;

  //  The quantity of the benefit which have been consumed to date.
  String usedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for usedString
  Element elementUsedString;

  //  The quantity of the benefit which have been consumed to date.
  Money usedMoney;

CoverageEligibilityResponse_Benefit(
  this.type,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.allowedUnsignedInt,
    this.elementAllowedUnsignedInt,
    this.allowedString,
    this.elementAllowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.elementUsedUnsignedInt,
    this.usedString,
    this.elementUsedString,
    this.usedMoney
    });

  factory CoverageEligibilityResponse_Benefit.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_BenefitFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoverageEligibilityResponse_Error {

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

  //  An error code,from a specified code system, which details why the
  // eligibility check could not be performed.
  CodeableConcept code;

CoverageEligibilityResponse_Error(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory CoverageEligibilityResponse_Error.fromJson(Map<String, dynamic> json) => _$CoverageEligibilityResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$CoverageEligibilityResponse_ErrorToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoverageEligibilityResponseAdapter
    extends TypeAdapter<CoverageEligibilityResponse> {
  @override
  final typeId = 200;

  @override
  CoverageEligibilityResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoverageEligibilityResponse(
      fields[16] as Reference,
      fields[23] as Reference,
      fields[28] as Reference,
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
      purpose: (fields[14] as List)?.cast<String>(),
      elementPurpose: (fields[15] as List)?.cast<Element>(),
      servicedDate: fields[17] as String,
      elementServicedDate: fields[18] as Element,
      servicedPeriod: fields[19] as Period,
      created: fields[20] as DateTime,
      elementCreated: fields[21] as Element,
      requestor: fields[22] as Reference,
      outcome: fields[24] as String,
      elementOutcome: fields[25] as Element,
      disposition: fields[26] as String,
      elementDisposition: fields[27] as Element,
      insurance:
          (fields[29] as List)?.cast<CoverageEligibilityResponse_Insurance>(),
      preAuthRef: fields[30] as String,
      elementPreAuthRef: fields[31] as Element,
      form: fields[32] as CodeableConcept,
      error: (fields[33] as List)?.cast<CoverageEligibilityResponse_Error>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoverageEligibilityResponse obj) {
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
      ..write(obj.purpose)
      ..writeByte(15)
      ..write(obj.elementPurpose)
      ..writeByte(16)
      ..write(obj.patient)
      ..writeByte(17)
      ..write(obj.servicedDate)
      ..writeByte(18)
      ..write(obj.elementServicedDate)
      ..writeByte(19)
      ..write(obj.servicedPeriod)
      ..writeByte(20)
      ..write(obj.created)
      ..writeByte(21)
      ..write(obj.elementCreated)
      ..writeByte(22)
      ..write(obj.requestor)
      ..writeByte(23)
      ..write(obj.request)
      ..writeByte(24)
      ..write(obj.outcome)
      ..writeByte(25)
      ..write(obj.elementOutcome)
      ..writeByte(26)
      ..write(obj.disposition)
      ..writeByte(27)
      ..write(obj.elementDisposition)
      ..writeByte(28)
      ..write(obj.insurer)
      ..writeByte(29)
      ..write(obj.insurance)
      ..writeByte(30)
      ..write(obj.preAuthRef)
      ..writeByte(31)
      ..write(obj.elementPreAuthRef)
      ..writeByte(32)
      ..write(obj.form)
      ..writeByte(33)
      ..write(obj.error);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityResponse _$CoverageEligibilityResponseFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse(
    json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
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
    purpose: (json['purpose'] as List)?.map((e) => e as String)?.toList(),
    elementPurpose: (json['elementPurpose'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicedDate: json['servicedDate'] as String,
    elementServicedDate: json['elementServicedDate'] == null
        ? null
        : Element.fromJson(json['elementServicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Insurance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    preAuthRef: json['preAuthRef'] as String,
    elementPreAuthRef: json['elementPreAuthRef'] == null
        ? null
        : Element.fromJson(json['elementPreAuthRef'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
    error: (json['error'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Error.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponseToJson(
        CoverageEligibilityResponse instance) =>
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
      'purpose': instance.purpose,
      'elementPurpose':
          instance.elementPurpose?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'request': instance.request?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef': instance.elementPreAuthRef?.toJson(),
      'form': instance.form?.toJson(),
      'error': instance.error?.map((e) => e?.toJson())?.toList(),
    };

CoverageEligibilityResponse_Insurance
    _$CoverageEligibilityResponse_InsuranceFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Insurance(
    json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    inforce: json['inforce'] as bool,
    elementInforce: json['elementInforce'] == null
        ? null
        : Element.fromJson(json['elementInforce'] as Map<String, dynamic>),
    benefitPeriod: json['benefitPeriod'] == null
        ? null
        : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Item.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_InsuranceToJson(
        CoverageEligibilityResponse_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'coverage': instance.coverage?.toJson(),
      'inforce': instance.inforce,
      'elementInforce': instance.elementInforce?.toJson(),
      'benefitPeriod': instance.benefitPeriod?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
    };

CoverageEligibilityResponse_Item _$CoverageEligibilityResponse_ItemFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    productOrService: json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    excluded: json['excluded'] as bool,
    elementExcluded: json['elementExcluded'] == null
        ? null
        : Element.fromJson(json['elementExcluded'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    network: json['network'] == null
        ? null
        : CodeableConcept.fromJson(json['network'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    term: json['term'] == null
        ? null
        : CodeableConcept.fromJson(json['term'] as Map<String, dynamic>),
    benefit: (json['benefit'] as List)
        ?.map((e) => e == null
            ? null
            : CoverageEligibilityResponse_Benefit.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    authorizationRequired: json['authorizationRequired'] as bool,
    elementAuthorizationRequired: json['elementAuthorizationRequired'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorizationRequired'] as Map<String, dynamic>),
    authorizationSupporting: (json['authorizationSupporting'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    authorizationUrl: json['authorizationUrl'] as String,
    elementAuthorizationUrl: json['elementAuthorizationUrl'] == null
        ? null
        : Element.fromJson(
            json['elementAuthorizationUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_ItemToJson(
        CoverageEligibilityResponse_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.toJson(),
      'excluded': instance.excluded,
      'elementExcluded': instance.elementExcluded?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'network': instance.network?.toJson(),
      'unit': instance.unit?.toJson(),
      'term': instance.term?.toJson(),
      'benefit': instance.benefit?.map((e) => e?.toJson())?.toList(),
      'authorizationRequired': instance.authorizationRequired,
      'elementAuthorizationRequired':
          instance.elementAuthorizationRequired?.toJson(),
      'authorizationSupporting':
          instance.authorizationSupporting?.map((e) => e?.toJson())?.toList(),
      'authorizationUrl': instance.authorizationUrl,
      'elementAuthorizationUrl': instance.elementAuthorizationUrl?.toJson(),
    };

CoverageEligibilityResponse_Benefit
    _$CoverageEligibilityResponse_BenefitFromJson(Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Benefit(
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
    allowedUnsignedInt: json['allowedUnsignedInt'] as int,
    elementAllowedUnsignedInt: json['elementAllowedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedUnsignedInt'] as Map<String, dynamic>),
    allowedString: json['allowedString'] as String,
    elementAllowedString: json['elementAllowedString'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedString'] as Map<String, dynamic>),
    allowedMoney: json['allowedMoney'] == null
        ? null
        : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
    usedUnsignedInt: json['usedUnsignedInt'] as int,
    elementUsedUnsignedInt: json['elementUsedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementUsedUnsignedInt'] as Map<String, dynamic>),
    usedString: json['usedString'] as String,
    elementUsedString: json['elementUsedString'] == null
        ? null
        : Element.fromJson(json['elementUsedString'] as Map<String, dynamic>),
    usedMoney: json['usedMoney'] == null
        ? null
        : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_BenefitToJson(
        CoverageEligibilityResponse_Benefit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'allowedUnsignedInt': instance.allowedUnsignedInt,
      'elementAllowedUnsignedInt': instance.elementAllowedUnsignedInt?.toJson(),
      'allowedString': instance.allowedString,
      'elementAllowedString': instance.elementAllowedString?.toJson(),
      'allowedMoney': instance.allowedMoney?.toJson(),
      'usedUnsignedInt': instance.usedUnsignedInt,
      'elementUsedUnsignedInt': instance.elementUsedUnsignedInt?.toJson(),
      'usedString': instance.usedString,
      'elementUsedString': instance.elementUsedString?.toJson(),
      'usedMoney': instance.usedMoney?.toJson(),
    };

CoverageEligibilityResponse_Error _$CoverageEligibilityResponse_ErrorFromJson(
    Map<String, dynamic> json) {
  return CoverageEligibilityResponse_Error(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoverageEligibilityResponse_ErrorToJson(
        CoverageEligibilityResponse_Error instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
    };
