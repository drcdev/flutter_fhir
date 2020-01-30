// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'molecularSequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MolecularSequence _$MolecularSequenceFromJson(Map<String, dynamic> json) {
  return MolecularSequence(
    resourceType: json['resourceType'] as String,
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
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
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    coordinateSystem: json['coordinateSystem'] as int,
    element_coordinateSystem: json['element_coordinateSystem'] == null
        ? null
        : Element.fromJson(
            json['element_coordinateSystem'] as Map<String, dynamic>),
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
    element_observedSeq: json['element_observedSeq'] == null
        ? null
        : Element.fromJson(json['element_observedSeq'] as Map<String, dynamic>),
    quality: (json['quality'] as List)
        ?.map((e) => e == null
            ? null
            : MolecularSequence_Quality.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    readCoverage: json['readCoverage'] as int,
    element_readCoverage: json['element_readCoverage'] == null
        ? null
        : Element.fromJson(
            json['element_readCoverage'] as Map<String, dynamic>),
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
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
      'coordinateSystem': instance.coordinateSystem,
      'element_coordinateSystem': instance.element_coordinateSystem?.toJson(),
      'patient': instance.patient?.toJson(),
      'specimen': instance.specimen?.toJson(),
      'device': instance.device?.toJson(),
      'performer': instance.performer?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'referenceSeq': instance.referenceSeq?.toJson(),
      'variant': instance.variant?.map((e) => e?.toJson())?.toList(),
      'observedSeq': instance.observedSeq,
      'element_observedSeq': instance.element_observedSeq?.toJson(),
      'quality': instance.quality?.map((e) => e?.toJson())?.toList(),
      'readCoverage': instance.readCoverage,
      'element_readCoverage': instance.element_readCoverage?.toJson(),
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
    element_genomeBuild: json['element_genomeBuild'] == null
        ? null
        : Element.fromJson(json['element_genomeBuild'] as Map<String, dynamic>),
    orientation: json['orientation'] as String,
    element_orientation: json['element_orientation'] == null
        ? null
        : Element.fromJson(json['element_orientation'] as Map<String, dynamic>),
    referenceSeqId: json['referenceSeqId'] == null
        ? null
        : CodeableConcept.fromJson(
            json['referenceSeqId'] as Map<String, dynamic>),
    referenceSeqPointer: json['referenceSeqPointer'] == null
        ? null
        : Reference.fromJson(
            json['referenceSeqPointer'] as Map<String, dynamic>),
    referenceSeqString: json['referenceSeqString'] as String,
    element_referenceSeqString: json['element_referenceSeqString'] == null
        ? null
        : Element.fromJson(
            json['element_referenceSeqString'] as Map<String, dynamic>),
    strand: json['strand'] as String,
    element_strand: json['element_strand'] == null
        ? null
        : Element.fromJson(json['element_strand'] as Map<String, dynamic>),
    windowStart: json['windowStart'] as int,
    element_windowStart: json['element_windowStart'] == null
        ? null
        : Element.fromJson(json['element_windowStart'] as Map<String, dynamic>),
    windowEnd: json['windowEnd'] as int,
    element_windowEnd: json['element_windowEnd'] == null
        ? null
        : Element.fromJson(json['element_windowEnd'] as Map<String, dynamic>),
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
      'element_genomeBuild': instance.element_genomeBuild?.toJson(),
      'orientation': instance.orientation,
      'element_orientation': instance.element_orientation?.toJson(),
      'referenceSeqId': instance.referenceSeqId?.toJson(),
      'referenceSeqPointer': instance.referenceSeqPointer?.toJson(),
      'referenceSeqString': instance.referenceSeqString,
      'element_referenceSeqString':
          instance.element_referenceSeqString?.toJson(),
      'strand': instance.strand,
      'element_strand': instance.element_strand?.toJson(),
      'windowStart': instance.windowStart,
      'element_windowStart': instance.element_windowStart?.toJson(),
      'windowEnd': instance.windowEnd,
      'element_windowEnd': instance.element_windowEnd?.toJson(),
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
    element_start: json['element_start'] == null
        ? null
        : Element.fromJson(json['element_start'] as Map<String, dynamic>),
    end: json['end'] as int,
    element_end: json['element_end'] == null
        ? null
        : Element.fromJson(json['element_end'] as Map<String, dynamic>),
    observedAllele: json['observedAllele'] as String,
    element_observedAllele: json['element_observedAllele'] == null
        ? null
        : Element.fromJson(
            json['element_observedAllele'] as Map<String, dynamic>),
    referenceAllele: json['referenceAllele'] as String,
    element_referenceAllele: json['element_referenceAllele'] == null
        ? null
        : Element.fromJson(
            json['element_referenceAllele'] as Map<String, dynamic>),
    cigar: json['cigar'] as String,
    element_cigar: json['element_cigar'] == null
        ? null
        : Element.fromJson(json['element_cigar'] as Map<String, dynamic>),
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
      'element_start': instance.element_start?.toJson(),
      'end': instance.end,
      'element_end': instance.element_end?.toJson(),
      'observedAllele': instance.observedAllele,
      'element_observedAllele': instance.element_observedAllele?.toJson(),
      'referenceAllele': instance.referenceAllele,
      'element_referenceAllele': instance.element_referenceAllele?.toJson(),
      'cigar': instance.cigar,
      'element_cigar': instance.element_cigar?.toJson(),
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
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    standardSequence: json['standardSequence'] == null
        ? null
        : CodeableConcept.fromJson(
            json['standardSequence'] as Map<String, dynamic>),
    start: json['start'] as int,
    element_start: json['element_start'] == null
        ? null
        : Element.fromJson(json['element_start'] as Map<String, dynamic>),
    end: json['end'] as int,
    element_end: json['element_end'] == null
        ? null
        : Element.fromJson(json['element_end'] as Map<String, dynamic>),
    score: json['score'] == null
        ? null
        : Quantity.fromJson(json['score'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
    truthTP: (json['truthTP'] as num)?.toDouble(),
    element_truthTP: json['element_truthTP'] == null
        ? null
        : Element.fromJson(json['element_truthTP'] as Map<String, dynamic>),
    queryTP: (json['queryTP'] as num)?.toDouble(),
    element_queryTP: json['element_queryTP'] == null
        ? null
        : Element.fromJson(json['element_queryTP'] as Map<String, dynamic>),
    truthFN: (json['truthFN'] as num)?.toDouble(),
    element_truthFN: json['element_truthFN'] == null
        ? null
        : Element.fromJson(json['element_truthFN'] as Map<String, dynamic>),
    queryFP: (json['queryFP'] as num)?.toDouble(),
    element_queryFP: json['element_queryFP'] == null
        ? null
        : Element.fromJson(json['element_queryFP'] as Map<String, dynamic>),
    gtFP: (json['gtFP'] as num)?.toDouble(),
    element_gtFP: json['element_gtFP'] == null
        ? null
        : Element.fromJson(json['element_gtFP'] as Map<String, dynamic>),
    precision: (json['precision'] as num)?.toDouble(),
    element_precision: json['element_precision'] == null
        ? null
        : Element.fromJson(json['element_precision'] as Map<String, dynamic>),
    recall: (json['recall'] as num)?.toDouble(),
    element_recall: json['element_recall'] == null
        ? null
        : Element.fromJson(json['element_recall'] as Map<String, dynamic>),
    fScore: (json['fScore'] as num)?.toDouble(),
    element_fScore: json['element_fScore'] == null
        ? null
        : Element.fromJson(json['element_fScore'] as Map<String, dynamic>),
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
      'element_type': instance.element_type?.toJson(),
      'standardSequence': instance.standardSequence?.toJson(),
      'start': instance.start,
      'element_start': instance.element_start?.toJson(),
      'end': instance.end,
      'element_end': instance.element_end?.toJson(),
      'score': instance.score?.toJson(),
      'method': instance.method?.toJson(),
      'truthTP': instance.truthTP,
      'element_truthTP': instance.element_truthTP?.toJson(),
      'queryTP': instance.queryTP,
      'element_queryTP': instance.element_queryTP?.toJson(),
      'truthFN': instance.truthFN,
      'element_truthFN': instance.element_truthFN?.toJson(),
      'queryFP': instance.queryFP,
      'element_queryFP': instance.element_queryFP?.toJson(),
      'gtFP': instance.gtFP,
      'element_gtFP': instance.element_gtFP?.toJson(),
      'precision': instance.precision,
      'element_precision': instance.element_precision?.toJson(),
      'recall': instance.recall,
      'element_recall': instance.element_recall?.toJson(),
      'fScore': instance.fScore,
      'element_fScore': instance.element_fScore?.toJson(),
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
    element_score: (json['element_score'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numTP: (json['numTP'] as List)?.map((e) => e as int)?.toList(),
    element_numTP: (json['element_numTP'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numFP: (json['numFP'] as List)?.map((e) => e as int)?.toList(),
    element_numFP: (json['element_numFP'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numFN: (json['numFN'] as List)?.map((e) => e as int)?.toList(),
    element_numFN: (json['element_numFN'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    precision: (json['precision'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    element_precision: (json['element_precision'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sensitivity: (json['sensitivity'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    element_sensitivity: (json['element_sensitivity'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fMeasure: (json['fMeasure'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    element_fMeasure: (json['element_fMeasure'] as List)
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
      'element_score':
          instance.element_score?.map((e) => e?.toJson())?.toList(),
      'numTP': instance.numTP,
      'element_numTP':
          instance.element_numTP?.map((e) => e?.toJson())?.toList(),
      'numFP': instance.numFP,
      'element_numFP':
          instance.element_numFP?.map((e) => e?.toJson())?.toList(),
      'numFN': instance.numFN,
      'element_numFN':
          instance.element_numFN?.map((e) => e?.toJson())?.toList(),
      'precision': instance.precision,
      'element_precision':
          instance.element_precision?.map((e) => e?.toJson())?.toList(),
      'sensitivity': instance.sensitivity,
      'element_sensitivity':
          instance.element_sensitivity?.map((e) => e?.toJson())?.toList(),
      'fMeasure': instance.fMeasure,
      'element_fMeasure':
          instance.element_fMeasure?.map((e) => e?.toJson())?.toList(),
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
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    datasetId: json['datasetId'] as String,
    element_datasetId: json['element_datasetId'] == null
        ? null
        : Element.fromJson(json['element_datasetId'] as Map<String, dynamic>),
    variantsetId: json['variantsetId'] as String,
    element_variantsetId: json['element_variantsetId'] == null
        ? null
        : Element.fromJson(
            json['element_variantsetId'] as Map<String, dynamic>),
    readsetId: json['readsetId'] as String,
    element_readsetId: json['element_readsetId'] == null
        ? null
        : Element.fromJson(json['element_readsetId'] as Map<String, dynamic>),
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
      'element_type': instance.element_type?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'datasetId': instance.datasetId,
      'element_datasetId': instance.element_datasetId?.toJson(),
      'variantsetId': instance.variantsetId,
      'element_variantsetId': instance.element_variantsetId?.toJson(),
      'readsetId': instance.readsetId,
      'element_readsetId': instance.element_readsetId?.toJson(),
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
    element_exact: json['element_exact'] == null
        ? null
        : Element.fromJson(json['element_exact'] as Map<String, dynamic>),
    length: json['length'] as int,
    element_length: json['element_length'] == null
        ? null
        : Element.fromJson(json['element_length'] as Map<String, dynamic>),
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
      'element_exact': instance.element_exact?.toJson(),
      'length': instance.length,
      'element_length': instance.element_length?.toJson(),
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
    element_start: json['element_start'] == null
        ? null
        : Element.fromJson(json['element_start'] as Map<String, dynamic>),
    end: json['end'] as int,
    element_end: json['element_end'] == null
        ? null
        : Element.fromJson(json['element_end'] as Map<String, dynamic>),
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
      'element_start': instance.element_start?.toJson(),
      'end': instance.end,
      'element_end': instance.element_end?.toJson(),
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
    element_start: json['element_start'] == null
        ? null
        : Element.fromJson(json['element_start'] as Map<String, dynamic>),
    end: json['end'] as int,
    element_end: json['element_end'] == null
        ? null
        : Element.fromJson(json['element_end'] as Map<String, dynamic>),
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
      'element_start': instance.element_start?.toJson(),
      'end': instance.end,
      'element_end': instance.element_end?.toJson(),
    };
