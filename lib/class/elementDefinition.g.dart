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
    sliceName: json['sliceName'] as String,
    sliceIsConstraining: json['sliceIsConstraining'] as bool,
    label: json['label'] as String,
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    slicing: json['slicing'] == null
        ? null
        : ElementDefinition_Slicing.fromJson(
            json['slicing'] as Map<String, dynamic>),
    short: json['short'] as String,
    definition: json['definition'] as String,
    comment: json['comment'] as String,
    requirements: json['requirements'] as String,
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    min: json['min'] as int,
    max: json['max'] as String,
    base: json['base'] == null
        ? null
        : ElementDefinition_Base.fromJson(json['base'] as Map<String, dynamic>),
    contentReference: json['contentReference'] as String,
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Type.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    defaultValueCode: json['defaultValueCode'] as String,
    defaultValueDate: json['defaultValueDate'] as String,
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    defaultValueDecimal: (json['defaultValueDecimal'] as num)?.toDouble(),
    defaultValueId: json['defaultValueId'] as String,
    defaultValueInstant: json['defaultValueInstant'] as String,
    defaultValueInteger: json['defaultValueInteger'] as int,
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    defaultValueOid: json['defaultValueOid'] as String,
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    defaultValueString: json['defaultValueString'] as String,
    defaultValueTime: json['defaultValueTime'] as String,
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    defaultValueUri: json['defaultValueUri'] as String,
    defaultValueUrl: json['defaultValueUrl'] as String,
    defaultValueUuid: json['defaultValueUuid'] as String,
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
    orderMeaning: json['orderMeaning'] as String,
    fixedBase64Binary: json['fixedBase64Binary'] as String,
    fixedBoolean: json['fixedBoolean'] as bool,
    fixedCanonical: json['fixedCanonical'] as String,
    fixedCode: json['fixedCode'] as String,
    fixedDate: json['fixedDate'] as String,
    fixedDateTime: json['fixedDateTime'] as String,
    fixedDecimal: (json['fixedDecimal'] as num)?.toDouble(),
    fixedId: json['fixedId'] as String,
    fixedInstant: json['fixedInstant'] as String,
    fixedInteger: json['fixedInteger'] as int,
    fixedMarkdown: json['fixedMarkdown'] as String,
    fixedOid: json['fixedOid'] as String,
    fixedPositiveInt: json['fixedPositiveInt'] as int,
    fixedString: json['fixedString'] as String,
    fixedTime: json['fixedTime'] as String,
    fixedUnsignedInt: json['fixedUnsignedInt'] as int,
    fixedUri: json['fixedUri'] as String,
    fixedUrl: json['fixedUrl'] as String,
    fixedUuid: json['fixedUuid'] as String,
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
    patternBoolean: json['patternBoolean'] as bool,
    patternCanonical: json['patternCanonical'] as String,
    patternCode: json['patternCode'] as String,
    patternDate: json['patternDate'] as String,
    patternDateTime: json['patternDateTime'] as String,
    patternDecimal: (json['patternDecimal'] as num)?.toDouble(),
    patternId: json['patternId'] as String,
    patternInstant: json['patternInstant'] as String,
    patternInteger: json['patternInteger'] as int,
    patternMarkdown: json['patternMarkdown'] as String,
    patternOid: json['patternOid'] as String,
    patternPositiveInt: json['patternPositiveInt'] as int,
    patternString: json['patternString'] as String,
    patternTime: json['patternTime'] as String,
    patternUnsignedInt: json['patternUnsignedInt'] as int,
    patternUri: json['patternUri'] as String,
    patternUrl: json['patternUrl'] as String,
    patternUuid: json['patternUuid'] as String,
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
    minValueDateTime: json['minValueDateTime'] as String,
    minValueInstant: json['minValueInstant'] as String,
    minValueTime: json['minValueTime'] as String,
    minValueDecimal: (json['minValueDecimal'] as num)?.toDouble(),
    minValueInteger: json['minValueInteger'] as int,
    minValuePositiveInt: json['minValuePositiveInt'] as int,
    minValueUnsignedInt: json['minValueUnsignedInt'] as int,
    minValueQuantity: json['minValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['minValueQuantity'] as Map<String, dynamic>),
    maxValueDate: json['maxValueDate'] as String,
    maxValueDateTime: json['maxValueDateTime'] as String,
    maxValueInstant: json['maxValueInstant'] as String,
    maxValueTime: json['maxValueTime'] as String,
    maxValueDecimal: (json['maxValueDecimal'] as num)?.toDouble(),
    maxValueInteger: json['maxValueInteger'] as int,
    maxValuePositiveInt: json['maxValuePositiveInt'] as int,
    maxValueUnsignedInt: json['maxValueUnsignedInt'] as int,
    maxValueQuantity: json['maxValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['maxValueQuantity'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    condition: (json['condition'] as List)?.map((e) => e as String)?.toList(),
    constraint: (json['constraint'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Constraint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mustSupport: json['mustSupport'] as bool,
    isModifier: json['isModifier'] as bool,
    isModifierReason: json['isModifierReason'] as String,
    isSummary: json['isSummary'] as bool,
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
      'sliceName': instance.sliceName,
      'sliceIsConstraining': instance.sliceIsConstraining,
      'label': instance.label,
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'slicing': instance.slicing?.toJson(),
      'short': instance.short,
      'definition': instance.definition,
      'comment': instance.comment,
      'requirements': instance.requirements,
      'alias': instance.alias,
      'min': instance.min,
      'max': instance.max,
      'base': instance.base?.toJson(),
      'contentReference': instance.contentReference,
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'defaultValueBoolean': instance.defaultValueBoolean,
      'defaultValueCanonical': instance.defaultValueCanonical,
      'defaultValueCode': instance.defaultValueCode,
      'defaultValueDate': instance.defaultValueDate,
      'defaultValueDateTime': instance.defaultValueDateTime,
      'defaultValueDecimal': instance.defaultValueDecimal,
      'defaultValueId': instance.defaultValueId,
      'defaultValueInstant': instance.defaultValueInstant,
      'defaultValueInteger': instance.defaultValueInteger,
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'defaultValueOid': instance.defaultValueOid,
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'defaultValueString': instance.defaultValueString,
      'defaultValueTime': instance.defaultValueTime,
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'defaultValueUri': instance.defaultValueUri,
      'defaultValueUrl': instance.defaultValueUrl,
      'defaultValueUuid': instance.defaultValueUuid,
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
      'orderMeaning': instance.orderMeaning,
      'fixedBase64Binary': instance.fixedBase64Binary,
      'fixedBoolean': instance.fixedBoolean,
      'fixedCanonical': instance.fixedCanonical,
      'fixedCode': instance.fixedCode,
      'fixedDate': instance.fixedDate,
      'fixedDateTime': instance.fixedDateTime,
      'fixedDecimal': instance.fixedDecimal,
      'fixedId': instance.fixedId,
      'fixedInstant': instance.fixedInstant,
      'fixedInteger': instance.fixedInteger,
      'fixedMarkdown': instance.fixedMarkdown,
      'fixedOid': instance.fixedOid,
      'fixedPositiveInt': instance.fixedPositiveInt,
      'fixedString': instance.fixedString,
      'fixedTime': instance.fixedTime,
      'fixedUnsignedInt': instance.fixedUnsignedInt,
      'fixedUri': instance.fixedUri,
      'fixedUrl': instance.fixedUrl,
      'fixedUuid': instance.fixedUuid,
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
      'patternBoolean': instance.patternBoolean,
      'patternCanonical': instance.patternCanonical,
      'patternCode': instance.patternCode,
      'patternDate': instance.patternDate,
      'patternDateTime': instance.patternDateTime,
      'patternDecimal': instance.patternDecimal,
      'patternId': instance.patternId,
      'patternInstant': instance.patternInstant,
      'patternInteger': instance.patternInteger,
      'patternMarkdown': instance.patternMarkdown,
      'patternOid': instance.patternOid,
      'patternPositiveInt': instance.patternPositiveInt,
      'patternString': instance.patternString,
      'patternTime': instance.patternTime,
      'patternUnsignedInt': instance.patternUnsignedInt,
      'patternUri': instance.patternUri,
      'patternUrl': instance.patternUrl,
      'patternUuid': instance.patternUuid,
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
      'minValueDateTime': instance.minValueDateTime,
      'minValueInstant': instance.minValueInstant,
      'minValueTime': instance.minValueTime,
      'minValueDecimal': instance.minValueDecimal,
      'minValueInteger': instance.minValueInteger,
      'minValuePositiveInt': instance.minValuePositiveInt,
      'minValueUnsignedInt': instance.minValueUnsignedInt,
      'minValueQuantity': instance.minValueQuantity?.toJson(),
      'maxValueDate': instance.maxValueDate,
      'maxValueDateTime': instance.maxValueDateTime,
      'maxValueInstant': instance.maxValueInstant,
      'maxValueTime': instance.maxValueTime,
      'maxValueDecimal': instance.maxValueDecimal,
      'maxValueInteger': instance.maxValueInteger,
      'maxValuePositiveInt': instance.maxValuePositiveInt,
      'maxValueUnsignedInt': instance.maxValueUnsignedInt,
      'maxValueQuantity': instance.maxValueQuantity?.toJson(),
      'maxLength': instance.maxLength,
      'condition': instance.condition,
      'constraint': instance.constraint?.map((e) => e?.toJson())?.toList(),
      'mustSupport': instance.mustSupport,
      'isModifier': instance.isModifier,
      'isModifierReason': instance.isModifierReason,
      'isSummary': instance.isSummary,
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
    ordered: json['ordered'] as bool,
    rules: json['rules'] as String,
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
      'ordered': instance.ordered,
      'rules': instance.rules,
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
    path: json['path'] as String,
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
      'path': instance.path,
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
    min: json['min'] as int,
    max: json['max'] as String,
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
      'min': instance.min,
      'max': instance.max,
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
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    versioning: json['versioning'] as String,
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
      'profile': instance.profile,
      'targetProfile': instance.targetProfile,
      'versioning': instance.versioning,
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
    valueBase64Binary: json['valueBase64Binary'] as String,
    valueBoolean: json['valueBoolean'] as bool,
    valueCanonical: json['valueCanonical'] as String,
    valueCode: json['valueCode'] as String,
    valueDate: json['valueDate'] as String,
    valueDateTime: json['valueDateTime'] as String,
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    valueId: json['valueId'] as String,
    valueInstant: json['valueInstant'] as String,
    valueInteger: json['valueInteger'] as int,
    valueMarkdown: json['valueMarkdown'] as String,
    valueOid: json['valueOid'] as String,
    valuePositiveInt: json['valuePositiveInt'] as int,
    valueString: json['valueString'] as String,
    valueTime: json['valueTime'] as String,
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    valueUri: json['valueUri'] as String,
    valueUrl: json['valueUrl'] as String,
    valueUuid: json['valueUuid'] as String,
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
      'valueBase64Binary': instance.valueBase64Binary,
      'valueBoolean': instance.valueBoolean,
      'valueCanonical': instance.valueCanonical,
      'valueCode': instance.valueCode,
      'valueDate': instance.valueDate,
      'valueDateTime': instance.valueDateTime,
      'valueDecimal': instance.valueDecimal,
      'valueId': instance.valueId,
      'valueInstant': instance.valueInstant,
      'valueInteger': instance.valueInteger,
      'valueMarkdown': instance.valueMarkdown,
      'valueOid': instance.valueOid,
      'valuePositiveInt': instance.valuePositiveInt,
      'valueString': instance.valueString,
      'valueTime': instance.valueTime,
      'valueUnsignedInt': instance.valueUnsignedInt,
      'valueUri': instance.valueUri,
      'valueUrl': instance.valueUrl,
      'valueUuid': instance.valueUuid,
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
    requirements: json['requirements'] as String,
    severity: json['severity'] as String,
    human: json['human'] as String,
    expression: json['expression'] as String,
    xpath: json['xpath'] as String,
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
      'requirements': instance.requirements,
      'severity': instance.severity,
      'human': instance.human,
      'expression': instance.expression,
      'xpath': instance.xpath,
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
    description: json['description'] as String,
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
      'description': instance.description,
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
    language: json['language'] as String,
    map: json['map'] as String,
    comment: json['comment'] as String,
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
      'language': instance.language,
      'map': instance.map,
      'comment': instance.comment,
    };
