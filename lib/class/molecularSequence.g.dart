// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'molecularSequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MolecularSequence _$MolecularSequenceFromJson(Map<String, dynamic> json) {
  return MolecularSequence(
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
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    coordinateSystem: json['coordinateSystem'] as int,
    elementCoordinateSystem: json['elementCoordinateSystem'] == null
        ? null
        : Element.fromJson(
            json['elementCoordinateSystem'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    specimen: json['specimen'] == null
        ? null
        : Reference.fromJson(json['specimen'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Reference.fromJson(json['device'] as Map<String, dynamic>),
    performer: json['performer'] == null
        ? null
        : Reference.fromJson(json['performer'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    referenceSeq: json['referenceSeq'] == null
        ? null
        : MolecularSequence_ReferenceSeq.fromJson(
            json['referenceSeq'] as Map<String, dynamic>),
    variant: (json['variant'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Variant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    observedSeq: json['observedSeq'] as String,
    elementObservedSeq: json['elementObservedSeq'] == null
        ? null
        : Element.fromJson(json['elementObservedSeq'] as Map<String, dynamic>),
    quality: (json['quality'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Quality.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    readCoverage: json['readCoverage'] as int,
    elementReadCoverage: json['elementReadCoverage'] == null
        ? null
        : Element.fromJson(json['elementReadCoverage'] as Map<String, dynamic>),
    repository: (json['repository'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Repository.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pointer: (json['pointer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    structureVariant: (json['structureVariant'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_StructureVariant.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MolecularSequenceToJson(MolecularSequence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'coordinateSystem': instance.coordinateSystem,
      'elementCoordinateSystem': instance.elementCoordinateSystem?.toJson(),
      'patient': instance.patient?.toJson(),
      'specimen': instance.specimen?.toJson(),
      'device': instance.device?.toJson(),
      'performer': instance.performer?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'referenceSeq': instance.referenceSeq?.toJson(),
      'variant': instance.variant?.map((e) => e?.toJson())?.toList(),
      'observedSeq': instance.observedSeq,
      'elementObservedSeq': instance.elementObservedSeq?.toJson(),
      'quality': instance.quality?.map((e) => e?.toJson())?.toList(),
      'readCoverage': instance.readCoverage,
      'elementReadCoverage': instance.elementReadCoverage?.toJson(),
      'repository': instance.repository?.map((e) => e?.toJson())?.toList(),
      'pointer': instance.pointer?.map((e) => e?.toJson())?.toList(),
      'structureVariant':
          instance.structureVariant?.map((e) => e?.toJson())?.toList(),
    };

MolecularSequence_ReferenceSeq _$MolecularSequence_ReferenceSeqFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_ReferenceSeq(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    chromosome: json['chromosome'] == null
        ? null
        : CodeableConcept.fromJson(json['chromosome'] as Map<String, dynamic>),
    genomeBuild: json['genomeBuild'] as String,
    elementGenomeBuild: json['elementGenomeBuild'] == null
        ? null
        : Element.fromJson(json['elementGenomeBuild'] as Map<String, dynamic>),
    orientation: json['orientation'] as String,
    elementOrientation: json['elementOrientation'] == null
        ? null
        : Element.fromJson(json['elementOrientation'] as Map<String, dynamic>),
    referenceSeqId: json['referenceSeqId'] == null
        ? null
        : CodeableConcept.fromJson(
            json['referenceSeqId'] as Map<String, dynamic>),
    referenceSeqPointer: json['referenceSeqPointer'] == null
        ? null
        : Reference.fromJson(
            json['referenceSeqPointer'] as Map<String, dynamic>),
    referenceSeqString: json['referenceSeqString'] as String,
    elementReferenceSeqString: json['elementReferenceSeqString'] == null
        ? null
        : Element.fromJson(
            json['elementReferenceSeqString'] as Map<String, dynamic>),
    strand: json['strand'] as String,
    elementStrand: json['elementStrand'] == null
        ? null
        : Element.fromJson(json['elementStrand'] as Map<String, dynamic>),
    windowStart: json['windowStart'] as int,
    elementWindowStart: json['elementWindowStart'] == null
        ? null
        : Element.fromJson(json['elementWindowStart'] as Map<String, dynamic>),
    windowEnd: json['windowEnd'] as int,
    elementWindowEnd: json['elementWindowEnd'] == null
        ? null
        : Element.fromJson(json['elementWindowEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_ReferenceSeqToJson(
        MolecularSequence_ReferenceSeq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'chromosome': instance.chromosome?.toJson(),
      'genomeBuild': instance.genomeBuild,
      'elementGenomeBuild': instance.elementGenomeBuild?.toJson(),
      'orientation': instance.orientation,
      'elementOrientation': instance.elementOrientation?.toJson(),
      'referenceSeqId': instance.referenceSeqId?.toJson(),
      'referenceSeqPointer': instance.referenceSeqPointer?.toJson(),
      'referenceSeqString': instance.referenceSeqString,
      'elementReferenceSeqString': instance.elementReferenceSeqString?.toJson(),
      'strand': instance.strand,
      'elementStrand': instance.elementStrand?.toJson(),
      'windowStart': instance.windowStart,
      'elementWindowStart': instance.elementWindowStart?.toJson(),
      'windowEnd': instance.windowEnd,
      'elementWindowEnd': instance.elementWindowEnd?.toJson(),
    };

MolecularSequence_Variant _$MolecularSequence_VariantFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Variant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    observedAllele: json['observedAllele'] as String,
    elementObservedAllele: json['elementObservedAllele'] == null
        ? null
        : Element.fromJson(
            json['elementObservedAllele'] as Map<String, dynamic>),
    referenceAllele: json['referenceAllele'] as String,
    elementReferenceAllele: json['elementReferenceAllele'] == null
        ? null
        : Element.fromJson(
            json['elementReferenceAllele'] as Map<String, dynamic>),
    cigar: json['cigar'] as String,
    elementCigar: json['elementCigar'] == null
        ? null
        : Element.fromJson(json['elementCigar'] as Map<String, dynamic>),
    variantPointer: json['variantPointer'] == null
        ? null
        : Reference.fromJson(json['variantPointer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_VariantToJson(
        MolecularSequence_Variant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
      'observedAllele': instance.observedAllele,
      'elementObservedAllele': instance.elementObservedAllele?.toJson(),
      'referenceAllele': instance.referenceAllele,
      'elementReferenceAllele': instance.elementReferenceAllele?.toJson(),
      'cigar': instance.cigar,
      'elementCigar': instance.elementCigar?.toJson(),
      'variantPointer': instance.variantPointer?.toJson(),
    };

MolecularSequence_Quality _$MolecularSequence_QualityFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Quality(
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
    standardSequence: json['standardSequence'] == null
        ? null
        : CodeableConcept.fromJson(
            json['standardSequence'] as Map<String, dynamic>),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
    score: json['score'] == null
        ? null
        : Quantity.fromJson(json['score'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    truthTP: (json['truthTP'] as num)?.toDouble(),
    elementTruthTP: json['elementTruthTP'] == null
        ? null
        : Element.fromJson(json['elementTruthTP'] as Map<String, dynamic>),
    queryTP: (json['queryTP'] as num)?.toDouble(),
    elementQueryTP: json['elementQueryTP'] == null
        ? null
        : Element.fromJson(json['elementQueryTP'] as Map<String, dynamic>),
    truthFN: (json['truthFN'] as num)?.toDouble(),
    elementTruthFN: json['elementTruthFN'] == null
        ? null
        : Element.fromJson(json['elementTruthFN'] as Map<String, dynamic>),
    queryFP: (json['queryFP'] as num)?.toDouble(),
    elementQueryFP: json['elementQueryFP'] == null
        ? null
        : Element.fromJson(json['elementQueryFP'] as Map<String, dynamic>),
    gtFP: (json['gtFP'] as num)?.toDouble(),
    elementGtFP: json['elementGtFP'] == null
        ? null
        : Element.fromJson(json['elementGtFP'] as Map<String, dynamic>),
    precision: (json['precision'] as num)?.toDouble(),
    elementPrecision: json['elementPrecision'] == null
        ? null
        : Element.fromJson(json['elementPrecision'] as Map<String, dynamic>),
    recall: (json['recall'] as num)?.toDouble(),
    elementRecall: json['elementRecall'] == null
        ? null
        : Element.fromJson(json['elementRecall'] as Map<String, dynamic>),
    fScore: (json['fScore'] as num)?.toDouble(),
    elementFScore: json['elementFScore'] == null
        ? null
        : Element.fromJson(json['elementFScore'] as Map<String, dynamic>),
    roc: json['roc'] == null
        ? null
        : MolecularSequence_Roc.fromJson(json['roc'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_QualityToJson(
        MolecularSequence_Quality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'standardSequence': instance.standardSequence?.toJson(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
      'score': instance.score?.toJson(),
      'method': instance.method?.toJson(),
      'truthTP': instance.truthTP,
      'elementTruthTP': instance.elementTruthTP?.toJson(),
      'queryTP': instance.queryTP,
      'elementQueryTP': instance.elementQueryTP?.toJson(),
      'truthFN': instance.truthFN,
      'elementTruthFN': instance.elementTruthFN?.toJson(),
      'queryFP': instance.queryFP,
      'elementQueryFP': instance.elementQueryFP?.toJson(),
      'gtFP': instance.gtFP,
      'elementGtFP': instance.elementGtFP?.toJson(),
      'precision': instance.precision,
      'elementPrecision': instance.elementPrecision?.toJson(),
      'recall': instance.recall,
      'elementRecall': instance.elementRecall?.toJson(),
      'fScore': instance.fScore,
      'elementFScore': instance.elementFScore?.toJson(),
      'roc': instance.roc?.toJson(),
    };

MolecularSequence_Roc _$MolecularSequence_RocFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Roc(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    score: (json['score'] as List)?.map((e) => e as int)?.toList(),
    elementScore: (json['elementScore'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numTP: (json['numTP'] as List)?.map((e) => e as int)?.toList(),
    elementNumTP: (json['elementNumTP'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numFP: (json['numFP'] as List)?.map((e) => e as int)?.toList(),
    elementNumFP: (json['elementNumFP'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numFN: (json['numFN'] as List)?.map((e) => e as int)?.toList(),
    elementNumFN: (json['elementNumFN'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    precision: (json['precision'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    elementPrecision: (json['elementPrecision'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sensitivity: (json['sensitivity'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    elementSensitivity: (json['elementSensitivity'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fMeasure: (json['fMeasure'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    elementFMeasure: (json['elementFMeasure'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MolecularSequence_RocToJson(
        MolecularSequence_Roc instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'score': instance.score,
      'elementScore': instance.elementScore?.map((e) => e?.toJson())?.toList(),
      'numTP': instance.numTP,
      'elementNumTP': instance.elementNumTP?.map((e) => e?.toJson())?.toList(),
      'numFP': instance.numFP,
      'elementNumFP': instance.elementNumFP?.map((e) => e?.toJson())?.toList(),
      'numFN': instance.numFN,
      'elementNumFN': instance.elementNumFN?.map((e) => e?.toJson())?.toList(),
      'precision': instance.precision,
      'elementPrecision':
          instance.elementPrecision?.map((e) => e?.toJson())?.toList(),
      'sensitivity': instance.sensitivity,
      'elementSensitivity':
          instance.elementSensitivity?.map((e) => e?.toJson())?.toList(),
      'fMeasure': instance.fMeasure,
      'elementFMeasure':
          instance.elementFMeasure?.map((e) => e?.toJson())?.toList(),
    };

MolecularSequence_Repository _$MolecularSequence_RepositoryFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Repository(
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
    url: json['url'] as String,
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    datasetId: json['datasetId'] as String,
    elementDatasetId: json['elementDatasetId'] == null
        ? null
        : Element.fromJson(json['elementDatasetId'] as Map<String, dynamic>),
    variantsetId: json['variantsetId'] as String,
    elementVariantsetId: json['elementVariantsetId'] == null
        ? null
        : Element.fromJson(json['elementVariantsetId'] as Map<String, dynamic>),
    readsetId: json['readsetId'] as String,
    elementReadsetId: json['elementReadsetId'] == null
        ? null
        : Element.fromJson(json['elementReadsetId'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_RepositoryToJson(
        MolecularSequence_Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'url': instance.url,
      'elementUrl': instance.elementUrl?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'datasetId': instance.datasetId,
      'elementDatasetId': instance.elementDatasetId?.toJson(),
      'variantsetId': instance.variantsetId,
      'elementVariantsetId': instance.elementVariantsetId?.toJson(),
      'readsetId': instance.readsetId,
      'elementReadsetId': instance.elementReadsetId?.toJson(),
    };

MolecularSequence_StructureVariant _$MolecularSequence_StructureVariantFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_StructureVariant(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    variantType: json['variantType'] == null
        ? null
        : CodeableConcept.fromJson(json['variantType'] as Map<String, dynamic>),
    exact: json['exact'] as bool,
    elementExact: json['elementExact'] == null
        ? null
        : Element.fromJson(json['elementExact'] as Map<String, dynamic>),
    length: json['length'] as int,
    elementLength: json['elementLength'] == null
        ? null
        : Element.fromJson(json['elementLength'] as Map<String, dynamic>),
    outer: json['outer'] == null
        ? null
        : MolecularSequence_Outer.fromJson(
            json['outer'] as Map<String, dynamic>),
    inner: json['inner'] == null
        ? null
        : MolecularSequence_Inner.fromJson(
            json['inner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_StructureVariantToJson(
        MolecularSequence_StructureVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'variantType': instance.variantType?.toJson(),
      'exact': instance.exact,
      'elementExact': instance.elementExact?.toJson(),
      'length': instance.length,
      'elementLength': instance.elementLength?.toJson(),
      'outer': instance.outer?.toJson(),
      'inner': instance.inner?.toJson(),
    };

MolecularSequence_Outer _$MolecularSequence_OuterFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Outer(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_OuterToJson(
        MolecularSequence_Outer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
    };

MolecularSequence_Inner _$MolecularSequence_InnerFromJson(
    Map<String, dynamic> json) {
  return MolecularSequence_Inner(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    start: json['start'] as int,
    elementStart: json['elementStart'] == null
        ? null
        : Element.fromJson(json['elementStart'] as Map<String, dynamic>),
    end: json['end'] as int,
    elementEnd: json['elementEnd'] == null
        ? null
        : Element.fromJson(json['elementEnd'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MolecularSequence_InnerToJson(
        MolecularSequence_Inner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'start': instance.start,
      'elementStart': instance.elementStart?.toJson(),
      'end': instance.end,
      'elementEnd': instance.elementEnd?.toJson(),
    };
