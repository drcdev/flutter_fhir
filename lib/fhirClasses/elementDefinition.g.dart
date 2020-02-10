// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elementDefinition.dart';

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
    representation:
        (json['representation'] as List)?.map((e) => e as String)?.toList(),
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
    defaultValueDecimal: (json['defaultValueDecimal'] as num)?.toDouble(),
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
    fixedDecimal: (json['fixedDecimal'] as num)?.toDouble(),
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
    patternDecimal: (json['patternDecimal'] as num)?.toDouble(),
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
    minValueDecimal: (json['minValueDecimal'] as num)?.toDouble(),
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
    maxValueDecimal: (json['maxValueDecimal'] as num)?.toDouble(),
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
    aggregation:
        (json['aggregation'] as List)?.map((e) => e as String)?.toList(),
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
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
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
