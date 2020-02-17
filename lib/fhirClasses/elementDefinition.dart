import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition {
  static Future<ElementDefinition> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    String representation,
    List<Element> elementRepresentation,
    String sliceName,
    Element elementSliceName,
    bool sliceIsConstraining,
    Element elementSliceIsConstraining,
    String label,
    Element elementLabel,
    List<Coding> code,
    ElementDefinition_Slicing slicing,
    String short,
    Element elementShort,
    String definition,
    Element elementDefinition,
    String comment,
    Element elementComment,
    String requirements,
    Element elementRequirements,
    List<String> alias,
    List<Element> elementAlias,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
    ElementDefinition_Base base,
    String contentReference,
    Element elementContentReference,
    List<ElementDefinition_Type> type,
    String defaultValueBase64Binary,
    Element elementDefaultValueBase64Binary,
    bool defaultValueBoolean,
    Element elementDefaultValueBoolean,
    String defaultValueCanonical,
    Element elementDefaultValueCanonical,
    String defaultValueCode,
    Element elementDefaultValueCode,
    String defaultValueDate,
    Element elementDefaultValueDate,
    String defaultValueDateTime,
    Element elementDefaultValueDateTime,
    int defaultValueDecimal,
    Element elementDefaultValueDecimal,
    String defaultValueId,
    Element elementDefaultValueId,
    String defaultValueInstant,
    Element elementDefaultValueInstant,
    int defaultValueInteger,
    Element elementDefaultValueInteger,
    String defaultValueMarkdown,
    Element elementDefaultValueMarkdown,
    String defaultValueOid,
    Element elementDefaultValueOid,
    int defaultValuePositiveInt,
    Element elementDefaultValuePositiveInt,
    String defaultValueString,
    Element elementDefaultValueString,
    String defaultValueTime,
    Element elementDefaultValueTime,
    int defaultValueUnsignedInt,
    Element elementDefaultValueUnsignedInt,
    String defaultValueUri,
    Element elementDefaultValueUri,
    String defaultValueUrl,
    Element elementDefaultValueUrl,
    String defaultValueUuid,
    Element elementDefaultValueUuid,
    Address defaultValueAddress,
    Age defaultValueAge,
    Annotation defaultValueAnnotation,
    Attachment defaultValueAttachment,
    CodeableConcept defaultValueCodeableConcept,
    Coding defaultValueCoding,
    ContactPoint defaultValueContactPoint,
    Count defaultValueCount,
    Distance defaultValueDistance,
    Duration defaultValueDuration,
    HumanName defaultValueHumanName,
    Identifier defaultValueIdentifier,
    Money defaultValueMoney,
    Period defaultValuePeriod,
    Quantity defaultValueQuantity,
    Range defaultValueRange,
    Ratio defaultValueRatio,
    Reference defaultValueReference,
    SampledData defaultValueSampledData,
    Signature defaultValueSignature,
    Timing defaultValueTiming,
    ContactDetail defaultValueContactDetail,
    Contributor defaultValueContributor,
    DataRequirement defaultValueDataRequirement,
    Expression defaultValueExpression,
    ParameterDefinition defaultValueParameterDefinition,
    RelatedArtifact defaultValueRelatedArtifact,
    TriggerDefinition defaultValueTriggerDefinition,
    UsageContext defaultValueUsageContext,
    Dosage defaultValueDosage,
    Meta defaultValueMeta,
    String meaningWhenMissing,
    Element elementMeaningWhenMissing,
    String orderMeaning,
    Element elementOrderMeaning,
    String fixedBase64Binary,
    Element elementFixedBase64Binary,
    bool fixedBoolean,
    Element elementFixedBoolean,
    String fixedCanonical,
    Element elementFixedCanonical,
    String fixedCode,
    Element elementFixedCode,
    String fixedDate,
    Element elementFixedDate,
    String fixedDateTime,
    Element elementFixedDateTime,
    int fixedDecimal,
    Element elementFixedDecimal,
    String fixedId,
    Element elementFixedId,
    String fixedInstant,
    Element elementFixedInstant,
    int fixedInteger,
    Element elementFixedInteger,
    String fixedMarkdown,
    Element elementFixedMarkdown,
    String fixedOid,
    Element elementFixedOid,
    int fixedPositiveInt,
    Element elementFixedPositiveInt,
    String fixedString,
    Element elementFixedString,
    String fixedTime,
    Element elementFixedTime,
    int fixedUnsignedInt,
    Element elementFixedUnsignedInt,
    String fixedUri,
    Element elementFixedUri,
    String fixedUrl,
    Element elementFixedUrl,
    String fixedUuid,
    Element elementFixedUuid,
    Address fixedAddress,
    Age fixedAge,
    Annotation fixedAnnotation,
    Attachment fixedAttachment,
    CodeableConcept fixedCodeableConcept,
    Coding fixedCoding,
    ContactPoint fixedContactPoint,
    Count fixedCount,
    Distance fixedDistance,
    Duration fixedDuration,
    HumanName fixedHumanName,
    Identifier fixedIdentifier,
    Money fixedMoney,
    Period fixedPeriod,
    Quantity fixedQuantity,
    Range fixedRange,
    Ratio fixedRatio,
    Reference fixedReference,
    SampledData fixedSampledData,
    Signature fixedSignature,
    Timing fixedTiming,
    ContactDetail fixedContactDetail,
    Contributor fixedContributor,
    DataRequirement fixedDataRequirement,
    Expression fixedExpression,
    ParameterDefinition fixedParameterDefinition,
    RelatedArtifact fixedRelatedArtifact,
    TriggerDefinition fixedTriggerDefinition,
    UsageContext fixedUsageContext,
    Dosage fixedDosage,
    Meta fixedMeta,
    String patternBase64Binary,
    Element elementPatternBase64Binary,
    bool patternBoolean,
    Element elementPatternBoolean,
    String patternCanonical,
    Element elementPatternCanonical,
    String patternCode,
    Element elementPatternCode,
    String patternDate,
    Element elementPatternDate,
    String patternDateTime,
    Element elementPatternDateTime,
    int patternDecimal,
    Element elementPatternDecimal,
    String patternId,
    Element elementPatternId,
    String patternInstant,
    Element elementPatternInstant,
    int patternInteger,
    Element elementPatternInteger,
    String patternMarkdown,
    Element elementPatternMarkdown,
    String patternOid,
    Element elementPatternOid,
    int patternPositiveInt,
    Element elementPatternPositiveInt,
    String patternString,
    Element elementPatternString,
    String patternTime,
    Element elementPatternTime,
    int patternUnsignedInt,
    Element elementPatternUnsignedInt,
    String patternUri,
    Element elementPatternUri,
    String patternUrl,
    Element elementPatternUrl,
    String patternUuid,
    Element elementPatternUuid,
    Address patternAddress,
    Age patternAge,
    Annotation patternAnnotation,
    Attachment patternAttachment,
    CodeableConcept patternCodeableConcept,
    Coding patternCoding,
    ContactPoint patternContactPoint,
    Count patternCount,
    Distance patternDistance,
    Duration patternDuration,
    HumanName patternHumanName,
    Identifier patternIdentifier,
    Money patternMoney,
    Period patternPeriod,
    Quantity patternQuantity,
    Range patternRange,
    Ratio patternRatio,
    Reference patternReference,
    SampledData patternSampledData,
    Signature patternSignature,
    Timing patternTiming,
    ContactDetail patternContactDetail,
    Contributor patternContributor,
    DataRequirement patternDataRequirement,
    Expression patternExpression,
    ParameterDefinition patternParameterDefinition,
    RelatedArtifact patternRelatedArtifact,
    TriggerDefinition patternTriggerDefinition,
    UsageContext patternUsageContext,
    Dosage patternDosage,
    Meta patternMeta,
    List<ElementDefinition_Example> example,
    String minValueDate,
    Element elementMinValueDate,
    String minValueDateTime,
    Element elementMinValueDateTime,
    String minValueInstant,
    Element elementMinValueInstant,
    String minValueTime,
    Element elementMinValueTime,
    int minValueDecimal,
    Element elementMinValueDecimal,
    int minValueInteger,
    Element elementMinValueInteger,
    int minValuePositiveInt,
    Element elementMinValuePositiveInt,
    int minValueUnsignedInt,
    Element elementMinValueUnsignedInt,
    Quantity minValueQuantity,
    String maxValueDate,
    Element elementMaxValueDate,
    String maxValueDateTime,
    Element elementMaxValueDateTime,
    String maxValueInstant,
    Element elementMaxValueInstant,
    String maxValueTime,
    Element elementMaxValueTime,
    int maxValueDecimal,
    Element elementMaxValueDecimal,
    int maxValueInteger,
    Element elementMaxValueInteger,
    int maxValuePositiveInt,
    Element elementMaxValuePositiveInt,
    int maxValueUnsignedInt,
    Element elementMaxValueUnsignedInt,
    Quantity maxValueQuantity,
    int maxLength,
    Element elementMaxLength,
    List<String> condition,
    List<Element> elementCondition,
    List<ElementDefinition_Constraint> constraint,
    bool mustSupport,
    Element elementMustSupport,
    bool isModifier,
    Element elementIsModifier,
    String isModifierReason,
    Element elementIsModifierReason,
    bool isSummary,
    Element elementIsSummary,
    ElementDefinition_Binding binding,
    List<ElementDefinition_Mapping> mapping,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition newElementDefinition = new ElementDefinition(
      id: id ?? await fhirDb.newResourceId('ElementDefinition'),
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      representation: representation,
      elementRepresentation: elementRepresentation,
      sliceName: sliceName,
      elementSliceName: elementSliceName,
      sliceIsConstraining: sliceIsConstraining,
      elementSliceIsConstraining: elementSliceIsConstraining,
      label: label,
      elementLabel: elementLabel,
      code: code,
      slicing: slicing,
      short: short,
      elementShort: elementShort,
      definition: definition,
      elementDefinition: elementDefinition,
      comment: comment,
      elementComment: elementComment,
      requirements: requirements,
      elementRequirements: elementRequirements,
      alias: alias,
      elementAlias: elementAlias,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
      base: base,
      contentReference: contentReference,
      elementContentReference: elementContentReference,
      type: type,
      defaultValueBase64Binary: defaultValueBase64Binary,
      elementDefaultValueBase64Binary: elementDefaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean,
      elementDefaultValueBoolean: elementDefaultValueBoolean,
      defaultValueCanonical: defaultValueCanonical,
      elementDefaultValueCanonical: elementDefaultValueCanonical,
      defaultValueCode: defaultValueCode,
      elementDefaultValueCode: elementDefaultValueCode,
      defaultValueDate: defaultValueDate,
      elementDefaultValueDate: elementDefaultValueDate,
      defaultValueDateTime: defaultValueDateTime,
      elementDefaultValueDateTime: elementDefaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal,
      elementDefaultValueDecimal: elementDefaultValueDecimal,
      defaultValueId: defaultValueId,
      elementDefaultValueId: elementDefaultValueId,
      defaultValueInstant: defaultValueInstant,
      elementDefaultValueInstant: elementDefaultValueInstant,
      defaultValueInteger: defaultValueInteger,
      elementDefaultValueInteger: elementDefaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown,
      elementDefaultValueMarkdown: elementDefaultValueMarkdown,
      defaultValueOid: defaultValueOid,
      elementDefaultValueOid: elementDefaultValueOid,
      defaultValuePositiveInt: defaultValuePositiveInt,
      elementDefaultValuePositiveInt: elementDefaultValuePositiveInt,
      defaultValueString: defaultValueString,
      elementDefaultValueString: elementDefaultValueString,
      defaultValueTime: defaultValueTime,
      elementDefaultValueTime: elementDefaultValueTime,
      defaultValueUnsignedInt: defaultValueUnsignedInt,
      elementDefaultValueUnsignedInt: elementDefaultValueUnsignedInt,
      defaultValueUri: defaultValueUri,
      elementDefaultValueUri: elementDefaultValueUri,
      defaultValueUrl: defaultValueUrl,
      elementDefaultValueUrl: elementDefaultValueUrl,
      defaultValueUuid: defaultValueUuid,
      elementDefaultValueUuid: elementDefaultValueUuid,
      defaultValueAddress: defaultValueAddress,
      defaultValueAge: defaultValueAge,
      defaultValueAnnotation: defaultValueAnnotation,
      defaultValueAttachment: defaultValueAttachment,
      defaultValueCodeableConcept: defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding,
      defaultValueContactPoint: defaultValueContactPoint,
      defaultValueCount: defaultValueCount,
      defaultValueDistance: defaultValueDistance,
      defaultValueDuration: defaultValueDuration,
      defaultValueHumanName: defaultValueHumanName,
      defaultValueIdentifier: defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity,
      defaultValueRange: defaultValueRange,
      defaultValueRatio: defaultValueRatio,
      defaultValueReference: defaultValueReference,
      defaultValueSampledData: defaultValueSampledData,
      defaultValueSignature: defaultValueSignature,
      defaultValueTiming: defaultValueTiming,
      defaultValueContactDetail: defaultValueContactDetail,
      defaultValueContributor: defaultValueContributor,
      defaultValueDataRequirement: defaultValueDataRequirement,
      defaultValueExpression: defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition,
      defaultValueRelatedArtifact: defaultValueRelatedArtifact,
      defaultValueTriggerDefinition: defaultValueTriggerDefinition,
      defaultValueUsageContext: defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage,
      defaultValueMeta: defaultValueMeta,
      meaningWhenMissing: meaningWhenMissing,
      elementMeaningWhenMissing: elementMeaningWhenMissing,
      orderMeaning: orderMeaning,
      elementOrderMeaning: elementOrderMeaning,
      fixedBase64Binary: fixedBase64Binary,
      elementFixedBase64Binary: elementFixedBase64Binary,
      fixedBoolean: fixedBoolean,
      elementFixedBoolean: elementFixedBoolean,
      fixedCanonical: fixedCanonical,
      elementFixedCanonical: elementFixedCanonical,
      fixedCode: fixedCode,
      elementFixedCode: elementFixedCode,
      fixedDate: fixedDate,
      elementFixedDate: elementFixedDate,
      fixedDateTime: fixedDateTime,
      elementFixedDateTime: elementFixedDateTime,
      fixedDecimal: fixedDecimal,
      elementFixedDecimal: elementFixedDecimal,
      fixedId: fixedId,
      elementFixedId: elementFixedId,
      fixedInstant: fixedInstant,
      elementFixedInstant: elementFixedInstant,
      fixedInteger: fixedInteger,
      elementFixedInteger: elementFixedInteger,
      fixedMarkdown: fixedMarkdown,
      elementFixedMarkdown: elementFixedMarkdown,
      fixedOid: fixedOid,
      elementFixedOid: elementFixedOid,
      fixedPositiveInt: fixedPositiveInt,
      elementFixedPositiveInt: elementFixedPositiveInt,
      fixedString: fixedString,
      elementFixedString: elementFixedString,
      fixedTime: fixedTime,
      elementFixedTime: elementFixedTime,
      fixedUnsignedInt: fixedUnsignedInt,
      elementFixedUnsignedInt: elementFixedUnsignedInt,
      fixedUri: fixedUri,
      elementFixedUri: elementFixedUri,
      fixedUrl: fixedUrl,
      elementFixedUrl: elementFixedUrl,
      fixedUuid: fixedUuid,
      elementFixedUuid: elementFixedUuid,
      fixedAddress: fixedAddress,
      fixedAge: fixedAge,
      fixedAnnotation: fixedAnnotation,
      fixedAttachment: fixedAttachment,
      fixedCodeableConcept: fixedCodeableConcept,
      fixedCoding: fixedCoding,
      fixedContactPoint: fixedContactPoint,
      fixedCount: fixedCount,
      fixedDistance: fixedDistance,
      fixedDuration: fixedDuration,
      fixedHumanName: fixedHumanName,
      fixedIdentifier: fixedIdentifier,
      fixedMoney: fixedMoney,
      fixedPeriod: fixedPeriod,
      fixedQuantity: fixedQuantity,
      fixedRange: fixedRange,
      fixedRatio: fixedRatio,
      fixedReference: fixedReference,
      fixedSampledData: fixedSampledData,
      fixedSignature: fixedSignature,
      fixedTiming: fixedTiming,
      fixedContactDetail: fixedContactDetail,
      fixedContributor: fixedContributor,
      fixedDataRequirement: fixedDataRequirement,
      fixedExpression: fixedExpression,
      fixedParameterDefinition: fixedParameterDefinition,
      fixedRelatedArtifact: fixedRelatedArtifact,
      fixedTriggerDefinition: fixedTriggerDefinition,
      fixedUsageContext: fixedUsageContext,
      fixedDosage: fixedDosage,
      fixedMeta: fixedMeta,
      patternBase64Binary: patternBase64Binary,
      elementPatternBase64Binary: elementPatternBase64Binary,
      patternBoolean: patternBoolean,
      elementPatternBoolean: elementPatternBoolean,
      patternCanonical: patternCanonical,
      elementPatternCanonical: elementPatternCanonical,
      patternCode: patternCode,
      elementPatternCode: elementPatternCode,
      patternDate: patternDate,
      elementPatternDate: elementPatternDate,
      patternDateTime: patternDateTime,
      elementPatternDateTime: elementPatternDateTime,
      patternDecimal: patternDecimal,
      elementPatternDecimal: elementPatternDecimal,
      patternId: patternId,
      elementPatternId: elementPatternId,
      patternInstant: patternInstant,
      elementPatternInstant: elementPatternInstant,
      patternInteger: patternInteger,
      elementPatternInteger: elementPatternInteger,
      patternMarkdown: patternMarkdown,
      elementPatternMarkdown: elementPatternMarkdown,
      patternOid: patternOid,
      elementPatternOid: elementPatternOid,
      patternPositiveInt: patternPositiveInt,
      elementPatternPositiveInt: elementPatternPositiveInt,
      patternString: patternString,
      elementPatternString: elementPatternString,
      patternTime: patternTime,
      elementPatternTime: elementPatternTime,
      patternUnsignedInt: patternUnsignedInt,
      elementPatternUnsignedInt: elementPatternUnsignedInt,
      patternUri: patternUri,
      elementPatternUri: elementPatternUri,
      patternUrl: patternUrl,
      elementPatternUrl: elementPatternUrl,
      patternUuid: patternUuid,
      elementPatternUuid: elementPatternUuid,
      patternAddress: patternAddress,
      patternAge: patternAge,
      patternAnnotation: patternAnnotation,
      patternAttachment: patternAttachment,
      patternCodeableConcept: patternCodeableConcept,
      patternCoding: patternCoding,
      patternContactPoint: patternContactPoint,
      patternCount: patternCount,
      patternDistance: patternDistance,
      patternDuration: patternDuration,
      patternHumanName: patternHumanName,
      patternIdentifier: patternIdentifier,
      patternMoney: patternMoney,
      patternPeriod: patternPeriod,
      patternQuantity: patternQuantity,
      patternRange: patternRange,
      patternRatio: patternRatio,
      patternReference: patternReference,
      patternSampledData: patternSampledData,
      patternSignature: patternSignature,
      patternTiming: patternTiming,
      patternContactDetail: patternContactDetail,
      patternContributor: patternContributor,
      patternDataRequirement: patternDataRequirement,
      patternExpression: patternExpression,
      patternParameterDefinition: patternParameterDefinition,
      patternRelatedArtifact: patternRelatedArtifact,
      patternTriggerDefinition: patternTriggerDefinition,
      patternUsageContext: patternUsageContext,
      patternDosage: patternDosage,
      patternMeta: patternMeta,
      example: example,
      minValueDate: minValueDate,
      elementMinValueDate: elementMinValueDate,
      minValueDateTime: minValueDateTime,
      elementMinValueDateTime: elementMinValueDateTime,
      minValueInstant: minValueInstant,
      elementMinValueInstant: elementMinValueInstant,
      minValueTime: minValueTime,
      elementMinValueTime: elementMinValueTime,
      minValueDecimal: minValueDecimal,
      elementMinValueDecimal: elementMinValueDecimal,
      minValueInteger: minValueInteger,
      elementMinValueInteger: elementMinValueInteger,
      minValuePositiveInt: minValuePositiveInt,
      elementMinValuePositiveInt: elementMinValuePositiveInt,
      minValueUnsignedInt: minValueUnsignedInt,
      elementMinValueUnsignedInt: elementMinValueUnsignedInt,
      minValueQuantity: minValueQuantity,
      maxValueDate: maxValueDate,
      elementMaxValueDate: elementMaxValueDate,
      maxValueDateTime: maxValueDateTime,
      elementMaxValueDateTime: elementMaxValueDateTime,
      maxValueInstant: maxValueInstant,
      elementMaxValueInstant: elementMaxValueInstant,
      maxValueTime: maxValueTime,
      elementMaxValueTime: elementMaxValueTime,
      maxValueDecimal: maxValueDecimal,
      elementMaxValueDecimal: elementMaxValueDecimal,
      maxValueInteger: maxValueInteger,
      elementMaxValueInteger: elementMaxValueInteger,
      maxValuePositiveInt: maxValuePositiveInt,
      elementMaxValuePositiveInt: elementMaxValuePositiveInt,
      maxValueUnsignedInt: maxValueUnsignedInt,
      elementMaxValueUnsignedInt: elementMaxValueUnsignedInt,
      maxValueQuantity: maxValueQuantity,
      maxLength: maxLength,
      elementMaxLength: elementMaxLength,
      condition: condition,
      elementCondition: elementCondition,
      constraint: constraint,
      mustSupport: mustSupport,
      elementMustSupport: elementMustSupport,
      isModifier: isModifier,
      elementIsModifier: elementIsModifier,
      isModifierReason: isModifierReason,
      elementIsModifierReason: elementIsModifierReason,
      isSummary: isSummary,
      elementIsSummary: elementIsSummary,
      binding: binding,
      mapping: mapping,
    );
    return newElementDefinition;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  String representation;
  List<Element> elementRepresentation;
  String sliceName;
  Element elementSliceName;
  bool sliceIsConstraining;
  Element elementSliceIsConstraining;
  String label;
  Element elementLabel;
  List<Coding> code;
  ElementDefinition_Slicing slicing;
  String short;
  Element elementShort;
  String definition;
  Element elementDefinition;
  String comment;
  Element elementComment;
  String requirements;
  Element elementRequirements;
  List<String> alias;
  List<Element> elementAlias;
  int min;
  Element elementMin;
  String max;
  Element elementMax;
  ElementDefinition_Base base;
  String contentReference;
  Element elementContentReference;
  List<ElementDefinition_Type> type;
  String defaultValueBase64Binary;
  Element elementDefaultValueBase64Binary;
  bool defaultValueBoolean;
  Element elementDefaultValueBoolean;
  String defaultValueCanonical;
  Element elementDefaultValueCanonical;
  String defaultValueCode;
  Element elementDefaultValueCode;
  String defaultValueDate;
  Element elementDefaultValueDate;
  String defaultValueDateTime;
  Element elementDefaultValueDateTime;
  int defaultValueDecimal;
  Element elementDefaultValueDecimal;
  String defaultValueId;
  Element elementDefaultValueId;
  String defaultValueInstant;
  Element elementDefaultValueInstant;
  int defaultValueInteger;
  Element elementDefaultValueInteger;
  String defaultValueMarkdown;
  Element elementDefaultValueMarkdown;
  String defaultValueOid;
  Element elementDefaultValueOid;
  int defaultValuePositiveInt;
  Element elementDefaultValuePositiveInt;
  String defaultValueString;
  Element elementDefaultValueString;
  String defaultValueTime;
  Element elementDefaultValueTime;
  int defaultValueUnsignedInt;
  Element elementDefaultValueUnsignedInt;
  String defaultValueUri;
  Element elementDefaultValueUri;
  String defaultValueUrl;
  Element elementDefaultValueUrl;
  String defaultValueUuid;
  Element elementDefaultValueUuid;
  Address defaultValueAddress;
  Age defaultValueAge;
  Annotation defaultValueAnnotation;
  Attachment defaultValueAttachment;
  CodeableConcept defaultValueCodeableConcept;
  Coding defaultValueCoding;
  ContactPoint defaultValueContactPoint;
  Count defaultValueCount;
  Distance defaultValueDistance;
  Duration defaultValueDuration;
  HumanName defaultValueHumanName;
  Identifier defaultValueIdentifier;
  Money defaultValueMoney;
  Period defaultValuePeriod;
  Quantity defaultValueQuantity;
  Range defaultValueRange;
  Ratio defaultValueRatio;
  Reference defaultValueReference;
  SampledData defaultValueSampledData;
  Signature defaultValueSignature;
  Timing defaultValueTiming;
  ContactDetail defaultValueContactDetail;
  Contributor defaultValueContributor;
  DataRequirement defaultValueDataRequirement;
  Expression defaultValueExpression;
  ParameterDefinition defaultValueParameterDefinition;
  RelatedArtifact defaultValueRelatedArtifact;
  TriggerDefinition defaultValueTriggerDefinition;
  UsageContext defaultValueUsageContext;
  Dosage defaultValueDosage;
  Meta defaultValueMeta;
  String meaningWhenMissing;
  Element elementMeaningWhenMissing;
  String orderMeaning;
  Element elementOrderMeaning;
  String fixedBase64Binary;
  Element elementFixedBase64Binary;
  bool fixedBoolean;
  Element elementFixedBoolean;
  String fixedCanonical;
  Element elementFixedCanonical;
  String fixedCode;
  Element elementFixedCode;
  String fixedDate;
  Element elementFixedDate;
  String fixedDateTime;
  Element elementFixedDateTime;
  int fixedDecimal;
  Element elementFixedDecimal;
  String fixedId;
  Element elementFixedId;
  String fixedInstant;
  Element elementFixedInstant;
  int fixedInteger;
  Element elementFixedInteger;
  String fixedMarkdown;
  Element elementFixedMarkdown;
  String fixedOid;
  Element elementFixedOid;
  int fixedPositiveInt;
  Element elementFixedPositiveInt;
  String fixedString;
  Element elementFixedString;
  String fixedTime;
  Element elementFixedTime;
  int fixedUnsignedInt;
  Element elementFixedUnsignedInt;
  String fixedUri;
  Element elementFixedUri;
  String fixedUrl;
  Element elementFixedUrl;
  String fixedUuid;
  Element elementFixedUuid;
  Address fixedAddress;
  Age fixedAge;
  Annotation fixedAnnotation;
  Attachment fixedAttachment;
  CodeableConcept fixedCodeableConcept;
  Coding fixedCoding;
  ContactPoint fixedContactPoint;
  Count fixedCount;
  Distance fixedDistance;
  Duration fixedDuration;
  HumanName fixedHumanName;
  Identifier fixedIdentifier;
  Money fixedMoney;
  Period fixedPeriod;
  Quantity fixedQuantity;
  Range fixedRange;
  Ratio fixedRatio;
  Reference fixedReference;
  SampledData fixedSampledData;
  Signature fixedSignature;
  Timing fixedTiming;
  ContactDetail fixedContactDetail;
  Contributor fixedContributor;
  DataRequirement fixedDataRequirement;
  Expression fixedExpression;
  ParameterDefinition fixedParameterDefinition;
  RelatedArtifact fixedRelatedArtifact;
  TriggerDefinition fixedTriggerDefinition;
  UsageContext fixedUsageContext;
  Dosage fixedDosage;
  Meta fixedMeta;
  String patternBase64Binary;
  Element elementPatternBase64Binary;
  bool patternBoolean;
  Element elementPatternBoolean;
  String patternCanonical;
  Element elementPatternCanonical;
  String patternCode;
  Element elementPatternCode;
  String patternDate;
  Element elementPatternDate;
  String patternDateTime;
  Element elementPatternDateTime;
  int patternDecimal;
  Element elementPatternDecimal;
  String patternId;
  Element elementPatternId;
  String patternInstant;
  Element elementPatternInstant;
  int patternInteger;
  Element elementPatternInteger;
  String patternMarkdown;
  Element elementPatternMarkdown;
  String patternOid;
  Element elementPatternOid;
  int patternPositiveInt;
  Element elementPatternPositiveInt;
  String patternString;
  Element elementPatternString;
  String patternTime;
  Element elementPatternTime;
  int patternUnsignedInt;
  Element elementPatternUnsignedInt;
  String patternUri;
  Element elementPatternUri;
  String patternUrl;
  Element elementPatternUrl;
  String patternUuid;
  Element elementPatternUuid;
  Address patternAddress;
  Age patternAge;
  Annotation patternAnnotation;
  Attachment patternAttachment;
  CodeableConcept patternCodeableConcept;
  Coding patternCoding;
  ContactPoint patternContactPoint;
  Count patternCount;
  Distance patternDistance;
  Duration patternDuration;
  HumanName patternHumanName;
  Identifier patternIdentifier;
  Money patternMoney;
  Period patternPeriod;
  Quantity patternQuantity;
  Range patternRange;
  Ratio patternRatio;
  Reference patternReference;
  SampledData patternSampledData;
  Signature patternSignature;
  Timing patternTiming;
  ContactDetail patternContactDetail;
  Contributor patternContributor;
  DataRequirement patternDataRequirement;
  Expression patternExpression;
  ParameterDefinition patternParameterDefinition;
  RelatedArtifact patternRelatedArtifact;
  TriggerDefinition patternTriggerDefinition;
  UsageContext patternUsageContext;
  Dosage patternDosage;
  Meta patternMeta;
  List<ElementDefinition_Example> example;
  String minValueDate;
  Element elementMinValueDate;
  String minValueDateTime;
  Element elementMinValueDateTime;
  String minValueInstant;
  Element elementMinValueInstant;
  String minValueTime;
  Element elementMinValueTime;
  int minValueDecimal;
  Element elementMinValueDecimal;
  int minValueInteger;
  Element elementMinValueInteger;
  int minValuePositiveInt;
  Element elementMinValuePositiveInt;
  int minValueUnsignedInt;
  Element elementMinValueUnsignedInt;
  Quantity minValueQuantity;
  String maxValueDate;
  Element elementMaxValueDate;
  String maxValueDateTime;
  Element elementMaxValueDateTime;
  String maxValueInstant;
  Element elementMaxValueInstant;
  String maxValueTime;
  Element elementMaxValueTime;
  int maxValueDecimal;
  Element elementMaxValueDecimal;
  int maxValueInteger;
  Element elementMaxValueInteger;
  int maxValuePositiveInt;
  Element elementMaxValuePositiveInt;
  int maxValueUnsignedInt;
  Element elementMaxValueUnsignedInt;
  Quantity maxValueQuantity;
  int maxLength;
  Element elementMaxLength;
  List<String> condition;
  List<Element> elementCondition;
  List<ElementDefinition_Constraint> constraint;
  bool mustSupport;
  Element elementMustSupport;
  bool isModifier;
  Element elementIsModifier;
  String isModifierReason;
  Element elementIsModifierReason;
  bool isSummary;
  Element elementIsSummary;
  ElementDefinition_Binding binding;
  List<ElementDefinition_Mapping> mapping;

  ElementDefinition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.representation,
    this.elementRepresentation,
    this.sliceName,
    this.elementSliceName,
    this.sliceIsConstraining,
    this.elementSliceIsConstraining,
    this.label,
    this.elementLabel,
    this.code,
    this.slicing,
    this.short,
    this.elementShort,
    this.definition,
    this.elementDefinition,
    this.comment,
    this.elementComment,
    this.requirements,
    this.elementRequirements,
    this.alias,
    this.elementAlias,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.base,
    this.contentReference,
    this.elementContentReference,
    this.type,
    this.defaultValueBase64Binary,
    this.elementDefaultValueBase64Binary,
    this.defaultValueBoolean,
    this.elementDefaultValueBoolean,
    this.defaultValueCanonical,
    this.elementDefaultValueCanonical,
    this.defaultValueCode,
    this.elementDefaultValueCode,
    this.defaultValueDate,
    this.elementDefaultValueDate,
    this.defaultValueDateTime,
    this.elementDefaultValueDateTime,
    this.defaultValueDecimal,
    this.elementDefaultValueDecimal,
    this.defaultValueId,
    this.elementDefaultValueId,
    this.defaultValueInstant,
    this.elementDefaultValueInstant,
    this.defaultValueInteger,
    this.elementDefaultValueInteger,
    this.defaultValueMarkdown,
    this.elementDefaultValueMarkdown,
    this.defaultValueOid,
    this.elementDefaultValueOid,
    this.defaultValuePositiveInt,
    this.elementDefaultValuePositiveInt,
    this.defaultValueString,
    this.elementDefaultValueString,
    this.defaultValueTime,
    this.elementDefaultValueTime,
    this.defaultValueUnsignedInt,
    this.elementDefaultValueUnsignedInt,
    this.defaultValueUri,
    this.elementDefaultValueUri,
    this.defaultValueUrl,
    this.elementDefaultValueUrl,
    this.defaultValueUuid,
    this.elementDefaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueMeta,
    this.meaningWhenMissing,
    this.elementMeaningWhenMissing,
    this.orderMeaning,
    this.elementOrderMeaning,
    this.fixedBase64Binary,
    this.elementFixedBase64Binary,
    this.fixedBoolean,
    this.elementFixedBoolean,
    this.fixedCanonical,
    this.elementFixedCanonical,
    this.fixedCode,
    this.elementFixedCode,
    this.fixedDate,
    this.elementFixedDate,
    this.fixedDateTime,
    this.elementFixedDateTime,
    this.fixedDecimal,
    this.elementFixedDecimal,
    this.fixedId,
    this.elementFixedId,
    this.fixedInstant,
    this.elementFixedInstant,
    this.fixedInteger,
    this.elementFixedInteger,
    this.fixedMarkdown,
    this.elementFixedMarkdown,
    this.fixedOid,
    this.elementFixedOid,
    this.fixedPositiveInt,
    this.elementFixedPositiveInt,
    this.fixedString,
    this.elementFixedString,
    this.fixedTime,
    this.elementFixedTime,
    this.fixedUnsignedInt,
    this.elementFixedUnsignedInt,
    this.fixedUri,
    this.elementFixedUri,
    this.fixedUrl,
    this.elementFixedUrl,
    this.fixedUuid,
    this.elementFixedUuid,
    this.fixedAddress,
    this.fixedAge,
    this.fixedAnnotation,
    this.fixedAttachment,
    this.fixedCodeableConcept,
    this.fixedCoding,
    this.fixedContactPoint,
    this.fixedCount,
    this.fixedDistance,
    this.fixedDuration,
    this.fixedHumanName,
    this.fixedIdentifier,
    this.fixedMoney,
    this.fixedPeriod,
    this.fixedQuantity,
    this.fixedRange,
    this.fixedRatio,
    this.fixedReference,
    this.fixedSampledData,
    this.fixedSignature,
    this.fixedTiming,
    this.fixedContactDetail,
    this.fixedContributor,
    this.fixedDataRequirement,
    this.fixedExpression,
    this.fixedParameterDefinition,
    this.fixedRelatedArtifact,
    this.fixedTriggerDefinition,
    this.fixedUsageContext,
    this.fixedDosage,
    this.fixedMeta,
    this.patternBase64Binary,
    this.elementPatternBase64Binary,
    this.patternBoolean,
    this.elementPatternBoolean,
    this.patternCanonical,
    this.elementPatternCanonical,
    this.patternCode,
    this.elementPatternCode,
    this.patternDate,
    this.elementPatternDate,
    this.patternDateTime,
    this.elementPatternDateTime,
    this.patternDecimal,
    this.elementPatternDecimal,
    this.patternId,
    this.elementPatternId,
    this.patternInstant,
    this.elementPatternInstant,
    this.patternInteger,
    this.elementPatternInteger,
    this.patternMarkdown,
    this.elementPatternMarkdown,
    this.patternOid,
    this.elementPatternOid,
    this.patternPositiveInt,
    this.elementPatternPositiveInt,
    this.patternString,
    this.elementPatternString,
    this.patternTime,
    this.elementPatternTime,
    this.patternUnsignedInt,
    this.elementPatternUnsignedInt,
    this.patternUri,
    this.elementPatternUri,
    this.patternUrl,
    this.elementPatternUrl,
    this.patternUuid,
    this.elementPatternUuid,
    this.patternAddress,
    this.patternAge,
    this.patternAnnotation,
    this.patternAttachment,
    this.patternCodeableConcept,
    this.patternCoding,
    this.patternContactPoint,
    this.patternCount,
    this.patternDistance,
    this.patternDuration,
    this.patternHumanName,
    this.patternIdentifier,
    this.patternMoney,
    this.patternPeriod,
    this.patternQuantity,
    this.patternRange,
    this.patternRatio,
    this.patternReference,
    this.patternSampledData,
    this.patternSignature,
    this.patternTiming,
    this.patternContactDetail,
    this.patternContributor,
    this.patternDataRequirement,
    this.patternExpression,
    this.patternParameterDefinition,
    this.patternRelatedArtifact,
    this.patternTriggerDefinition,
    this.patternUsageContext,
    this.patternDosage,
    this.patternMeta,
    this.example,
    this.minValueDate,
    this.elementMinValueDate,
    this.minValueDateTime,
    this.elementMinValueDateTime,
    this.minValueInstant,
    this.elementMinValueInstant,
    this.minValueTime,
    this.elementMinValueTime,
    this.minValueDecimal,
    this.elementMinValueDecimal,
    this.minValueInteger,
    this.elementMinValueInteger,
    this.minValuePositiveInt,
    this.elementMinValuePositiveInt,
    this.minValueUnsignedInt,
    this.elementMinValueUnsignedInt,
    this.minValueQuantity,
    this.maxValueDate,
    this.elementMaxValueDate,
    this.maxValueDateTime,
    this.elementMaxValueDateTime,
    this.maxValueInstant,
    this.elementMaxValueInstant,
    this.maxValueTime,
    this.elementMaxValueTime,
    this.maxValueDecimal,
    this.elementMaxValueDecimal,
    this.maxValueInteger,
    this.elementMaxValueInteger,
    this.maxValuePositiveInt,
    this.elementMaxValuePositiveInt,
    this.maxValueUnsignedInt,
    this.elementMaxValueUnsignedInt,
    this.maxValueQuantity,
    this.maxLength,
    this.elementMaxLength,
    this.condition,
    this.elementCondition,
    this.constraint,
    this.mustSupport,
    this.elementMustSupport,
    this.isModifier,
    this.elementIsModifier,
    this.isModifierReason,
    this.elementIsModifierReason,
    this.isSummary,
    this.elementIsSummary,
    this.binding,
    this.mapping,
  });

  factory ElementDefinition.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Slicing {
  static Future<ElementDefinition_Slicing> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<ElementDefinition_Discriminator> discriminator,
    String description,
    Element elementDescription,
    bool ordered,
    Element elementOrdered,
    String rules,
    Element elementRules,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Slicing newElementDefinition_Slicing =
        new ElementDefinition_Slicing(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Slicing'),
      extension: extension,
      modifierExtension: modifierExtension,
      discriminator: discriminator,
      description: description,
      elementDescription: elementDescription,
      ordered: ordered,
      elementOrdered: elementOrdered,
      rules: rules,
      elementRules: elementRules,
    );
    return newElementDefinition_Slicing;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<ElementDefinition_Discriminator> discriminator;
  String description;
  Element elementDescription;
  bool ordered;
  Element elementOrdered;
  String rules;
  Element elementRules;

  ElementDefinition_Slicing({
    this.id,
    this.extension,
    this.modifierExtension,
    this.discriminator,
    this.description,
    this.elementDescription,
    this.ordered,
    this.elementOrdered,
    this.rules,
    this.elementRules,
  });

  factory ElementDefinition_Slicing.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_SlicingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_SlicingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Discriminator {
  static Future<ElementDefinition_Discriminator> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String type,
    Element elementType,
    String path,
    Element elementPath,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Discriminator newElementDefinition_Discriminator =
        new ElementDefinition_Discriminator(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Discriminator'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      elementType: elementType,
      path: path,
      elementPath: elementPath,
    );
    return newElementDefinition_Discriminator;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String type;
  Element elementType;
  String path;
  Element elementPath;

  ElementDefinition_Discriminator({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.path,
    this.elementPath,
  });

  factory ElementDefinition_Discriminator.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_DiscriminatorFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ElementDefinition_DiscriminatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Base {
  static Future<ElementDefinition_Base> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String path,
    Element elementPath,
    int min,
    Element elementMin,
    String max,
    Element elementMax,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Base newElementDefinition_Base =
        new ElementDefinition_Base(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Base'),
      extension: extension,
      modifierExtension: modifierExtension,
      path: path,
      elementPath: elementPath,
      min: min,
      elementMin: elementMin,
      max: max,
      elementMax: elementMax,
    );
    return newElementDefinition_Base;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String path;
  Element elementPath;
  int min;
  Element elementMin;
  String max;
  Element elementMax;

  ElementDefinition_Base({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
  });

  factory ElementDefinition_Base.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_BaseFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BaseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Type {
  static Future<ElementDefinition_Type> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String code,
    Element elementCode,
    List<String> profile,
    List<String> targetProfile,
    String aggregation,
    List<Element> elementAggregation,
    String versioning,
    Element elementVersioning,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Type newElementDefinition_Type =
        new ElementDefinition_Type(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Type'),
      extension: extension,
      modifierExtension: modifierExtension,
      code: code,
      elementCode: elementCode,
      profile: profile,
      targetProfile: targetProfile,
      aggregation: aggregation,
      elementAggregation: elementAggregation,
      versioning: versioning,
      elementVersioning: elementVersioning,
    );
    return newElementDefinition_Type;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String code;
  Element elementCode;
  List<String> profile;
  List<String> targetProfile;
  String aggregation;
  List<Element> elementAggregation;
  String versioning;
  Element elementVersioning;

  ElementDefinition_Type({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.elementAggregation,
    this.versioning,
    this.elementVersioning,
  });

  factory ElementDefinition_Type.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_TypeFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Example {
  static Future<ElementDefinition_Example> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String label,
    Element elementLabel,
    String valueBase64Binary,
    Element elementValueBase64Binary,
    bool valueBoolean,
    Element elementValueBoolean,
    String valueCanonical,
    Element elementValueCanonical,
    String valueCode,
    Element elementValueCode,
    String valueDate,
    Element elementValueDate,
    String valueDateTime,
    Element elementValueDateTime,
    int valueDecimal,
    Element elementValueDecimal,
    String valueId,
    Element elementValueId,
    String valueInstant,
    Element elementValueInstant,
    int valueInteger,
    Element elementValueInteger,
    String valueMarkdown,
    Element elementValueMarkdown,
    String valueOid,
    Element elementValueOid,
    int valuePositiveInt,
    Element elementValuePositiveInt,
    String valueString,
    Element elementValueString,
    String valueTime,
    Element elementValueTime,
    int valueUnsignedInt,
    Element elementValueUnsignedInt,
    String valueUri,
    Element elementValueUri,
    String valueUrl,
    Element elementValueUrl,
    String valueUuid,
    Element elementValueUuid,
    Address valueAddress,
    Age valueAge,
    Annotation valueAnnotation,
    Attachment valueAttachment,
    CodeableConcept valueCodeableConcept,
    Coding valueCoding,
    ContactPoint valueContactPoint,
    Count valueCount,
    Distance valueDistance,
    Duration valueDuration,
    HumanName valueHumanName,
    Identifier valueIdentifier,
    Money valueMoney,
    Period valuePeriod,
    Quantity valueQuantity,
    Range valueRange,
    Ratio valueRatio,
    Reference valueReference,
    SampledData valueSampledData,
    Signature valueSignature,
    Timing valueTiming,
    ContactDetail valueContactDetail,
    Contributor valueContributor,
    DataRequirement valueDataRequirement,
    Expression valueExpression,
    ParameterDefinition valueParameterDefinition,
    RelatedArtifact valueRelatedArtifact,
    TriggerDefinition valueTriggerDefinition,
    UsageContext valueUsageContext,
    Dosage valueDosage,
    Meta valueMeta,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Example newElementDefinition_Example =
        new ElementDefinition_Example(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Example'),
      extension: extension,
      modifierExtension: modifierExtension,
      label: label,
      elementLabel: elementLabel,
      valueBase64Binary: valueBase64Binary,
      elementValueBase64Binary: elementValueBase64Binary,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueCanonical: valueCanonical,
      elementValueCanonical: elementValueCanonical,
      valueCode: valueCode,
      elementValueCode: elementValueCode,
      valueDate: valueDate,
      elementValueDate: elementValueDate,
      valueDateTime: valueDateTime,
      elementValueDateTime: elementValueDateTime,
      valueDecimal: valueDecimal,
      elementValueDecimal: elementValueDecimal,
      valueId: valueId,
      elementValueId: elementValueId,
      valueInstant: valueInstant,
      elementValueInstant: elementValueInstant,
      valueInteger: valueInteger,
      elementValueInteger: elementValueInteger,
      valueMarkdown: valueMarkdown,
      elementValueMarkdown: elementValueMarkdown,
      valueOid: valueOid,
      elementValueOid: elementValueOid,
      valuePositiveInt: valuePositiveInt,
      elementValuePositiveInt: elementValuePositiveInt,
      valueString: valueString,
      elementValueString: elementValueString,
      valueTime: valueTime,
      elementValueTime: elementValueTime,
      valueUnsignedInt: valueUnsignedInt,
      elementValueUnsignedInt: elementValueUnsignedInt,
      valueUri: valueUri,
      elementValueUri: elementValueUri,
      valueUrl: valueUrl,
      elementValueUrl: elementValueUrl,
      valueUuid: valueUuid,
      elementValueUuid: elementValueUuid,
      valueAddress: valueAddress,
      valueAge: valueAge,
      valueAnnotation: valueAnnotation,
      valueAttachment: valueAttachment,
      valueCodeableConcept: valueCodeableConcept,
      valueCoding: valueCoding,
      valueContactPoint: valueContactPoint,
      valueCount: valueCount,
      valueDistance: valueDistance,
      valueDuration: valueDuration,
      valueHumanName: valueHumanName,
      valueIdentifier: valueIdentifier,
      valueMoney: valueMoney,
      valuePeriod: valuePeriod,
      valueQuantity: valueQuantity,
      valueRange: valueRange,
      valueRatio: valueRatio,
      valueReference: valueReference,
      valueSampledData: valueSampledData,
      valueSignature: valueSignature,
      valueTiming: valueTiming,
      valueContactDetail: valueContactDetail,
      valueContributor: valueContributor,
      valueDataRequirement: valueDataRequirement,
      valueExpression: valueExpression,
      valueParameterDefinition: valueParameterDefinition,
      valueRelatedArtifact: valueRelatedArtifact,
      valueTriggerDefinition: valueTriggerDefinition,
      valueUsageContext: valueUsageContext,
      valueDosage: valueDosage,
      valueMeta: valueMeta,
    );
    return newElementDefinition_Example;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String label;
  Element elementLabel;
  String valueBase64Binary;
  Element elementValueBase64Binary;
  bool valueBoolean;
  Element elementValueBoolean;
  String valueCanonical;
  Element elementValueCanonical;
  String valueCode;
  Element elementValueCode;
  String valueDate;
  Element elementValueDate;
  String valueDateTime;
  Element elementValueDateTime;
  int valueDecimal;
  Element elementValueDecimal;
  String valueId;
  Element elementValueId;
  String valueInstant;
  Element elementValueInstant;
  int valueInteger;
  Element elementValueInteger;
  String valueMarkdown;
  Element elementValueMarkdown;
  String valueOid;
  Element elementValueOid;
  int valuePositiveInt;
  Element elementValuePositiveInt;
  String valueString;
  Element elementValueString;
  String valueTime;
  Element elementValueTime;
  int valueUnsignedInt;
  Element elementValueUnsignedInt;
  String valueUri;
  Element elementValueUri;
  String valueUrl;
  Element elementValueUrl;
  String valueUuid;
  Element elementValueUuid;
  Address valueAddress;
  Age valueAge;
  Annotation valueAnnotation;
  Attachment valueAttachment;
  CodeableConcept valueCodeableConcept;
  Coding valueCoding;
  ContactPoint valueContactPoint;
  Count valueCount;
  Distance valueDistance;
  Duration valueDuration;
  HumanName valueHumanName;
  Identifier valueIdentifier;
  Money valueMoney;
  Period valuePeriod;
  Quantity valueQuantity;
  Range valueRange;
  Ratio valueRatio;
  Reference valueReference;
  SampledData valueSampledData;
  Signature valueSignature;
  Timing valueTiming;
  ContactDetail valueContactDetail;
  Contributor valueContributor;
  DataRequirement valueDataRequirement;
  Expression valueExpression;
  ParameterDefinition valueParameterDefinition;
  RelatedArtifact valueRelatedArtifact;
  TriggerDefinition valueTriggerDefinition;
  UsageContext valueUsageContext;
  Dosage valueDosage;
  Meta valueMeta;

  ElementDefinition_Example({
    this.id,
    this.extension,
    this.modifierExtension,
    this.label,
    this.elementLabel,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueCanonical,
    this.elementValueCanonical,
    this.valueCode,
    this.elementValueCode,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueId,
    this.elementValueId,
    this.valueInstant,
    this.elementValueInstant,
    this.valueInteger,
    this.elementValueInteger,
    this.valueMarkdown,
    this.elementValueMarkdown,
    this.valueOid,
    this.elementValueOid,
    this.valuePositiveInt,
    this.elementValuePositiveInt,
    this.valueString,
    this.elementValueString,
    this.valueTime,
    this.elementValueTime,
    this.valueUnsignedInt,
    this.elementValueUnsignedInt,
    this.valueUri,
    this.elementValueUri,
    this.valueUrl,
    this.elementValueUrl,
    this.valueUuid,
    this.elementValueUuid,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    this.valueMeta,
  });

  factory ElementDefinition_Example.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_ExampleFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_ExampleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Constraint {
  static Future<ElementDefinition_Constraint> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String key,
    Element elementKey,
    String requirements,
    Element elementRequirements,
    String severity,
    Element elementSeverity,
    String human,
    Element elementHuman,
    String expression,
    Element elementExpression,
    String xpath,
    Element elementXpath,
    String source,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Constraint newElementDefinition_Constraint =
        new ElementDefinition_Constraint(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Constraint'),
      extension: extension,
      modifierExtension: modifierExtension,
      key: key,
      elementKey: elementKey,
      requirements: requirements,
      elementRequirements: elementRequirements,
      severity: severity,
      elementSeverity: elementSeverity,
      human: human,
      elementHuman: elementHuman,
      expression: expression,
      elementExpression: elementExpression,
      xpath: xpath,
      elementXpath: elementXpath,
      source: source,
    );
    return newElementDefinition_Constraint;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String key;
  Element elementKey;
  String requirements;
  Element elementRequirements;
  String severity;
  Element elementSeverity;
  String human;
  Element elementHuman;
  String expression;
  Element elementExpression;
  String xpath;
  Element elementXpath;
  String source;

  ElementDefinition_Constraint({
    this.id,
    this.extension,
    this.modifierExtension,
    this.key,
    this.elementKey,
    this.requirements,
    this.elementRequirements,
    this.severity,
    this.elementSeverity,
    this.human,
    this.elementHuman,
    this.expression,
    this.elementExpression,
    this.xpath,
    this.elementXpath,
    this.source,
  });

  factory ElementDefinition_Constraint.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_ConstraintFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_ConstraintToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Binding {
  static Future<ElementDefinition_Binding> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String strength,
    Element elementStrength,
    String description,
    Element elementDescription,
    String valueSet,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Binding newElementDefinition_Binding =
        new ElementDefinition_Binding(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Binding'),
      extension: extension,
      modifierExtension: modifierExtension,
      strength: strength,
      elementStrength: elementStrength,
      description: description,
      elementDescription: elementDescription,
      valueSet: valueSet,
    );
    return newElementDefinition_Binding;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String strength;
  Element elementStrength;
  String description;
  Element elementDescription;
  String valueSet;

  ElementDefinition_Binding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.elementStrength,
    this.description,
    this.elementDescription,
    this.valueSet,
  });

  factory ElementDefinition_Binding.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Mapping {
  static Future<ElementDefinition_Mapping> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String identity,
    Element elementIdentity,
    String language,
    Element elementLanguage,
    String map,
    Element elementMap,
    String comment,
    Element elementComment,
  }) async {
    var fhirDb = new DatabaseHelper();
    ElementDefinition_Mapping newElementDefinition_Mapping =
        new ElementDefinition_Mapping(
      id: id ?? await fhirDb.newResourceId('ElementDefinition_Mapping'),
      extension: extension,
      modifierExtension: modifierExtension,
      identity: identity,
      elementIdentity: elementIdentity,
      language: language,
      elementLanguage: elementLanguage,
      map: map,
      elementMap: elementMap,
      comment: comment,
      elementComment: elementComment,
    );
    return newElementDefinition_Mapping;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String identity;
  Element elementIdentity;
  String language;
  Element elementLanguage;
  String map;
  Element elementMap;
  String comment;
  Element elementComment;

  ElementDefinition_Mapping({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.elementIdentity,
    this.language,
    this.elementLanguage,
    this.map,
    this.elementMap,
    this.comment,
    this.elementComment,
  });

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_MappingToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElementDefinition _$ElementDefinitionFromJson(Map<String, dynamic> json) {
  return ElementDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    representation: json['representation'] as String,
    elementRepresentation: (json['elementRepresentation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sliceName: json['sliceName'] as String,
    elementSliceName: json['elementSliceName'] == null
        ? null
        : Element.fromJson(json['elementSliceName'] as Map<String, dynamic>),
    sliceIsConstraining: json['sliceIsConstraining'] as bool,
    elementSliceIsConstraining: json['elementSliceIsConstraining'] == null
        ? null
        : Element.fromJson(
            json['elementSliceIsConstraining'] as Map<String, dynamic>),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    slicing: json['slicing'] == null
        ? null
        : ElementDefinition_Slicing.fromJson(
            json['slicing'] as Map<String, dynamic>),
    short: json['short'] as String,
    elementShort: json['elementShort'] == null
        ? null
        : Element.fromJson(json['elementShort'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    elementRequirements: json['elementRequirements'] == null
        ? null
        : Element.fromJson(json['elementRequirements'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    base: json['base'] == null
        ? null
        : ElementDefinition_Base.fromJson(json['base'] as Map<String, dynamic>),
    contentReference: json['contentReference'] as String,
    elementContentReference: json['elementContentReference'] == null
        ? null
        : Element.fromJson(
            json['elementContentReference'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Type.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    elementDefaultValueBase64Binary: json['elementDefaultValueBase64Binary'] ==
            null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBase64Binary'] as Map<String, dynamic>),
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    elementDefaultValueBoolean: json['elementDefaultValueBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBoolean'] as Map<String, dynamic>),
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    elementDefaultValueCanonical: json['elementDefaultValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCanonical'] as Map<String, dynamic>),
    defaultValueCode: json['defaultValueCode'] as String,
    elementDefaultValueCode: json['elementDefaultValueCode'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCode'] as Map<String, dynamic>),
    defaultValueDate: json['defaultValueDate'] as String,
    elementDefaultValueDate: json['elementDefaultValueDate'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDate'] as Map<String, dynamic>),
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    elementDefaultValueDateTime: json['elementDefaultValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDateTime'] as Map<String, dynamic>),
    defaultValueDecimal: json['defaultValueDecimal'] as int,
    elementDefaultValueDecimal: json['elementDefaultValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDecimal'] as Map<String, dynamic>),
    defaultValueId: json['defaultValueId'] as String,
    elementDefaultValueId: json['elementDefaultValueId'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueId'] as Map<String, dynamic>),
    defaultValueInstant: json['defaultValueInstant'] as String,
    elementDefaultValueInstant: json['elementDefaultValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInstant'] as Map<String, dynamic>),
    defaultValueInteger: json['defaultValueInteger'] as int,
    elementDefaultValueInteger: json['elementDefaultValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInteger'] as Map<String, dynamic>),
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    elementDefaultValueMarkdown: json['elementDefaultValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueMarkdown'] as Map<String, dynamic>),
    defaultValueOid: json['defaultValueOid'] as String,
    elementDefaultValueOid: json['elementDefaultValueOid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueOid'] as Map<String, dynamic>),
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    elementDefaultValuePositiveInt:
        json['elementDefaultValuePositiveInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValuePositiveInt'] as Map<String, dynamic>),
    defaultValueString: json['defaultValueString'] as String,
    elementDefaultValueString: json['elementDefaultValueString'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueString'] as Map<String, dynamic>),
    defaultValueTime: json['defaultValueTime'] as String,
    elementDefaultValueTime: json['elementDefaultValueTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueTime'] as Map<String, dynamic>),
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    elementDefaultValueUnsignedInt:
        json['elementDefaultValueUnsignedInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValueUnsignedInt'] as Map<String, dynamic>),
    defaultValueUri: json['defaultValueUri'] as String,
    elementDefaultValueUri: json['elementDefaultValueUri'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUri'] as Map<String, dynamic>),
    defaultValueUrl: json['defaultValueUrl'] as String,
    elementDefaultValueUrl: json['elementDefaultValueUrl'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUrl'] as Map<String, dynamic>),
    defaultValueUuid: json['defaultValueUuid'] as String,
    elementDefaultValueUuid: json['elementDefaultValueUuid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUuid'] as Map<String, dynamic>),
    defaultValueAddress: json['defaultValueAddress'] == null
        ? null
        : Address.fromJson(json['defaultValueAddress'] as Map<String, dynamic>),
    defaultValueAge: json['defaultValueAge'] == null
        ? null
        : Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>),
    defaultValueAnnotation: json['defaultValueAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['defaultValueAnnotation'] as Map<String, dynamic>),
    defaultValueAttachment: json['defaultValueAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['defaultValueAttachment'] as Map<String, dynamic>),
    defaultValueCodeableConcept: json['defaultValueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['defaultValueCodeableConcept'] as Map<String, dynamic>),
    defaultValueCoding: json['defaultValueCoding'] == null
        ? null
        : Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>),
    defaultValueContactPoint: json['defaultValueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['defaultValueContactPoint'] as Map<String, dynamic>),
    defaultValueCount: json['defaultValueCount'] == null
        ? null
        : Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>),
    defaultValueDistance: json['defaultValueDistance'] == null
        ? null
        : Distance.fromJson(
            json['defaultValueDistance'] as Map<String, dynamic>),
    defaultValueDuration: json['defaultValueDuration'] == null
        ? null
        : Duration.fromJson(
            json['defaultValueDuration'] as Map<String, dynamic>),
    defaultValueHumanName: json['defaultValueHumanName'] == null
        ? null
        : HumanName.fromJson(
            json['defaultValueHumanName'] as Map<String, dynamic>),
    defaultValueIdentifier: json['defaultValueIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['defaultValueIdentifier'] as Map<String, dynamic>),
    defaultValueMoney: json['defaultValueMoney'] == null
        ? null
        : Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>),
    defaultValuePeriod: json['defaultValuePeriod'] == null
        ? null
        : Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>),
    defaultValueQuantity: json['defaultValueQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['defaultValueQuantity'] as Map<String, dynamic>),
    defaultValueRange: json['defaultValueRange'] == null
        ? null
        : Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>),
    defaultValueRatio: json['defaultValueRatio'] == null
        ? null
        : Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>),
    defaultValueReference: json['defaultValueReference'] == null
        ? null
        : Reference.fromJson(
            json['defaultValueReference'] as Map<String, dynamic>),
    defaultValueSampledData: json['defaultValueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['defaultValueSampledData'] as Map<String, dynamic>),
    defaultValueSignature: json['defaultValueSignature'] == null
        ? null
        : Signature.fromJson(
            json['defaultValueSignature'] as Map<String, dynamic>),
    defaultValueTiming: json['defaultValueTiming'] == null
        ? null
        : Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>),
    defaultValueContactDetail: json['defaultValueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['defaultValueContactDetail'] as Map<String, dynamic>),
    defaultValueContributor: json['defaultValueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['defaultValueContributor'] as Map<String, dynamic>),
    defaultValueDataRequirement: json['defaultValueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['defaultValueDataRequirement'] as Map<String, dynamic>),
    defaultValueExpression: json['defaultValueExpression'] == null
        ? null
        : Expression.fromJson(
            json['defaultValueExpression'] as Map<String, dynamic>),
    defaultValueParameterDefinition: json['defaultValueParameterDefinition'] ==
            null
        ? null
        : ParameterDefinition.fromJson(
            json['defaultValueParameterDefinition'] as Map<String, dynamic>),
    defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['defaultValueRelatedArtifact'] as Map<String, dynamic>),
    defaultValueTriggerDefinition: json['defaultValueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['defaultValueTriggerDefinition'] as Map<String, dynamic>),
    defaultValueUsageContext: json['defaultValueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['defaultValueUsageContext'] as Map<String, dynamic>),
    defaultValueDosage: json['defaultValueDosage'] == null
        ? null
        : Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>),
    defaultValueMeta: json['defaultValueMeta'] == null
        ? null
        : Meta.fromJson(json['defaultValueMeta'] as Map<String, dynamic>),
    meaningWhenMissing: json['meaningWhenMissing'] as String,
    elementMeaningWhenMissing: json['elementMeaningWhenMissing'] == null
        ? null
        : Element.fromJson(
            json['elementMeaningWhenMissing'] as Map<String, dynamic>),
    orderMeaning: json['orderMeaning'] as String,
    elementOrderMeaning: json['elementOrderMeaning'] == null
        ? null
        : Element.fromJson(json['elementOrderMeaning'] as Map<String, dynamic>),
    fixedBase64Binary: json['fixedBase64Binary'] as String,
    elementFixedBase64Binary: json['elementFixedBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementFixedBase64Binary'] as Map<String, dynamic>),
    fixedBoolean: json['fixedBoolean'] as bool,
    elementFixedBoolean: json['elementFixedBoolean'] == null
        ? null
        : Element.fromJson(json['elementFixedBoolean'] as Map<String, dynamic>),
    fixedCanonical: json['fixedCanonical'] as String,
    elementFixedCanonical: json['elementFixedCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementFixedCanonical'] as Map<String, dynamic>),
    fixedCode: json['fixedCode'] as String,
    elementFixedCode: json['elementFixedCode'] == null
        ? null
        : Element.fromJson(json['elementFixedCode'] as Map<String, dynamic>),
    fixedDate: json['fixedDate'] as String,
    elementFixedDate: json['elementFixedDate'] == null
        ? null
        : Element.fromJson(json['elementFixedDate'] as Map<String, dynamic>),
    fixedDateTime: json['fixedDateTime'] as String,
    elementFixedDateTime: json['elementFixedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementFixedDateTime'] as Map<String, dynamic>),
    fixedDecimal: json['fixedDecimal'] as int,
    elementFixedDecimal: json['elementFixedDecimal'] == null
        ? null
        : Element.fromJson(json['elementFixedDecimal'] as Map<String, dynamic>),
    fixedId: json['fixedId'] as String,
    elementFixedId: json['elementFixedId'] == null
        ? null
        : Element.fromJson(json['elementFixedId'] as Map<String, dynamic>),
    fixedInstant: json['fixedInstant'] as String,
    elementFixedInstant: json['elementFixedInstant'] == null
        ? null
        : Element.fromJson(json['elementFixedInstant'] as Map<String, dynamic>),
    fixedInteger: json['fixedInteger'] as int,
    elementFixedInteger: json['elementFixedInteger'] == null
        ? null
        : Element.fromJson(json['elementFixedInteger'] as Map<String, dynamic>),
    fixedMarkdown: json['fixedMarkdown'] as String,
    elementFixedMarkdown: json['elementFixedMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementFixedMarkdown'] as Map<String, dynamic>),
    fixedOid: json['fixedOid'] as String,
    elementFixedOid: json['elementFixedOid'] == null
        ? null
        : Element.fromJson(json['elementFixedOid'] as Map<String, dynamic>),
    fixedPositiveInt: json['fixedPositiveInt'] as int,
    elementFixedPositiveInt: json['elementFixedPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementFixedPositiveInt'] as Map<String, dynamic>),
    fixedString: json['fixedString'] as String,
    elementFixedString: json['elementFixedString'] == null
        ? null
        : Element.fromJson(json['elementFixedString'] as Map<String, dynamic>),
    fixedTime: json['fixedTime'] as String,
    elementFixedTime: json['elementFixedTime'] == null
        ? null
        : Element.fromJson(json['elementFixedTime'] as Map<String, dynamic>),
    fixedUnsignedInt: json['fixedUnsignedInt'] as int,
    elementFixedUnsignedInt: json['elementFixedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementFixedUnsignedInt'] as Map<String, dynamic>),
    fixedUri: json['fixedUri'] as String,
    elementFixedUri: json['elementFixedUri'] == null
        ? null
        : Element.fromJson(json['elementFixedUri'] as Map<String, dynamic>),
    fixedUrl: json['fixedUrl'] as String,
    elementFixedUrl: json['elementFixedUrl'] == null
        ? null
        : Element.fromJson(json['elementFixedUrl'] as Map<String, dynamic>),
    fixedUuid: json['fixedUuid'] as String,
    elementFixedUuid: json['elementFixedUuid'] == null
        ? null
        : Element.fromJson(json['elementFixedUuid'] as Map<String, dynamic>),
    fixedAddress: json['fixedAddress'] == null
        ? null
        : Address.fromJson(json['fixedAddress'] as Map<String, dynamic>),
    fixedAge: json['fixedAge'] == null
        ? null
        : Age.fromJson(json['fixedAge'] as Map<String, dynamic>),
    fixedAnnotation: json['fixedAnnotation'] == null
        ? null
        : Annotation.fromJson(json['fixedAnnotation'] as Map<String, dynamic>),
    fixedAttachment: json['fixedAttachment'] == null
        ? null
        : Attachment.fromJson(json['fixedAttachment'] as Map<String, dynamic>),
    fixedCodeableConcept: json['fixedCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fixedCodeableConcept'] as Map<String, dynamic>),
    fixedCoding: json['fixedCoding'] == null
        ? null
        : Coding.fromJson(json['fixedCoding'] as Map<String, dynamic>),
    fixedContactPoint: json['fixedContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['fixedContactPoint'] as Map<String, dynamic>),
    fixedCount: json['fixedCount'] == null
        ? null
        : Count.fromJson(json['fixedCount'] as Map<String, dynamic>),
    fixedDistance: json['fixedDistance'] == null
        ? null
        : Distance.fromJson(json['fixedDistance'] as Map<String, dynamic>),
    fixedDuration: json['fixedDuration'] == null
        ? null
        : Duration.fromJson(json['fixedDuration'] as Map<String, dynamic>),
    fixedHumanName: json['fixedHumanName'] == null
        ? null
        : HumanName.fromJson(json['fixedHumanName'] as Map<String, dynamic>),
    fixedIdentifier: json['fixedIdentifier'] == null
        ? null
        : Identifier.fromJson(json['fixedIdentifier'] as Map<String, dynamic>),
    fixedMoney: json['fixedMoney'] == null
        ? null
        : Money.fromJson(json['fixedMoney'] as Map<String, dynamic>),
    fixedPeriod: json['fixedPeriod'] == null
        ? null
        : Period.fromJson(json['fixedPeriod'] as Map<String, dynamic>),
    fixedQuantity: json['fixedQuantity'] == null
        ? null
        : Quantity.fromJson(json['fixedQuantity'] as Map<String, dynamic>),
    fixedRange: json['fixedRange'] == null
        ? null
        : Range.fromJson(json['fixedRange'] as Map<String, dynamic>),
    fixedRatio: json['fixedRatio'] == null
        ? null
        : Ratio.fromJson(json['fixedRatio'] as Map<String, dynamic>),
    fixedReference: json['fixedReference'] == null
        ? null
        : Reference.fromJson(json['fixedReference'] as Map<String, dynamic>),
    fixedSampledData: json['fixedSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['fixedSampledData'] as Map<String, dynamic>),
    fixedSignature: json['fixedSignature'] == null
        ? null
        : Signature.fromJson(json['fixedSignature'] as Map<String, dynamic>),
    fixedTiming: json['fixedTiming'] == null
        ? null
        : Timing.fromJson(json['fixedTiming'] as Map<String, dynamic>),
    fixedContactDetail: json['fixedContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['fixedContactDetail'] as Map<String, dynamic>),
    fixedContributor: json['fixedContributor'] == null
        ? null
        : Contributor.fromJson(
            json['fixedContributor'] as Map<String, dynamic>),
    fixedDataRequirement: json['fixedDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['fixedDataRequirement'] as Map<String, dynamic>),
    fixedExpression: json['fixedExpression'] == null
        ? null
        : Expression.fromJson(json['fixedExpression'] as Map<String, dynamic>),
    fixedParameterDefinition: json['fixedParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['fixedParameterDefinition'] as Map<String, dynamic>),
    fixedRelatedArtifact: json['fixedRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['fixedRelatedArtifact'] as Map<String, dynamic>),
    fixedTriggerDefinition: json['fixedTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['fixedTriggerDefinition'] as Map<String, dynamic>),
    fixedUsageContext: json['fixedUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['fixedUsageContext'] as Map<String, dynamic>),
    fixedDosage: json['fixedDosage'] == null
        ? null
        : Dosage.fromJson(json['fixedDosage'] as Map<String, dynamic>),
    fixedMeta: json['fixedMeta'] == null
        ? null
        : Meta.fromJson(json['fixedMeta'] as Map<String, dynamic>),
    patternBase64Binary: json['patternBase64Binary'] as String,
    elementPatternBase64Binary: json['elementPatternBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementPatternBase64Binary'] as Map<String, dynamic>),
    patternBoolean: json['patternBoolean'] as bool,
    elementPatternBoolean: json['elementPatternBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementPatternBoolean'] as Map<String, dynamic>),
    patternCanonical: json['patternCanonical'] as String,
    elementPatternCanonical: json['elementPatternCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementPatternCanonical'] as Map<String, dynamic>),
    patternCode: json['patternCode'] as String,
    elementPatternCode: json['elementPatternCode'] == null
        ? null
        : Element.fromJson(json['elementPatternCode'] as Map<String, dynamic>),
    patternDate: json['patternDate'] as String,
    elementPatternDate: json['elementPatternDate'] == null
        ? null
        : Element.fromJson(json['elementPatternDate'] as Map<String, dynamic>),
    patternDateTime: json['patternDateTime'] as String,
    elementPatternDateTime: json['elementPatternDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementPatternDateTime'] as Map<String, dynamic>),
    patternDecimal: json['patternDecimal'] as int,
    elementPatternDecimal: json['elementPatternDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementPatternDecimal'] as Map<String, dynamic>),
    patternId: json['patternId'] as String,
    elementPatternId: json['elementPatternId'] == null
        ? null
        : Element.fromJson(json['elementPatternId'] as Map<String, dynamic>),
    patternInstant: json['patternInstant'] as String,
    elementPatternInstant: json['elementPatternInstant'] == null
        ? null
        : Element.fromJson(
            json['elementPatternInstant'] as Map<String, dynamic>),
    patternInteger: json['patternInteger'] as int,
    elementPatternInteger: json['elementPatternInteger'] == null
        ? null
        : Element.fromJson(
            json['elementPatternInteger'] as Map<String, dynamic>),
    patternMarkdown: json['patternMarkdown'] as String,
    elementPatternMarkdown: json['elementPatternMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementPatternMarkdown'] as Map<String, dynamic>),
    patternOid: json['patternOid'] as String,
    elementPatternOid: json['elementPatternOid'] == null
        ? null
        : Element.fromJson(json['elementPatternOid'] as Map<String, dynamic>),
    patternPositiveInt: json['patternPositiveInt'] as int,
    elementPatternPositiveInt: json['elementPatternPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementPatternPositiveInt'] as Map<String, dynamic>),
    patternString: json['patternString'] as String,
    elementPatternString: json['elementPatternString'] == null
        ? null
        : Element.fromJson(
            json['elementPatternString'] as Map<String, dynamic>),
    patternTime: json['patternTime'] as String,
    elementPatternTime: json['elementPatternTime'] == null
        ? null
        : Element.fromJson(json['elementPatternTime'] as Map<String, dynamic>),
    patternUnsignedInt: json['patternUnsignedInt'] as int,
    elementPatternUnsignedInt: json['elementPatternUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementPatternUnsignedInt'] as Map<String, dynamic>),
    patternUri: json['patternUri'] as String,
    elementPatternUri: json['elementPatternUri'] == null
        ? null
        : Element.fromJson(json['elementPatternUri'] as Map<String, dynamic>),
    patternUrl: json['patternUrl'] as String,
    elementPatternUrl: json['elementPatternUrl'] == null
        ? null
        : Element.fromJson(json['elementPatternUrl'] as Map<String, dynamic>),
    patternUuid: json['patternUuid'] as String,
    elementPatternUuid: json['elementPatternUuid'] == null
        ? null
        : Element.fromJson(json['elementPatternUuid'] as Map<String, dynamic>),
    patternAddress: json['patternAddress'] == null
        ? null
        : Address.fromJson(json['patternAddress'] as Map<String, dynamic>),
    patternAge: json['patternAge'] == null
        ? null
        : Age.fromJson(json['patternAge'] as Map<String, dynamic>),
    patternAnnotation: json['patternAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['patternAnnotation'] as Map<String, dynamic>),
    patternAttachment: json['patternAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['patternAttachment'] as Map<String, dynamic>),
    patternCodeableConcept: json['patternCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['patternCodeableConcept'] as Map<String, dynamic>),
    patternCoding: json['patternCoding'] == null
        ? null
        : Coding.fromJson(json['patternCoding'] as Map<String, dynamic>),
    patternContactPoint: json['patternContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['patternContactPoint'] as Map<String, dynamic>),
    patternCount: json['patternCount'] == null
        ? null
        : Count.fromJson(json['patternCount'] as Map<String, dynamic>),
    patternDistance: json['patternDistance'] == null
        ? null
        : Distance.fromJson(json['patternDistance'] as Map<String, dynamic>),
    patternDuration: json['patternDuration'] == null
        ? null
        : Duration.fromJson(json['patternDuration'] as Map<String, dynamic>),
    patternHumanName: json['patternHumanName'] == null
        ? null
        : HumanName.fromJson(json['patternHumanName'] as Map<String, dynamic>),
    patternIdentifier: json['patternIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['patternIdentifier'] as Map<String, dynamic>),
    patternMoney: json['patternMoney'] == null
        ? null
        : Money.fromJson(json['patternMoney'] as Map<String, dynamic>),
    patternPeriod: json['patternPeriod'] == null
        ? null
        : Period.fromJson(json['patternPeriod'] as Map<String, dynamic>),
    patternQuantity: json['patternQuantity'] == null
        ? null
        : Quantity.fromJson(json['patternQuantity'] as Map<String, dynamic>),
    patternRange: json['patternRange'] == null
        ? null
        : Range.fromJson(json['patternRange'] as Map<String, dynamic>),
    patternRatio: json['patternRatio'] == null
        ? null
        : Ratio.fromJson(json['patternRatio'] as Map<String, dynamic>),
    patternReference: json['patternReference'] == null
        ? null
        : Reference.fromJson(json['patternReference'] as Map<String, dynamic>),
    patternSampledData: json['patternSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['patternSampledData'] as Map<String, dynamic>),
    patternSignature: json['patternSignature'] == null
        ? null
        : Signature.fromJson(json['patternSignature'] as Map<String, dynamic>),
    patternTiming: json['patternTiming'] == null
        ? null
        : Timing.fromJson(json['patternTiming'] as Map<String, dynamic>),
    patternContactDetail: json['patternContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['patternContactDetail'] as Map<String, dynamic>),
    patternContributor: json['patternContributor'] == null
        ? null
        : Contributor.fromJson(
            json['patternContributor'] as Map<String, dynamic>),
    patternDataRequirement: json['patternDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['patternDataRequirement'] as Map<String, dynamic>),
    patternExpression: json['patternExpression'] == null
        ? null
        : Expression.fromJson(
            json['patternExpression'] as Map<String, dynamic>),
    patternParameterDefinition: json['patternParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['patternParameterDefinition'] as Map<String, dynamic>),
    patternRelatedArtifact: json['patternRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['patternRelatedArtifact'] as Map<String, dynamic>),
    patternTriggerDefinition: json['patternTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['patternTriggerDefinition'] as Map<String, dynamic>),
    patternUsageContext: json['patternUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['patternUsageContext'] as Map<String, dynamic>),
    patternDosage: json['patternDosage'] == null
        ? null
        : Dosage.fromJson(json['patternDosage'] as Map<String, dynamic>),
    patternMeta: json['patternMeta'] == null
        ? null
        : Meta.fromJson(json['patternMeta'] as Map<String, dynamic>),
    example: (json['example'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Example.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    minValueDate: json['minValueDate'] as String,
    elementMinValueDate: json['elementMinValueDate'] == null
        ? null
        : Element.fromJson(json['elementMinValueDate'] as Map<String, dynamic>),
    minValueDateTime: json['minValueDateTime'] as String,
    elementMinValueDateTime: json['elementMinValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueDateTime'] as Map<String, dynamic>),
    minValueInstant: json['minValueInstant'] as String,
    elementMinValueInstant: json['elementMinValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueInstant'] as Map<String, dynamic>),
    minValueTime: json['minValueTime'] as String,
    elementMinValueTime: json['elementMinValueTime'] == null
        ? null
        : Element.fromJson(json['elementMinValueTime'] as Map<String, dynamic>),
    minValueDecimal: json['minValueDecimal'] as int,
    elementMinValueDecimal: json['elementMinValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueDecimal'] as Map<String, dynamic>),
    minValueInteger: json['minValueInteger'] as int,
    elementMinValueInteger: json['elementMinValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueInteger'] as Map<String, dynamic>),
    minValuePositiveInt: json['minValuePositiveInt'] as int,
    elementMinValuePositiveInt: json['elementMinValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementMinValuePositiveInt'] as Map<String, dynamic>),
    minValueUnsignedInt: json['minValueUnsignedInt'] as int,
    elementMinValueUnsignedInt: json['elementMinValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueUnsignedInt'] as Map<String, dynamic>),
    minValueQuantity: json['minValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['minValueQuantity'] as Map<String, dynamic>),
    maxValueDate: json['maxValueDate'] as String,
    elementMaxValueDate: json['elementMaxValueDate'] == null
        ? null
        : Element.fromJson(json['elementMaxValueDate'] as Map<String, dynamic>),
    maxValueDateTime: json['maxValueDateTime'] as String,
    elementMaxValueDateTime: json['elementMaxValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueDateTime'] as Map<String, dynamic>),
    maxValueInstant: json['maxValueInstant'] as String,
    elementMaxValueInstant: json['elementMaxValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueInstant'] as Map<String, dynamic>),
    maxValueTime: json['maxValueTime'] as String,
    elementMaxValueTime: json['elementMaxValueTime'] == null
        ? null
        : Element.fromJson(json['elementMaxValueTime'] as Map<String, dynamic>),
    maxValueDecimal: json['maxValueDecimal'] as int,
    elementMaxValueDecimal: json['elementMaxValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueDecimal'] as Map<String, dynamic>),
    maxValueInteger: json['maxValueInteger'] as int,
    elementMaxValueInteger: json['elementMaxValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueInteger'] as Map<String, dynamic>),
    maxValuePositiveInt: json['maxValuePositiveInt'] as int,
    elementMaxValuePositiveInt: json['elementMaxValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValuePositiveInt'] as Map<String, dynamic>),
    maxValueUnsignedInt: json['maxValueUnsignedInt'] as int,
    elementMaxValueUnsignedInt: json['elementMaxValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueUnsignedInt'] as Map<String, dynamic>),
    maxValueQuantity: json['maxValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['maxValueQuantity'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    elementMaxLength: json['elementMaxLength'] == null
        ? null
        : Element.fromJson(json['elementMaxLength'] as Map<String, dynamic>),
    condition: (json['condition'] as List)?.map((e) => e as String)?.toList(),
    elementCondition: (json['elementCondition'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    constraint: (json['constraint'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Constraint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mustSupport: json['mustSupport'] as bool,
    elementMustSupport: json['elementMustSupport'] == null
        ? null
        : Element.fromJson(json['elementMustSupport'] as Map<String, dynamic>),
    isModifier: json['isModifier'] as bool,
    elementIsModifier: json['elementIsModifier'] == null
        ? null
        : Element.fromJson(json['elementIsModifier'] as Map<String, dynamic>),
    isModifierReason: json['isModifierReason'] as String,
    elementIsModifierReason: json['elementIsModifierReason'] == null
        ? null
        : Element.fromJson(
            json['elementIsModifierReason'] as Map<String, dynamic>),
    isSummary: json['isSummary'] as bool,
    elementIsSummary: json['elementIsSummary'] == null
        ? null
        : Element.fromJson(json['elementIsSummary'] as Map<String, dynamic>),
    binding: json['binding'] == null
        ? null
        : ElementDefinition_Binding.fromJson(
            json['binding'] as Map<String, dynamic>),
    mapping: (json['mapping'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Mapping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ElementDefinitionToJson(ElementDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'representation': instance.representation,
      'elementRepresentation':
          instance.elementRepresentation?.map((e) => e?.toJson())?.toList(),
      'sliceName': instance.sliceName,
      'elementSliceName': instance.elementSliceName?.toJson(),
      'sliceIsConstraining': instance.sliceIsConstraining,
      'elementSliceIsConstraining':
          instance.elementSliceIsConstraining?.toJson(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'slicing': instance.slicing?.toJson(),
      'short': instance.short,
      'elementShort': instance.elementShort?.toJson(),
      'definition': instance.definition,
      'elementDefinition': instance.elementDefinition?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'requirements': instance.requirements,
      'elementRequirements': instance.elementRequirements?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'base': instance.base?.toJson(),
      'contentReference': instance.contentReference,
      'elementContentReference': instance.elementContentReference?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'elementDefaultValueBase64Binary':
          instance.elementDefaultValueBase64Binary?.toJson(),
      'defaultValueBoolean': instance.defaultValueBoolean,
      'elementDefaultValueBoolean':
          instance.elementDefaultValueBoolean?.toJson(),
      'defaultValueCanonical': instance.defaultValueCanonical,
      'elementDefaultValueCanonical':
          instance.elementDefaultValueCanonical?.toJson(),
      'defaultValueCode': instance.defaultValueCode,
      'elementDefaultValueCode': instance.elementDefaultValueCode?.toJson(),
      'defaultValueDate': instance.defaultValueDate,
      'elementDefaultValueDate': instance.elementDefaultValueDate?.toJson(),
      'defaultValueDateTime': instance.defaultValueDateTime,
      'elementDefaultValueDateTime':
          instance.elementDefaultValueDateTime?.toJson(),
      'defaultValueDecimal': instance.defaultValueDecimal,
      'elementDefaultValueDecimal':
          instance.elementDefaultValueDecimal?.toJson(),
      'defaultValueId': instance.defaultValueId,
      'elementDefaultValueId': instance.elementDefaultValueId?.toJson(),
      'defaultValueInstant': instance.defaultValueInstant,
      'elementDefaultValueInstant':
          instance.elementDefaultValueInstant?.toJson(),
      'defaultValueInteger': instance.defaultValueInteger,
      'elementDefaultValueInteger':
          instance.elementDefaultValueInteger?.toJson(),
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'elementDefaultValueMarkdown':
          instance.elementDefaultValueMarkdown?.toJson(),
      'defaultValueOid': instance.defaultValueOid,
      'elementDefaultValueOid': instance.elementDefaultValueOid?.toJson(),
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'elementDefaultValuePositiveInt':
          instance.elementDefaultValuePositiveInt?.toJson(),
      'defaultValueString': instance.defaultValueString,
      'elementDefaultValueString': instance.elementDefaultValueString?.toJson(),
      'defaultValueTime': instance.defaultValueTime,
      'elementDefaultValueTime': instance.elementDefaultValueTime?.toJson(),
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'elementDefaultValueUnsignedInt':
          instance.elementDefaultValueUnsignedInt?.toJson(),
      'defaultValueUri': instance.defaultValueUri,
      'elementDefaultValueUri': instance.elementDefaultValueUri?.toJson(),
      'defaultValueUrl': instance.defaultValueUrl,
      'elementDefaultValueUrl': instance.elementDefaultValueUrl?.toJson(),
      'defaultValueUuid': instance.defaultValueUuid,
      'elementDefaultValueUuid': instance.elementDefaultValueUuid?.toJson(),
      'defaultValueAddress': instance.defaultValueAddress?.toJson(),
      'defaultValueAge': instance.defaultValueAge?.toJson(),
      'defaultValueAnnotation': instance.defaultValueAnnotation?.toJson(),
      'defaultValueAttachment': instance.defaultValueAttachment?.toJson(),
      'defaultValueCodeableConcept':
          instance.defaultValueCodeableConcept?.toJson(),
      'defaultValueCoding': instance.defaultValueCoding?.toJson(),
      'defaultValueContactPoint': instance.defaultValueContactPoint?.toJson(),
      'defaultValueCount': instance.defaultValueCount?.toJson(),
      'defaultValueDistance': instance.defaultValueDistance?.toJson(),
      'defaultValueDuration': instance.defaultValueDuration?.toJson(),
      'defaultValueHumanName': instance.defaultValueHumanName?.toJson(),
      'defaultValueIdentifier': instance.defaultValueIdentifier?.toJson(),
      'defaultValueMoney': instance.defaultValueMoney?.toJson(),
      'defaultValuePeriod': instance.defaultValuePeriod?.toJson(),
      'defaultValueQuantity': instance.defaultValueQuantity?.toJson(),
      'defaultValueRange': instance.defaultValueRange?.toJson(),
      'defaultValueRatio': instance.defaultValueRatio?.toJson(),
      'defaultValueReference': instance.defaultValueReference?.toJson(),
      'defaultValueSampledData': instance.defaultValueSampledData?.toJson(),
      'defaultValueSignature': instance.defaultValueSignature?.toJson(),
      'defaultValueTiming': instance.defaultValueTiming?.toJson(),
      'defaultValueContactDetail': instance.defaultValueContactDetail?.toJson(),
      'defaultValueContributor': instance.defaultValueContributor?.toJson(),
      'defaultValueDataRequirement':
          instance.defaultValueDataRequirement?.toJson(),
      'defaultValueExpression': instance.defaultValueExpression?.toJson(),
      'defaultValueParameterDefinition':
          instance.defaultValueParameterDefinition?.toJson(),
      'defaultValueRelatedArtifact':
          instance.defaultValueRelatedArtifact?.toJson(),
      'defaultValueTriggerDefinition':
          instance.defaultValueTriggerDefinition?.toJson(),
      'defaultValueUsageContext': instance.defaultValueUsageContext?.toJson(),
      'defaultValueDosage': instance.defaultValueDosage?.toJson(),
      'defaultValueMeta': instance.defaultValueMeta?.toJson(),
      'meaningWhenMissing': instance.meaningWhenMissing,
      'elementMeaningWhenMissing': instance.elementMeaningWhenMissing?.toJson(),
      'orderMeaning': instance.orderMeaning,
      'elementOrderMeaning': instance.elementOrderMeaning?.toJson(),
      'fixedBase64Binary': instance.fixedBase64Binary,
      'elementFixedBase64Binary': instance.elementFixedBase64Binary?.toJson(),
      'fixedBoolean': instance.fixedBoolean,
      'elementFixedBoolean': instance.elementFixedBoolean?.toJson(),
      'fixedCanonical': instance.fixedCanonical,
      'elementFixedCanonical': instance.elementFixedCanonical?.toJson(),
      'fixedCode': instance.fixedCode,
      'elementFixedCode': instance.elementFixedCode?.toJson(),
      'fixedDate': instance.fixedDate,
      'elementFixedDate': instance.elementFixedDate?.toJson(),
      'fixedDateTime': instance.fixedDateTime,
      'elementFixedDateTime': instance.elementFixedDateTime?.toJson(),
      'fixedDecimal': instance.fixedDecimal,
      'elementFixedDecimal': instance.elementFixedDecimal?.toJson(),
      'fixedId': instance.fixedId,
      'elementFixedId': instance.elementFixedId?.toJson(),
      'fixedInstant': instance.fixedInstant,
      'elementFixedInstant': instance.elementFixedInstant?.toJson(),
      'fixedInteger': instance.fixedInteger,
      'elementFixedInteger': instance.elementFixedInteger?.toJson(),
      'fixedMarkdown': instance.fixedMarkdown,
      'elementFixedMarkdown': instance.elementFixedMarkdown?.toJson(),
      'fixedOid': instance.fixedOid,
      'elementFixedOid': instance.elementFixedOid?.toJson(),
      'fixedPositiveInt': instance.fixedPositiveInt,
      'elementFixedPositiveInt': instance.elementFixedPositiveInt?.toJson(),
      'fixedString': instance.fixedString,
      'elementFixedString': instance.elementFixedString?.toJson(),
      'fixedTime': instance.fixedTime,
      'elementFixedTime': instance.elementFixedTime?.toJson(),
      'fixedUnsignedInt': instance.fixedUnsignedInt,
      'elementFixedUnsignedInt': instance.elementFixedUnsignedInt?.toJson(),
      'fixedUri': instance.fixedUri,
      'elementFixedUri': instance.elementFixedUri?.toJson(),
      'fixedUrl': instance.fixedUrl,
      'elementFixedUrl': instance.elementFixedUrl?.toJson(),
      'fixedUuid': instance.fixedUuid,
      'elementFixedUuid': instance.elementFixedUuid?.toJson(),
      'fixedAddress': instance.fixedAddress?.toJson(),
      'fixedAge': instance.fixedAge?.toJson(),
      'fixedAnnotation': instance.fixedAnnotation?.toJson(),
      'fixedAttachment': instance.fixedAttachment?.toJson(),
      'fixedCodeableConcept': instance.fixedCodeableConcept?.toJson(),
      'fixedCoding': instance.fixedCoding?.toJson(),
      'fixedContactPoint': instance.fixedContactPoint?.toJson(),
      'fixedCount': instance.fixedCount?.toJson(),
      'fixedDistance': instance.fixedDistance?.toJson(),
      'fixedDuration': instance.fixedDuration?.toJson(),
      'fixedHumanName': instance.fixedHumanName?.toJson(),
      'fixedIdentifier': instance.fixedIdentifier?.toJson(),
      'fixedMoney': instance.fixedMoney?.toJson(),
      'fixedPeriod': instance.fixedPeriod?.toJson(),
      'fixedQuantity': instance.fixedQuantity?.toJson(),
      'fixedRange': instance.fixedRange?.toJson(),
      'fixedRatio': instance.fixedRatio?.toJson(),
      'fixedReference': instance.fixedReference?.toJson(),
      'fixedSampledData': instance.fixedSampledData?.toJson(),
      'fixedSignature': instance.fixedSignature?.toJson(),
      'fixedTiming': instance.fixedTiming?.toJson(),
      'fixedContactDetail': instance.fixedContactDetail?.toJson(),
      'fixedContributor': instance.fixedContributor?.toJson(),
      'fixedDataRequirement': instance.fixedDataRequirement?.toJson(),
      'fixedExpression': instance.fixedExpression?.toJson(),
      'fixedParameterDefinition': instance.fixedParameterDefinition?.toJson(),
      'fixedRelatedArtifact': instance.fixedRelatedArtifact?.toJson(),
      'fixedTriggerDefinition': instance.fixedTriggerDefinition?.toJson(),
      'fixedUsageContext': instance.fixedUsageContext?.toJson(),
      'fixedDosage': instance.fixedDosage?.toJson(),
      'fixedMeta': instance.fixedMeta?.toJson(),
      'patternBase64Binary': instance.patternBase64Binary,
      'elementPatternBase64Binary':
          instance.elementPatternBase64Binary?.toJson(),
      'patternBoolean': instance.patternBoolean,
      'elementPatternBoolean': instance.elementPatternBoolean?.toJson(),
      'patternCanonical': instance.patternCanonical,
      'elementPatternCanonical': instance.elementPatternCanonical?.toJson(),
      'patternCode': instance.patternCode,
      'elementPatternCode': instance.elementPatternCode?.toJson(),
      'patternDate': instance.patternDate,
      'elementPatternDate': instance.elementPatternDate?.toJson(),
      'patternDateTime': instance.patternDateTime,
      'elementPatternDateTime': instance.elementPatternDateTime?.toJson(),
      'patternDecimal': instance.patternDecimal,
      'elementPatternDecimal': instance.elementPatternDecimal?.toJson(),
      'patternId': instance.patternId,
      'elementPatternId': instance.elementPatternId?.toJson(),
      'patternInstant': instance.patternInstant,
      'elementPatternInstant': instance.elementPatternInstant?.toJson(),
      'patternInteger': instance.patternInteger,
      'elementPatternInteger': instance.elementPatternInteger?.toJson(),
      'patternMarkdown': instance.patternMarkdown,
      'elementPatternMarkdown': instance.elementPatternMarkdown?.toJson(),
      'patternOid': instance.patternOid,
      'elementPatternOid': instance.elementPatternOid?.toJson(),
      'patternPositiveInt': instance.patternPositiveInt,
      'elementPatternPositiveInt': instance.elementPatternPositiveInt?.toJson(),
      'patternString': instance.patternString,
      'elementPatternString': instance.elementPatternString?.toJson(),
      'patternTime': instance.patternTime,
      'elementPatternTime': instance.elementPatternTime?.toJson(),
      'patternUnsignedInt': instance.patternUnsignedInt,
      'elementPatternUnsignedInt': instance.elementPatternUnsignedInt?.toJson(),
      'patternUri': instance.patternUri,
      'elementPatternUri': instance.elementPatternUri?.toJson(),
      'patternUrl': instance.patternUrl,
      'elementPatternUrl': instance.elementPatternUrl?.toJson(),
      'patternUuid': instance.patternUuid,
      'elementPatternUuid': instance.elementPatternUuid?.toJson(),
      'patternAddress': instance.patternAddress?.toJson(),
      'patternAge': instance.patternAge?.toJson(),
      'patternAnnotation': instance.patternAnnotation?.toJson(),
      'patternAttachment': instance.patternAttachment?.toJson(),
      'patternCodeableConcept': instance.patternCodeableConcept?.toJson(),
      'patternCoding': instance.patternCoding?.toJson(),
      'patternContactPoint': instance.patternContactPoint?.toJson(),
      'patternCount': instance.patternCount?.toJson(),
      'patternDistance': instance.patternDistance?.toJson(),
      'patternDuration': instance.patternDuration?.toJson(),
      'patternHumanName': instance.patternHumanName?.toJson(),
      'patternIdentifier': instance.patternIdentifier?.toJson(),
      'patternMoney': instance.patternMoney?.toJson(),
      'patternPeriod': instance.patternPeriod?.toJson(),
      'patternQuantity': instance.patternQuantity?.toJson(),
      'patternRange': instance.patternRange?.toJson(),
      'patternRatio': instance.patternRatio?.toJson(),
      'patternReference': instance.patternReference?.toJson(),
      'patternSampledData': instance.patternSampledData?.toJson(),
      'patternSignature': instance.patternSignature?.toJson(),
      'patternTiming': instance.patternTiming?.toJson(),
      'patternContactDetail': instance.patternContactDetail?.toJson(),
      'patternContributor': instance.patternContributor?.toJson(),
      'patternDataRequirement': instance.patternDataRequirement?.toJson(),
      'patternExpression': instance.patternExpression?.toJson(),
      'patternParameterDefinition':
          instance.patternParameterDefinition?.toJson(),
      'patternRelatedArtifact': instance.patternRelatedArtifact?.toJson(),
      'patternTriggerDefinition': instance.patternTriggerDefinition?.toJson(),
      'patternUsageContext': instance.patternUsageContext?.toJson(),
      'patternDosage': instance.patternDosage?.toJson(),
      'patternMeta': instance.patternMeta?.toJson(),
      'example': instance.example?.map((e) => e?.toJson())?.toList(),
      'minValueDate': instance.minValueDate,
      'elementMinValueDate': instance.elementMinValueDate?.toJson(),
      'minValueDateTime': instance.minValueDateTime,
      'elementMinValueDateTime': instance.elementMinValueDateTime?.toJson(),
      'minValueInstant': instance.minValueInstant,
      'elementMinValueInstant': instance.elementMinValueInstant?.toJson(),
      'minValueTime': instance.minValueTime,
      'elementMinValueTime': instance.elementMinValueTime?.toJson(),
      'minValueDecimal': instance.minValueDecimal,
      'elementMinValueDecimal': instance.elementMinValueDecimal?.toJson(),
      'minValueInteger': instance.minValueInteger,
      'elementMinValueInteger': instance.elementMinValueInteger?.toJson(),
      'minValuePositiveInt': instance.minValuePositiveInt,
      'elementMinValuePositiveInt':
          instance.elementMinValuePositiveInt?.toJson(),
      'minValueUnsignedInt': instance.minValueUnsignedInt,
      'elementMinValueUnsignedInt':
          instance.elementMinValueUnsignedInt?.toJson(),
      'minValueQuantity': instance.minValueQuantity?.toJson(),
      'maxValueDate': instance.maxValueDate,
      'elementMaxValueDate': instance.elementMaxValueDate?.toJson(),
      'maxValueDateTime': instance.maxValueDateTime,
      'elementMaxValueDateTime': instance.elementMaxValueDateTime?.toJson(),
      'maxValueInstant': instance.maxValueInstant,
      'elementMaxValueInstant': instance.elementMaxValueInstant?.toJson(),
      'maxValueTime': instance.maxValueTime,
      'elementMaxValueTime': instance.elementMaxValueTime?.toJson(),
      'maxValueDecimal': instance.maxValueDecimal,
      'elementMaxValueDecimal': instance.elementMaxValueDecimal?.toJson(),
      'maxValueInteger': instance.maxValueInteger,
      'elementMaxValueInteger': instance.elementMaxValueInteger?.toJson(),
      'maxValuePositiveInt': instance.maxValuePositiveInt,
      'elementMaxValuePositiveInt':
          instance.elementMaxValuePositiveInt?.toJson(),
      'maxValueUnsignedInt': instance.maxValueUnsignedInt,
      'elementMaxValueUnsignedInt':
          instance.elementMaxValueUnsignedInt?.toJson(),
      'maxValueQuantity': instance.maxValueQuantity?.toJson(),
      'maxLength': instance.maxLength,
      'elementMaxLength': instance.elementMaxLength?.toJson(),
      'condition': instance.condition,
      'elementCondition':
          instance.elementCondition?.map((e) => e?.toJson())?.toList(),
      'constraint': instance.constraint?.map((e) => e?.toJson())?.toList(),
      'mustSupport': instance.mustSupport,
      'elementMustSupport': instance.elementMustSupport?.toJson(),
      'isModifier': instance.isModifier,
      'elementIsModifier': instance.elementIsModifier?.toJson(),
      'isModifierReason': instance.isModifierReason,
      'elementIsModifierReason': instance.elementIsModifierReason?.toJson(),
      'isSummary': instance.isSummary,
      'elementIsSummary': instance.elementIsSummary?.toJson(),
      'binding': instance.binding?.toJson(),
      'mapping': instance.mapping?.map((e) => e?.toJson())?.toList(),
    };

ElementDefinition_Slicing _$ElementDefinition_SlicingFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Slicing(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    discriminator: (json['discriminator'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Discriminator.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    ordered: json['ordered'] as bool,
    elementOrdered: json['elementOrdered'] == null
        ? null
        : Element.fromJson(json['elementOrdered'] as Map<String, dynamic>),
    rules: json['rules'] as String,
    elementRules: json['elementRules'] == null
        ? null
        : Element.fromJson(json['elementRules'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_SlicingToJson(
        ElementDefinition_Slicing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'discriminator':
          instance.discriminator?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'ordered': instance.ordered,
      'elementOrdered': instance.elementOrdered?.toJson(),
      'rules': instance.rules,
      'elementRules': instance.elementRules?.toJson(),
    };

ElementDefinition_Discriminator _$ElementDefinition_DiscriminatorFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Discriminator(
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
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_DiscriminatorToJson(
        ElementDefinition_Discriminator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
    };

ElementDefinition_Base _$ElementDefinition_BaseFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Base(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_BaseToJson(
        ElementDefinition_Base instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
    };

ElementDefinition_Type _$ElementDefinition_TypeFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Type(
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
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    aggregation: json['aggregation'] as String,
    elementAggregation: (json['elementAggregation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    elementVersioning: json['elementVersioning'] == null
        ? null
        : Element.fromJson(json['elementVersioning'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_TypeToJson(
        ElementDefinition_Type instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'profile': instance.profile,
      'targetProfile': instance.targetProfile,
      'aggregation': instance.aggregation,
      'elementAggregation':
          instance.elementAggregation?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'elementVersioning': instance.elementVersioning?.toJson(),
    };

ElementDefinition_Example _$ElementDefinition_ExampleFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Example(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueCanonical: json['valueCanonical'] as String,
    elementValueCanonical: json['elementValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementValueCanonical'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: json['valueDecimal'] as int,
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueInstant: json['valueInstant'] as String,
    elementValueInstant: json['elementValueInstant'] == null
        ? null
        : Element.fromJson(json['elementValueInstant'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueMarkdown: json['valueMarkdown'] as String,
    elementValueMarkdown: json['elementValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementValueMarkdown'] as Map<String, dynamic>),
    valueOid: json['valueOid'] as String,
    elementValueOid: json['elementValueOid'] == null
        ? null
        : Element.fromJson(json['elementValueOid'] as Map<String, dynamic>),
    valuePositiveInt: json['valuePositiveInt'] as int,
    elementValuePositiveInt: json['elementValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementValuePositiveInt'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    elementValueUnsignedInt: json['elementValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementValueUnsignedInt'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueUrl: json['valueUrl'] as String,
    elementValueUrl: json['elementValueUrl'] == null
        ? null
        : Element.fromJson(json['elementValueUrl'] as Map<String, dynamic>),
    valueUuid: json['valueUuid'] as String,
    elementValueUuid: json['elementValueUuid'] == null
        ? null
        : Element.fromJson(json['elementValueUuid'] as Map<String, dynamic>),
    valueAddress: json['valueAddress'] == null
        ? null
        : Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
    valueAge: json['valueAge'] == null
        ? null
        : Age.fromJson(json['valueAge'] as Map<String, dynamic>),
    valueAnnotation: json['valueAnnotation'] == null
        ? null
        : Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueContactPoint: json['valueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['valueContactPoint'] as Map<String, dynamic>),
    valueCount: json['valueCount'] == null
        ? null
        : Count.fromJson(json['valueCount'] as Map<String, dynamic>),
    valueDistance: json['valueDistance'] == null
        ? null
        : Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'] == null
        ? null
        : Duration.fromJson(json['valueDuration'] as Map<String, dynamic>),
    valueHumanName: json['valueHumanName'] == null
        ? null
        : HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
    valueIdentifier: json['valueIdentifier'] == null
        ? null
        : Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueSignature: json['valueSignature'] == null
        ? null
        : Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
    valueTiming: json['valueTiming'] == null
        ? null
        : Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
    valueContactDetail: json['valueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['valueContactDetail'] as Map<String, dynamic>),
    valueContributor: json['valueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['valueContributor'] as Map<String, dynamic>),
    valueDataRequirement: json['valueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['valueDataRequirement'] as Map<String, dynamic>),
    valueExpression: json['valueExpression'] == null
        ? null
        : Expression.fromJson(json['valueExpression'] as Map<String, dynamic>),
    valueParameterDefinition: json['valueParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['valueParameterDefinition'] as Map<String, dynamic>),
    valueRelatedArtifact: json['valueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['valueRelatedArtifact'] as Map<String, dynamic>),
    valueTriggerDefinition: json['valueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['valueTriggerDefinition'] as Map<String, dynamic>),
    valueUsageContext: json['valueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['valueUsageContext'] as Map<String, dynamic>),
    valueDosage: json['valueDosage'] == null
        ? null
        : Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
    valueMeta: json['valueMeta'] == null
        ? null
        : Meta.fromJson(json['valueMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_ExampleToJson(
        ElementDefinition_Example instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueCanonical': instance.valueCanonical,
      'elementValueCanonical': instance.elementValueCanonical?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueInstant': instance.valueInstant,
      'elementValueInstant': instance.elementValueInstant?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueMarkdown': instance.valueMarkdown,
      'elementValueMarkdown': instance.elementValueMarkdown?.toJson(),
      'valueOid': instance.valueOid,
      'elementValueOid': instance.elementValueOid?.toJson(),
      'valuePositiveInt': instance.valuePositiveInt,
      'elementValuePositiveInt': instance.elementValuePositiveInt?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueUnsignedInt': instance.valueUnsignedInt,
      'elementValueUnsignedInt': instance.elementValueUnsignedInt?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueUrl': instance.valueUrl,
      'elementValueUrl': instance.elementValueUrl?.toJson(),
      'valueUuid': instance.valueUuid,
      'elementValueUuid': instance.elementValueUuid?.toJson(),
      'valueAddress': instance.valueAddress?.toJson(),
      'valueAge': instance.valueAge?.toJson(),
      'valueAnnotation': instance.valueAnnotation?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueContactPoint': instance.valueContactPoint?.toJson(),
      'valueCount': instance.valueCount?.toJson(),
      'valueDistance': instance.valueDistance?.toJson(),
      'valueDuration': instance.valueDuration?.toJson(),
      'valueHumanName': instance.valueHumanName?.toJson(),
      'valueIdentifier': instance.valueIdentifier?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueSignature': instance.valueSignature?.toJson(),
      'valueTiming': instance.valueTiming?.toJson(),
      'valueContactDetail': instance.valueContactDetail?.toJson(),
      'valueContributor': instance.valueContributor?.toJson(),
      'valueDataRequirement': instance.valueDataRequirement?.toJson(),
      'valueExpression': instance.valueExpression?.toJson(),
      'valueParameterDefinition': instance.valueParameterDefinition?.toJson(),
      'valueRelatedArtifact': instance.valueRelatedArtifact?.toJson(),
      'valueTriggerDefinition': instance.valueTriggerDefinition?.toJson(),
      'valueUsageContext': instance.valueUsageContext?.toJson(),
      'valueDosage': instance.valueDosage?.toJson(),
      'valueMeta': instance.valueMeta?.toJson(),
    };

ElementDefinition_Constraint _$ElementDefinition_ConstraintFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Constraint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    key: json['key'] as String,
    elementKey: json['elementKey'] == null
        ? null
        : Element.fromJson(json['elementKey'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    elementRequirements: json['elementRequirements'] == null
        ? null
        : Element.fromJson(json['elementRequirements'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    human: json['human'] as String,
    elementHuman: json['elementHuman'] == null
        ? null
        : Element.fromJson(json['elementHuman'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    elementXpath: json['elementXpath'] == null
        ? null
        : Element.fromJson(json['elementXpath'] as Map<String, dynamic>),
    source: json['source'] as String,
  );
}

Map<String, dynamic> _$ElementDefinition_ConstraintToJson(
        ElementDefinition_Constraint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'key': instance.key,
      'elementKey': instance.elementKey?.toJson(),
      'requirements': instance.requirements,
      'elementRequirements': instance.elementRequirements?.toJson(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'human': instance.human,
      'elementHuman': instance.elementHuman?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'xpath': instance.xpath,
      'elementXpath': instance.elementXpath?.toJson(),
      'source': instance.source,
    };

ElementDefinition_Binding _$ElementDefinition_BindingFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Binding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: json['strength'] as String,
    elementStrength: json['elementStrength'] == null
        ? null
        : Element.fromJson(json['elementStrength'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
  );
}

Map<String, dynamic> _$ElementDefinition_BindingToJson(
        ElementDefinition_Binding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'strength': instance.strength,
      'elementStrength': instance.elementStrength?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'valueSet': instance.valueSet,
    };

ElementDefinition_Mapping _$ElementDefinition_MappingFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Mapping(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identity: json['identity'] as String,
    elementIdentity: json['elementIdentity'] == null
        ? null
        : Element.fromJson(json['elementIdentity'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    map: json['map'] as String,
    elementMap: json['elementMap'] == null
        ? null
        : Element.fromJson(json['elementMap'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_MappingToJson(
        ElementDefinition_Mapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identity': instance.identity,
      'elementIdentity': instance.elementIdentity?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'map': instance.map,
      'elementMap': instance.elementMap?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };
