import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 154)
class OperationOutcome {

  //  This is a OperationOutcome resource
  @HiveField(0)
  final String resourceType= 'OperationOutcome';

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

  //  An error, warning, or information message that results from a system
  // action.
  @HiveField(11)
  List<OperationOutcome_Issue> issue;

OperationOutcome(
  this.issue,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension
    });

  factory OperationOutcome.fromJson(Map<String, dynamic> json) => _$OperationOutcomeFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcomeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperationOutcome_Issue {

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

  //  Indicates whether the issue indicates a variation from successful
  // processing.
  String severity; // <code> enum: fatal/error/warning/information;

  //  Extensions for severity
  Element elementSeverity;

  //  Describes the type of the issue. The system that creates an
  // OperationOutcome SHALL choose the most applicable code from the
  // IssueType value set, and may additional provide its own code for the
  // error in the details element.
  String code; // <code> enum: invalid/structure/required/value/invariant/security/login/unknown/expired/forbidden/suppressed/processing/not-supported/duplicate/multiple-matches/not-found/deleted/too-long/code-invalid/extension/too-costly/business-rule/conflict/transient/lock-error/no-store/exception/timeout/incomplete/throttled/informational;

  //  Extensions for code
  Element elementCode;

  //  Additional details about the error. This may be a text description of
  // the error or a system code that identifies the error.
  CodeableConcept details;

  //  Additional diagnostic information about the issue.
  String diagnostics;

  //  Extensions for diagnostics
  Element elementDiagnostics;

  //  This element is deprecated because it is XML specific. It is replaced
  // by issue.expression, which is format independent, and simpler to parse.
  //  For resource issues, this will be a simple XPath limited to element
  // names, repetition indicators and the default child accessor that
  // identifies one of the elements in the resource that caused this issue
  // to be raised.  For HTTP errors, will be "http." + the parameter name.
  List<String> location;

  //  Extensions for location
  List<Element> elementLocation;

  //  A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
  // names, repetition indicators and the default child accessor that
  // identifies one of the elements in the resource that caused this issue
  // to be raised.
  List<String> expression;

  //  Extensions for expression
  List<Element> elementExpression;

OperationOutcome_Issue(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.severity,
    this.elementSeverity,
    this.code,
    this.elementCode,
    this.details,
    this.diagnostics,
    this.elementDiagnostics,
    this.location,
    this.elementLocation,
    this.expression,
    this.elementExpression
    });

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) => _$OperationOutcome_IssueFromJson(json);
  Map<String, dynamic> toJson() => _$OperationOutcome_IssueToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OperationOutcomeAdapter extends TypeAdapter<OperationOutcome> {
  @override
  final typeId = 154;

  @override
  OperationOutcome read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OperationOutcome(
      (fields[11] as List)?.cast<OperationOutcome_Issue>(),
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
    );
  }

  @override
  void write(BinaryWriter writer, OperationOutcome obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.issue);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationOutcome _$OperationOutcomeFromJson(Map<String, dynamic> json) {
  return OperationOutcome(
    (json['issue'] as List)
        ?.map((e) => e == null
            ? null
            : OperationOutcome_Issue.fromJson(e as Map<String, dynamic>))
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
  );
}

Map<String, dynamic> _$OperationOutcomeToJson(OperationOutcome instance) =>
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
      'issue': instance.issue?.map((e) => e?.toJson())?.toList(),
    };

OperationOutcome_Issue _$OperationOutcome_IssueFromJson(
    Map<String, dynamic> json) {
  return OperationOutcome_Issue(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    details: json['details'] == null
        ? null
        : CodeableConcept.fromJson(json['details'] as Map<String, dynamic>),
    diagnostics: json['diagnostics'] as String,
    elementDiagnostics: json['elementDiagnostics'] == null
        ? null
        : Element.fromJson(json['elementDiagnostics'] as Map<String, dynamic>),
    location: (json['location'] as List)?.map((e) => e as String)?.toList(),
    elementLocation: (json['elementLocation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expression: (json['expression'] as List)?.map((e) => e as String)?.toList(),
    elementExpression: (json['elementExpression'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OperationOutcome_IssueToJson(
        OperationOutcome_Issue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'details': instance.details?.toJson(),
      'diagnostics': instance.diagnostics,
      'elementDiagnostics': instance.elementDiagnostics?.toJson(),
      'location': instance.location,
      'elementLocation':
          instance.elementLocation?.map((e) => e?.toJson())?.toList(),
      'expression': instance.expression,
      'elementExpression':
          instance.elementExpression?.map((e) => e?.toJson())?.toList(),
    };
