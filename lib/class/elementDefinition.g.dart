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
    element_path: json['element_path'] == null
        ? null
        : Element.fromJson(json['element_path'] as Map<String, dynamic>),
    representation:
        (json['representation'] as List)?.map((e) => e as String)?.toList(),
    element_representation: (json['element_representation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sliceName: json['sliceName'] as String,
    element_sliceName: json['element_sliceName'] == null
        ? null
        : Element.fromJson(json['element_sliceName'] as Map<String, dynamic>),
    sliceIsConstraining: json['sliceIsConstraining'] as bool,
    element_sliceIsConstraining: json['element_sliceIsConstraining'] == null
        ? null
        : Element.fromJson(
            json['element_sliceIsConstraining'] as Map<String, dynamic>),
    label: json['label'] as String,
    element_label: json['element_label'] == null
        ? null
        : Element.fromJson(json['element_label'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    slicing: json['slicing'] == null
        ? null
        : ElementDefinition_Slicing.fromJson(
            json['slicing'] as Map<String, dynamic>),
    short: json['short'] as String,
    element_short: json['element_short'] == null
        ? null
        : Element.fromJson(json['element_short'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    element_definition: json['element_definition'] == null
        ? null
        : Element.fromJson(json['element_definition'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    element_comment: json['element_comment'] == null
        ? null
        : Element.fromJson(json['element_comment'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    element_requirements: json['element_requirements'] == null
        ? null
        : Element.fromJson(
            json['element_requirements'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    element_alias: (json['element_alias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    min: json['min'] as int,
    element_min: json['element_min'] == null
        ? null
        : Element.fromJson(json['element_min'] as Map<String, dynamic>),
    max: json['max'] as String,
    element_max: json['element_max'] == null
        ? null
        : Element.fromJson(json['element_max'] as Map<String, dynamic>),
    base: json['base'] == null
        ? null
        : ElementDefinition_Base.fromJson(json['base'] as Map<String, dynamic>),
    contentReference: json['contentReference'] as String,
    element_contentReference: json['element_contentReference'] == null
        ? null
        : Element.fromJson(
            json['element_contentReference'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Type.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    element_defaultValueBase64Binary:
        json['element_defaultValueBase64Binary'] == null
            ? null
            : Element.fromJson(json['element_defaultValueBase64Binary']
                as Map<String, dynamic>),
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    element_defaultValueBoolean: json['element_defaultValueBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueBoolean'] as Map<String, dynamic>),
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    element_defaultValueCanonical: json['element_defaultValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueCanonical'] as Map<String, dynamic>),
    defaultValueCode: json['defaultValueCode'] as String,
    element_defaultValueCode: json['element_defaultValueCode'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueCode'] as Map<String, dynamic>),
    defaultValueDate: json['defaultValueDate'] as String,
    element_defaultValueDate: json['element_defaultValueDate'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueDate'] as Map<String, dynamic>),
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    element_defaultValueDateTime: json['element_defaultValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueDateTime'] as Map<String, dynamic>),
    defaultValueDecimal: (json['defaultValueDecimal'] as num)?.toDouble(),
    element_defaultValueDecimal: json['element_defaultValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueDecimal'] as Map<String, dynamic>),
    defaultValueId: json['defaultValueId'] as String,
    element_defaultValueId: json['element_defaultValueId'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueId'] as Map<String, dynamic>),
    defaultValueInstant: json['defaultValueInstant'] as String,
    element_defaultValueInstant: json['element_defaultValueInstant'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueInstant'] as Map<String, dynamic>),
    defaultValueInteger: json['defaultValueInteger'] as int,
    element_defaultValueInteger: json['element_defaultValueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueInteger'] as Map<String, dynamic>),
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    element_defaultValueMarkdown: json['element_defaultValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueMarkdown'] as Map<String, dynamic>),
    defaultValueOid: json['defaultValueOid'] as String,
    element_defaultValueOid: json['element_defaultValueOid'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueOid'] as Map<String, dynamic>),
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    element_defaultValuePositiveInt: json['element_defaultValuePositiveInt'] ==
            null
        ? null
        : Element.fromJson(
            json['element_defaultValuePositiveInt'] as Map<String, dynamic>),
    defaultValueString: json['defaultValueString'] as String,
    element_defaultValueString: json['element_defaultValueString'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueString'] as Map<String, dynamic>),
    defaultValueTime: json['defaultValueTime'] as String,
    element_defaultValueTime: json['element_defaultValueTime'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueTime'] as Map<String, dynamic>),
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    element_defaultValueUnsignedInt: json['element_defaultValueUnsignedInt'] ==
            null
        ? null
        : Element.fromJson(
            json['element_defaultValueUnsignedInt'] as Map<String, dynamic>),
    defaultValueUri: json['defaultValueUri'] as String,
    element_defaultValueUri: json['element_defaultValueUri'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueUri'] as Map<String, dynamic>),
    defaultValueUrl: json['defaultValueUrl'] as String,
    element_defaultValueUrl: json['element_defaultValueUrl'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueUrl'] as Map<String, dynamic>),
    defaultValueUuid: json['defaultValueUuid'] as String,
    element_defaultValueUuid: json['element_defaultValueUuid'] == null
        ? null
        : Element.fromJson(
            json['element_defaultValueUuid'] as Map<String, dynamic>),
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
    defaultValueDuration: json['defaultValueDuration'],
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
    element_meaningWhenMissing: json['element_meaningWhenMissing'] == null
        ? null
        : Element.fromJson(
            json['element_meaningWhenMissing'] as Map<String, dynamic>),
    orderMeaning: json['orderMeaning'] as String,
    element_orderMeaning: json['element_orderMeaning'] == null
        ? null
        : Element.fromJson(
            json['element_orderMeaning'] as Map<String, dynamic>),
    fixedBase64Binary: json['fixedBase64Binary'] as String,
    element_fixedBase64Binary: json['element_fixedBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['element_fixedBase64Binary'] as Map<String, dynamic>),
    fixedBoolean: json['fixedBoolean'] as bool,
    element_fixedBoolean: json['element_fixedBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_fixedBoolean'] as Map<String, dynamic>),
    fixedCanonical: json['fixedCanonical'] as String,
    element_fixedCanonical: json['element_fixedCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_fixedCanonical'] as Map<String, dynamic>),
    fixedCode: json['fixedCode'] as String,
    element_fixedCode: json['element_fixedCode'] == null
        ? null
        : Element.fromJson(json['element_fixedCode'] as Map<String, dynamic>),
    fixedDate: json['fixedDate'] as String,
    element_fixedDate: json['element_fixedDate'] == null
        ? null
        : Element.fromJson(json['element_fixedDate'] as Map<String, dynamic>),
    fixedDateTime: json['fixedDateTime'] as String,
    element_fixedDateTime: json['element_fixedDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_fixedDateTime'] as Map<String, dynamic>),
    fixedDecimal: (json['fixedDecimal'] as num)?.toDouble(),
    element_fixedDecimal: json['element_fixedDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_fixedDecimal'] as Map<String, dynamic>),
    fixedId: json['fixedId'] as String,
    element_fixedId: json['element_fixedId'] == null
        ? null
        : Element.fromJson(json['element_fixedId'] as Map<String, dynamic>),
    fixedInstant: json['fixedInstant'] as String,
    element_fixedInstant: json['element_fixedInstant'] == null
        ? null
        : Element.fromJson(
            json['element_fixedInstant'] as Map<String, dynamic>),
    fixedInteger: json['fixedInteger'] as int,
    element_fixedInteger: json['element_fixedInteger'] == null
        ? null
        : Element.fromJson(
            json['element_fixedInteger'] as Map<String, dynamic>),
    fixedMarkdown: json['fixedMarkdown'] as String,
    element_fixedMarkdown: json['element_fixedMarkdown'] == null
        ? null
        : Element.fromJson(
            json['element_fixedMarkdown'] as Map<String, dynamic>),
    fixedOid: json['fixedOid'] as String,
    element_fixedOid: json['element_fixedOid'] == null
        ? null
        : Element.fromJson(json['element_fixedOid'] as Map<String, dynamic>),
    fixedPositiveInt: json['fixedPositiveInt'] as int,
    element_fixedPositiveInt: json['element_fixedPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_fixedPositiveInt'] as Map<String, dynamic>),
    fixedString: json['fixedString'] as String,
    element_fixedString: json['element_fixedString'] == null
        ? null
        : Element.fromJson(json['element_fixedString'] as Map<String, dynamic>),
    fixedTime: json['fixedTime'] as String,
    element_fixedTime: json['element_fixedTime'] == null
        ? null
        : Element.fromJson(json['element_fixedTime'] as Map<String, dynamic>),
    fixedUnsignedInt: json['fixedUnsignedInt'] as int,
    element_fixedUnsignedInt: json['element_fixedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_fixedUnsignedInt'] as Map<String, dynamic>),
    fixedUri: json['fixedUri'] as String,
    element_fixedUri: json['element_fixedUri'] == null
        ? null
        : Element.fromJson(json['element_fixedUri'] as Map<String, dynamic>),
    fixedUrl: json['fixedUrl'] as String,
    element_fixedUrl: json['element_fixedUrl'] == null
        ? null
        : Element.fromJson(json['element_fixedUrl'] as Map<String, dynamic>),
    fixedUuid: json['fixedUuid'] as String,
    element_fixedUuid: json['element_fixedUuid'] == null
        ? null
        : Element.fromJson(json['element_fixedUuid'] as Map<String, dynamic>),
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
    fixedDuration: json['fixedDuration'],
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
    element_patternBase64Binary: json['element_patternBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['element_patternBase64Binary'] as Map<String, dynamic>),
    patternBoolean: json['patternBoolean'] as bool,
    element_patternBoolean: json['element_patternBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_patternBoolean'] as Map<String, dynamic>),
    patternCanonical: json['patternCanonical'] as String,
    element_patternCanonical: json['element_patternCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_patternCanonical'] as Map<String, dynamic>),
    patternCode: json['patternCode'] as String,
    element_patternCode: json['element_patternCode'] == null
        ? null
        : Element.fromJson(json['element_patternCode'] as Map<String, dynamic>),
    patternDate: json['patternDate'] as String,
    element_patternDate: json['element_patternDate'] == null
        ? null
        : Element.fromJson(json['element_patternDate'] as Map<String, dynamic>),
    patternDateTime: json['patternDateTime'] as String,
    element_patternDateTime: json['element_patternDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_patternDateTime'] as Map<String, dynamic>),
    patternDecimal: (json['patternDecimal'] as num)?.toDouble(),
    element_patternDecimal: json['element_patternDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_patternDecimal'] as Map<String, dynamic>),
    patternId: json['patternId'] as String,
    element_patternId: json['element_patternId'] == null
        ? null
        : Element.fromJson(json['element_patternId'] as Map<String, dynamic>),
    patternInstant: json['patternInstant'] as String,
    element_patternInstant: json['element_patternInstant'] == null
        ? null
        : Element.fromJson(
            json['element_patternInstant'] as Map<String, dynamic>),
    patternInteger: json['patternInteger'] as int,
    element_patternInteger: json['element_patternInteger'] == null
        ? null
        : Element.fromJson(
            json['element_patternInteger'] as Map<String, dynamic>),
    patternMarkdown: json['patternMarkdown'] as String,
    element_patternMarkdown: json['element_patternMarkdown'] == null
        ? null
        : Element.fromJson(
            json['element_patternMarkdown'] as Map<String, dynamic>),
    patternOid: json['patternOid'] as String,
    element_patternOid: json['element_patternOid'] == null
        ? null
        : Element.fromJson(json['element_patternOid'] as Map<String, dynamic>),
    patternPositiveInt: json['patternPositiveInt'] as int,
    element_patternPositiveInt: json['element_patternPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_patternPositiveInt'] as Map<String, dynamic>),
    patternString: json['patternString'] as String,
    element_patternString: json['element_patternString'] == null
        ? null
        : Element.fromJson(
            json['element_patternString'] as Map<String, dynamic>),
    patternTime: json['patternTime'] as String,
    element_patternTime: json['element_patternTime'] == null
        ? null
        : Element.fromJson(json['element_patternTime'] as Map<String, dynamic>),
    patternUnsignedInt: json['patternUnsignedInt'] as int,
    element_patternUnsignedInt: json['element_patternUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_patternUnsignedInt'] as Map<String, dynamic>),
    patternUri: json['patternUri'] as String,
    element_patternUri: json['element_patternUri'] == null
        ? null
        : Element.fromJson(json['element_patternUri'] as Map<String, dynamic>),
    patternUrl: json['patternUrl'] as String,
    element_patternUrl: json['element_patternUrl'] == null
        ? null
        : Element.fromJson(json['element_patternUrl'] as Map<String, dynamic>),
    patternUuid: json['patternUuid'] as String,
    element_patternUuid: json['element_patternUuid'] == null
        ? null
        : Element.fromJson(json['element_patternUuid'] as Map<String, dynamic>),
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
    patternDuration: json['patternDuration'],
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
    element_minValueDate: json['element_minValueDate'] == null
        ? null
        : Element.fromJson(
            json['element_minValueDate'] as Map<String, dynamic>),
    minValueDateTime: json['minValueDateTime'] as String,
    element_minValueDateTime: json['element_minValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_minValueDateTime'] as Map<String, dynamic>),
    minValueInstant: json['minValueInstant'] as String,
    element_minValueInstant: json['element_minValueInstant'] == null
        ? null
        : Element.fromJson(
            json['element_minValueInstant'] as Map<String, dynamic>),
    minValueTime: json['minValueTime'] as String,
    element_minValueTime: json['element_minValueTime'] == null
        ? null
        : Element.fromJson(
            json['element_minValueTime'] as Map<String, dynamic>),
    minValueDecimal: (json['minValueDecimal'] as num)?.toDouble(),
    element_minValueDecimal: json['element_minValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_minValueDecimal'] as Map<String, dynamic>),
    minValueInteger: json['minValueInteger'] as int,
    element_minValueInteger: json['element_minValueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_minValueInteger'] as Map<String, dynamic>),
    minValuePositiveInt: json['minValuePositiveInt'] as int,
    element_minValuePositiveInt: json['element_minValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_minValuePositiveInt'] as Map<String, dynamic>),
    minValueUnsignedInt: json['minValueUnsignedInt'] as int,
    element_minValueUnsignedInt: json['element_minValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_minValueUnsignedInt'] as Map<String, dynamic>),
    minValueQuantity: json['minValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['minValueQuantity'] as Map<String, dynamic>),
    maxValueDate: json['maxValueDate'] as String,
    element_maxValueDate: json['element_maxValueDate'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueDate'] as Map<String, dynamic>),
    maxValueDateTime: json['maxValueDateTime'] as String,
    element_maxValueDateTime: json['element_maxValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueDateTime'] as Map<String, dynamic>),
    maxValueInstant: json['maxValueInstant'] as String,
    element_maxValueInstant: json['element_maxValueInstant'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueInstant'] as Map<String, dynamic>),
    maxValueTime: json['maxValueTime'] as String,
    element_maxValueTime: json['element_maxValueTime'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueTime'] as Map<String, dynamic>),
    maxValueDecimal: (json['maxValueDecimal'] as num)?.toDouble(),
    element_maxValueDecimal: json['element_maxValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueDecimal'] as Map<String, dynamic>),
    maxValueInteger: json['maxValueInteger'] as int,
    element_maxValueInteger: json['element_maxValueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueInteger'] as Map<String, dynamic>),
    maxValuePositiveInt: json['maxValuePositiveInt'] as int,
    element_maxValuePositiveInt: json['element_maxValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_maxValuePositiveInt'] as Map<String, dynamic>),
    maxValueUnsignedInt: json['maxValueUnsignedInt'] as int,
    element_maxValueUnsignedInt: json['element_maxValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_maxValueUnsignedInt'] as Map<String, dynamic>),
    maxValueQuantity: json['maxValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['maxValueQuantity'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    element_maxLength: json['element_maxLength'] == null
        ? null
        : Element.fromJson(json['element_maxLength'] as Map<String, dynamic>),
    condition: (json['condition'] as List)?.map((e) => e as String)?.toList(),
    element_condition: (json['element_condition'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    constraint: (json['constraint'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Constraint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mustSupport: json['mustSupport'] as bool,
    element_mustSupport: json['element_mustSupport'] == null
        ? null
        : Element.fromJson(json['element_mustSupport'] as Map<String, dynamic>),
    isModifier: json['isModifier'] as bool,
    element_isModifier: json['element_isModifier'] == null
        ? null
        : Element.fromJson(json['element_isModifier'] as Map<String, dynamic>),
    isModifierReason: json['isModifierReason'] as String,
    element_isModifierReason: json['element_isModifierReason'] == null
        ? null
        : Element.fromJson(
            json['element_isModifierReason'] as Map<String, dynamic>),
    isSummary: json['isSummary'] as bool,
    element_isSummary: json['element_isSummary'] == null
        ? null
        : Element.fromJson(json['element_isSummary'] as Map<String, dynamic>),
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
      'element_path': instance.element_path?.toJson(),
      'representation': instance.representation,
      'element_representation':
          instance.element_representation?.map((e) => e?.toJson())?.toList(),
      'sliceName': instance.sliceName,
      'element_sliceName': instance.element_sliceName?.toJson(),
      'sliceIsConstraining': instance.sliceIsConstraining,
      'element_sliceIsConstraining':
          instance.element_sliceIsConstraining?.toJson(),
      'label': instance.label,
      'element_label': instance.element_label?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'slicing': instance.slicing?.toJson(),
      'short': instance.short,
      'element_short': instance.element_short?.toJson(),
      'definition': instance.definition,
      'element_definition': instance.element_definition?.toJson(),
      'comment': instance.comment,
      'element_comment': instance.element_comment?.toJson(),
      'requirements': instance.requirements,
      'element_requirements': instance.element_requirements?.toJson(),
      'alias': instance.alias,
      'element_alias':
          instance.element_alias?.map((e) => e?.toJson())?.toList(),
      'min': instance.min,
      'element_min': instance.element_min?.toJson(),
      'max': instance.max,
      'element_max': instance.element_max?.toJson(),
      'base': instance.base?.toJson(),
      'contentReference': instance.contentReference,
      'element_contentReference': instance.element_contentReference?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'element_defaultValueBase64Binary':
          instance.element_defaultValueBase64Binary?.toJson(),
      'defaultValueBoolean': instance.defaultValueBoolean,
      'element_defaultValueBoolean':
          instance.element_defaultValueBoolean?.toJson(),
      'defaultValueCanonical': instance.defaultValueCanonical,
      'element_defaultValueCanonical':
          instance.element_defaultValueCanonical?.toJson(),
      'defaultValueCode': instance.defaultValueCode,
      'element_defaultValueCode': instance.element_defaultValueCode?.toJson(),
      'defaultValueDate': instance.defaultValueDate,
      'element_defaultValueDate': instance.element_defaultValueDate?.toJson(),
      'defaultValueDateTime': instance.defaultValueDateTime,
      'element_defaultValueDateTime':
          instance.element_defaultValueDateTime?.toJson(),
      'defaultValueDecimal': instance.defaultValueDecimal,
      'element_defaultValueDecimal':
          instance.element_defaultValueDecimal?.toJson(),
      'defaultValueId': instance.defaultValueId,
      'element_defaultValueId': instance.element_defaultValueId?.toJson(),
      'defaultValueInstant': instance.defaultValueInstant,
      'element_defaultValueInstant':
          instance.element_defaultValueInstant?.toJson(),
      'defaultValueInteger': instance.defaultValueInteger,
      'element_defaultValueInteger':
          instance.element_defaultValueInteger?.toJson(),
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'element_defaultValueMarkdown':
          instance.element_defaultValueMarkdown?.toJson(),
      'defaultValueOid': instance.defaultValueOid,
      'element_defaultValueOid': instance.element_defaultValueOid?.toJson(),
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'element_defaultValuePositiveInt':
          instance.element_defaultValuePositiveInt?.toJson(),
      'defaultValueString': instance.defaultValueString,
      'element_defaultValueString':
          instance.element_defaultValueString?.toJson(),
      'defaultValueTime': instance.defaultValueTime,
      'element_defaultValueTime': instance.element_defaultValueTime?.toJson(),
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'element_defaultValueUnsignedInt':
          instance.element_defaultValueUnsignedInt?.toJson(),
      'defaultValueUri': instance.defaultValueUri,
      'element_defaultValueUri': instance.element_defaultValueUri?.toJson(),
      'defaultValueUrl': instance.defaultValueUrl,
      'element_defaultValueUrl': instance.element_defaultValueUrl?.toJson(),
      'defaultValueUuid': instance.defaultValueUuid,
      'element_defaultValueUuid': instance.element_defaultValueUuid?.toJson(),
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
      'defaultValueDuration': instance.defaultValueDuration,
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
      'element_meaningWhenMissing':
          instance.element_meaningWhenMissing?.toJson(),
      'orderMeaning': instance.orderMeaning,
      'element_orderMeaning': instance.element_orderMeaning?.toJson(),
      'fixedBase64Binary': instance.fixedBase64Binary,
      'element_fixedBase64Binary': instance.element_fixedBase64Binary?.toJson(),
      'fixedBoolean': instance.fixedBoolean,
      'element_fixedBoolean': instance.element_fixedBoolean?.toJson(),
      'fixedCanonical': instance.fixedCanonical,
      'element_fixedCanonical': instance.element_fixedCanonical?.toJson(),
      'fixedCode': instance.fixedCode,
      'element_fixedCode': instance.element_fixedCode?.toJson(),
      'fixedDate': instance.fixedDate,
      'element_fixedDate': instance.element_fixedDate?.toJson(),
      'fixedDateTime': instance.fixedDateTime,
      'element_fixedDateTime': instance.element_fixedDateTime?.toJson(),
      'fixedDecimal': instance.fixedDecimal,
      'element_fixedDecimal': instance.element_fixedDecimal?.toJson(),
      'fixedId': instance.fixedId,
      'element_fixedId': instance.element_fixedId?.toJson(),
      'fixedInstant': instance.fixedInstant,
      'element_fixedInstant': instance.element_fixedInstant?.toJson(),
      'fixedInteger': instance.fixedInteger,
      'element_fixedInteger': instance.element_fixedInteger?.toJson(),
      'fixedMarkdown': instance.fixedMarkdown,
      'element_fixedMarkdown': instance.element_fixedMarkdown?.toJson(),
      'fixedOid': instance.fixedOid,
      'element_fixedOid': instance.element_fixedOid?.toJson(),
      'fixedPositiveInt': instance.fixedPositiveInt,
      'element_fixedPositiveInt': instance.element_fixedPositiveInt?.toJson(),
      'fixedString': instance.fixedString,
      'element_fixedString': instance.element_fixedString?.toJson(),
      'fixedTime': instance.fixedTime,
      'element_fixedTime': instance.element_fixedTime?.toJson(),
      'fixedUnsignedInt': instance.fixedUnsignedInt,
      'element_fixedUnsignedInt': instance.element_fixedUnsignedInt?.toJson(),
      'fixedUri': instance.fixedUri,
      'element_fixedUri': instance.element_fixedUri?.toJson(),
      'fixedUrl': instance.fixedUrl,
      'element_fixedUrl': instance.element_fixedUrl?.toJson(),
      'fixedUuid': instance.fixedUuid,
      'element_fixedUuid': instance.element_fixedUuid?.toJson(),
      'fixedAddress': instance.fixedAddress?.toJson(),
      'fixedAge': instance.fixedAge?.toJson(),
      'fixedAnnotation': instance.fixedAnnotation?.toJson(),
      'fixedAttachment': instance.fixedAttachment?.toJson(),
      'fixedCodeableConcept': instance.fixedCodeableConcept?.toJson(),
      'fixedCoding': instance.fixedCoding?.toJson(),
      'fixedContactPoint': instance.fixedContactPoint?.toJson(),
      'fixedCount': instance.fixedCount?.toJson(),
      'fixedDistance': instance.fixedDistance?.toJson(),
      'fixedDuration': instance.fixedDuration,
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
      'element_patternBase64Binary':
          instance.element_patternBase64Binary?.toJson(),
      'patternBoolean': instance.patternBoolean,
      'element_patternBoolean': instance.element_patternBoolean?.toJson(),
      'patternCanonical': instance.patternCanonical,
      'element_patternCanonical': instance.element_patternCanonical?.toJson(),
      'patternCode': instance.patternCode,
      'element_patternCode': instance.element_patternCode?.toJson(),
      'patternDate': instance.patternDate,
      'element_patternDate': instance.element_patternDate?.toJson(),
      'patternDateTime': instance.patternDateTime,
      'element_patternDateTime': instance.element_patternDateTime?.toJson(),
      'patternDecimal': instance.patternDecimal,
      'element_patternDecimal': instance.element_patternDecimal?.toJson(),
      'patternId': instance.patternId,
      'element_patternId': instance.element_patternId?.toJson(),
      'patternInstant': instance.patternInstant,
      'element_patternInstant': instance.element_patternInstant?.toJson(),
      'patternInteger': instance.patternInteger,
      'element_patternInteger': instance.element_patternInteger?.toJson(),
      'patternMarkdown': instance.patternMarkdown,
      'element_patternMarkdown': instance.element_patternMarkdown?.toJson(),
      'patternOid': instance.patternOid,
      'element_patternOid': instance.element_patternOid?.toJson(),
      'patternPositiveInt': instance.patternPositiveInt,
      'element_patternPositiveInt':
          instance.element_patternPositiveInt?.toJson(),
      'patternString': instance.patternString,
      'element_patternString': instance.element_patternString?.toJson(),
      'patternTime': instance.patternTime,
      'element_patternTime': instance.element_patternTime?.toJson(),
      'patternUnsignedInt': instance.patternUnsignedInt,
      'element_patternUnsignedInt':
          instance.element_patternUnsignedInt?.toJson(),
      'patternUri': instance.patternUri,
      'element_patternUri': instance.element_patternUri?.toJson(),
      'patternUrl': instance.patternUrl,
      'element_patternUrl': instance.element_patternUrl?.toJson(),
      'patternUuid': instance.patternUuid,
      'element_patternUuid': instance.element_patternUuid?.toJson(),
      'patternAddress': instance.patternAddress?.toJson(),
      'patternAge': instance.patternAge?.toJson(),
      'patternAnnotation': instance.patternAnnotation?.toJson(),
      'patternAttachment': instance.patternAttachment?.toJson(),
      'patternCodeableConcept': instance.patternCodeableConcept?.toJson(),
      'patternCoding': instance.patternCoding?.toJson(),
      'patternContactPoint': instance.patternContactPoint?.toJson(),
      'patternCount': instance.patternCount?.toJson(),
      'patternDistance': instance.patternDistance?.toJson(),
      'patternDuration': instance.patternDuration,
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
      'element_minValueDate': instance.element_minValueDate?.toJson(),
      'minValueDateTime': instance.minValueDateTime,
      'element_minValueDateTime': instance.element_minValueDateTime?.toJson(),
      'minValueInstant': instance.minValueInstant,
      'element_minValueInstant': instance.element_minValueInstant?.toJson(),
      'minValueTime': instance.minValueTime,
      'element_minValueTime': instance.element_minValueTime?.toJson(),
      'minValueDecimal': instance.minValueDecimal,
      'element_minValueDecimal': instance.element_minValueDecimal?.toJson(),
      'minValueInteger': instance.minValueInteger,
      'element_minValueInteger': instance.element_minValueInteger?.toJson(),
      'minValuePositiveInt': instance.minValuePositiveInt,
      'element_minValuePositiveInt':
          instance.element_minValuePositiveInt?.toJson(),
      'minValueUnsignedInt': instance.minValueUnsignedInt,
      'element_minValueUnsignedInt':
          instance.element_minValueUnsignedInt?.toJson(),
      'minValueQuantity': instance.minValueQuantity?.toJson(),
      'maxValueDate': instance.maxValueDate,
      'element_maxValueDate': instance.element_maxValueDate?.toJson(),
      'maxValueDateTime': instance.maxValueDateTime,
      'element_maxValueDateTime': instance.element_maxValueDateTime?.toJson(),
      'maxValueInstant': instance.maxValueInstant,
      'element_maxValueInstant': instance.element_maxValueInstant?.toJson(),
      'maxValueTime': instance.maxValueTime,
      'element_maxValueTime': instance.element_maxValueTime?.toJson(),
      'maxValueDecimal': instance.maxValueDecimal,
      'element_maxValueDecimal': instance.element_maxValueDecimal?.toJson(),
      'maxValueInteger': instance.maxValueInteger,
      'element_maxValueInteger': instance.element_maxValueInteger?.toJson(),
      'maxValuePositiveInt': instance.maxValuePositiveInt,
      'element_maxValuePositiveInt':
          instance.element_maxValuePositiveInt?.toJson(),
      'maxValueUnsignedInt': instance.maxValueUnsignedInt,
      'element_maxValueUnsignedInt':
          instance.element_maxValueUnsignedInt?.toJson(),
      'maxValueQuantity': instance.maxValueQuantity?.toJson(),
      'maxLength': instance.maxLength,
      'element_maxLength': instance.element_maxLength?.toJson(),
      'condition': instance.condition,
      'element_condition':
          instance.element_condition?.map((e) => e?.toJson())?.toList(),
      'constraint': instance.constraint?.map((e) => e?.toJson())?.toList(),
      'mustSupport': instance.mustSupport,
      'element_mustSupport': instance.element_mustSupport?.toJson(),
      'isModifier': instance.isModifier,
      'element_isModifier': instance.element_isModifier?.toJson(),
      'isModifierReason': instance.isModifierReason,
      'element_isModifierReason': instance.element_isModifierReason?.toJson(),
      'isSummary': instance.isSummary,
      'element_isSummary': instance.element_isSummary?.toJson(),
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
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    ordered: json['ordered'] as bool,
    element_ordered: json['element_ordered'] == null
        ? null
        : Element.fromJson(json['element_ordered'] as Map<String, dynamic>),
    rules: json['rules'] as String,
    element_rules: json['element_rules'] == null
        ? null
        : Element.fromJson(json['element_rules'] as Map<String, dynamic>),
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
      'element_description': instance.element_description?.toJson(),
      'ordered': instance.ordered,
      'element_ordered': instance.element_ordered?.toJson(),
      'rules': instance.rules,
      'element_rules': instance.element_rules?.toJson(),
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
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    path: json['path'] as String,
    element_path: json['element_path'] == null
        ? null
        : Element.fromJson(json['element_path'] as Map<String, dynamic>),
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
      'element_type': instance.element_type?.toJson(),
      'path': instance.path,
      'element_path': instance.element_path?.toJson(),
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
    element_path: json['element_path'] == null
        ? null
        : Element.fromJson(json['element_path'] as Map<String, dynamic>),
    min: json['min'] as int,
    element_min: json['element_min'] == null
        ? null
        : Element.fromJson(json['element_min'] as Map<String, dynamic>),
    max: json['max'] as String,
    element_max: json['element_max'] == null
        ? null
        : Element.fromJson(json['element_max'] as Map<String, dynamic>),
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
      'element_path': instance.element_path?.toJson(),
      'min': instance.min,
      'element_min': instance.element_min?.toJson(),
      'max': instance.max,
      'element_max': instance.element_max?.toJson(),
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
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    aggregation:
        (json['aggregation'] as List)?.map((e) => e as String)?.toList(),
    element_aggregation: (json['element_aggregation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    element_versioning: json['element_versioning'] == null
        ? null
        : Element.fromJson(json['element_versioning'] as Map<String, dynamic>),
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
      'element_code': instance.element_code?.toJson(),
      'profile': instance.profile,
      'targetProfile': instance.targetProfile,
      'aggregation': instance.aggregation,
      'element_aggregation':
          instance.element_aggregation?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'element_versioning': instance.element_versioning?.toJson(),
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
    element_label: json['element_label'] == null
        ? null
        : Element.fromJson(json['element_label'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    element_valueBase64Binary: json['element_valueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['element_valueBase64Binary'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    element_valueBoolean: json['element_valueBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_valueBoolean'] as Map<String, dynamic>),
    valueCanonical: json['valueCanonical'] as String,
    element_valueCanonical: json['element_valueCanonical'] == null
        ? null
        : Element.fromJson(
            json['element_valueCanonical'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    element_valueCode: json['element_valueCode'] == null
        ? null
        : Element.fromJson(json['element_valueCode'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    element_valueDate: json['element_valueDate'] == null
        ? null
        : Element.fromJson(json['element_valueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    element_valueDateTime: json['element_valueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_valueDateTime'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    element_valueDecimal: json['element_valueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_valueDecimal'] as Map<String, dynamic>),
    valueId: json['valueId'] as String,
    element_valueId: json['element_valueId'] == null
        ? null
        : Element.fromJson(json['element_valueId'] as Map<String, dynamic>),
    valueInstant: json['valueInstant'] as String,
    element_valueInstant: json['element_valueInstant'] == null
        ? null
        : Element.fromJson(
            json['element_valueInstant'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    element_valueInteger: json['element_valueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_valueInteger'] as Map<String, dynamic>),
    valueMarkdown: json['valueMarkdown'] as String,
    element_valueMarkdown: json['element_valueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['element_valueMarkdown'] as Map<String, dynamic>),
    valueOid: json['valueOid'] as String,
    element_valueOid: json['element_valueOid'] == null
        ? null
        : Element.fromJson(json['element_valueOid'] as Map<String, dynamic>),
    valuePositiveInt: json['valuePositiveInt'] as int,
    element_valuePositiveInt: json['element_valuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['element_valuePositiveInt'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    element_valueString: json['element_valueString'] == null
        ? null
        : Element.fromJson(json['element_valueString'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    element_valueTime: json['element_valueTime'] == null
        ? null
        : Element.fromJson(json['element_valueTime'] as Map<String, dynamic>),
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    element_valueUnsignedInt: json['element_valueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['element_valueUnsignedInt'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    element_valueUri: json['element_valueUri'] == null
        ? null
        : Element.fromJson(json['element_valueUri'] as Map<String, dynamic>),
    valueUrl: json['valueUrl'] as String,
    element_valueUrl: json['element_valueUrl'] == null
        ? null
        : Element.fromJson(json['element_valueUrl'] as Map<String, dynamic>),
    valueUuid: json['valueUuid'] as String,
    element_valueUuid: json['element_valueUuid'] == null
        ? null
        : Element.fromJson(json['element_valueUuid'] as Map<String, dynamic>),
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
    valueDuration: json['valueDuration'],
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
      'element_label': instance.element_label?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'element_valueBase64Binary': instance.element_valueBase64Binary?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'element_valueBoolean': instance.element_valueBoolean?.toJson(),
      'valueCanonical': instance.valueCanonical,
      'element_valueCanonical': instance.element_valueCanonical?.toJson(),
      'valueCode': instance.valueCode,
      'element_valueCode': instance.element_valueCode?.toJson(),
      'valueDate': instance.valueDate,
      'element_valueDate': instance.element_valueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'element_valueDateTime': instance.element_valueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'element_valueDecimal': instance.element_valueDecimal?.toJson(),
      'valueId': instance.valueId,
      'element_valueId': instance.element_valueId?.toJson(),
      'valueInstant': instance.valueInstant,
      'element_valueInstant': instance.element_valueInstant?.toJson(),
      'valueInteger': instance.valueInteger,
      'element_valueInteger': instance.element_valueInteger?.toJson(),
      'valueMarkdown': instance.valueMarkdown,
      'element_valueMarkdown': instance.element_valueMarkdown?.toJson(),
      'valueOid': instance.valueOid,
      'element_valueOid': instance.element_valueOid?.toJson(),
      'valuePositiveInt': instance.valuePositiveInt,
      'element_valuePositiveInt': instance.element_valuePositiveInt?.toJson(),
      'valueString': instance.valueString,
      'element_valueString': instance.element_valueString?.toJson(),
      'valueTime': instance.valueTime,
      'element_valueTime': instance.element_valueTime?.toJson(),
      'valueUnsignedInt': instance.valueUnsignedInt,
      'element_valueUnsignedInt': instance.element_valueUnsignedInt?.toJson(),
      'valueUri': instance.valueUri,
      'element_valueUri': instance.element_valueUri?.toJson(),
      'valueUrl': instance.valueUrl,
      'element_valueUrl': instance.element_valueUrl?.toJson(),
      'valueUuid': instance.valueUuid,
      'element_valueUuid': instance.element_valueUuid?.toJson(),
      'valueAddress': instance.valueAddress?.toJson(),
      'valueAge': instance.valueAge?.toJson(),
      'valueAnnotation': instance.valueAnnotation?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueContactPoint': instance.valueContactPoint?.toJson(),
      'valueCount': instance.valueCount?.toJson(),
      'valueDistance': instance.valueDistance?.toJson(),
      'valueDuration': instance.valueDuration,
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
    element_key: json['element_key'] == null
        ? null
        : Element.fromJson(json['element_key'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    element_requirements: json['element_requirements'] == null
        ? null
        : Element.fromJson(
            json['element_requirements'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    element_severity: json['element_severity'] == null
        ? null
        : Element.fromJson(json['element_severity'] as Map<String, dynamic>),
    human: json['human'] as String,
    element_human: json['element_human'] == null
        ? null
        : Element.fromJson(json['element_human'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    element_expression: json['element_expression'] == null
        ? null
        : Element.fromJson(json['element_expression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    element_xpath: json['element_xpath'] == null
        ? null
        : Element.fromJson(json['element_xpath'] as Map<String, dynamic>),
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
      'element_key': instance.element_key?.toJson(),
      'requirements': instance.requirements,
      'element_requirements': instance.element_requirements?.toJson(),
      'severity': instance.severity,
      'element_severity': instance.element_severity?.toJson(),
      'human': instance.human,
      'element_human': instance.element_human?.toJson(),
      'expression': instance.expression,
      'element_expression': instance.element_expression?.toJson(),
      'xpath': instance.xpath,
      'element_xpath': instance.element_xpath?.toJson(),
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
    element_strength: json['element_strength'] == null
        ? null
        : Element.fromJson(json['element_strength'] as Map<String, dynamic>),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
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
      'element_strength': instance.element_strength?.toJson(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
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
    element_identity: json['element_identity'] == null
        ? null
        : Element.fromJson(json['element_identity'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    map: json['map'] as String,
    element_map: json['element_map'] == null
        ? null
        : Element.fromJson(json['element_map'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    element_comment: json['element_comment'] == null
        ? null
        : Element.fromJson(json['element_comment'] as Map<String, dynamic>),
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
      'element_identity': instance.element_identity?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'map': instance.map,
      'element_map': instance.element_map?.toJson(),
      'comment': instance.comment,
      'element_comment': instance.element_comment?.toJson(),
    };
