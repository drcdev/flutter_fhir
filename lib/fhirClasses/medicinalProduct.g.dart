// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinalProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProduct _$MedicinalProductFromJson(Map<String, dynamic> json) {
  return MedicinalProduct(
    (json['name'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_Name.fromJson(e as Map<String, dynamic>))
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    domain: json['domain'] == null
        ? null
        : Coding.fromJson(json['domain'] as Map<String, dynamic>),
    combinedPharmaceuticalDoseForm:
        json['combinedPharmaceuticalDoseForm'] == null
            ? null
            : CodeableConcept.fromJson(
                json['combinedPharmaceuticalDoseForm'] as Map<String, dynamic>),
    legalStatusOfSupply: json['legalStatusOfSupply'] == null
        ? null
        : CodeableConcept.fromJson(
            json['legalStatusOfSupply'] as Map<String, dynamic>),
    additionalMonitoringIndicator: json['additionalMonitoringIndicator'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additionalMonitoringIndicator'] as Map<String, dynamic>),
    specialMeasures:
        (json['specialMeasures'] as List)?.map((e) => e as String)?.toList(),
    elementSpecialMeasures: (json['elementSpecialMeasures'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    paediatricUseIndicator: json['paediatricUseIndicator'] == null
        ? null
        : CodeableConcept.fromJson(
            json['paediatricUseIndicator'] as Map<String, dynamic>),
    productClassification: (json['productClassification'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    marketingStatus: (json['marketingStatus'] as List)
        ?.map((e) => e == null
            ? null
            : MarketingStatus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pharmaceuticalProduct: (json['pharmaceuticalProduct'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    packagedMedicinalProduct: (json['packagedMedicinalProduct'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attachedDocument: (json['attachedDocument'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    masterFile: (json['masterFile'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    clinicalTrial: (json['clinicalTrial'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    crossReference: (json['crossReference'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    manufacturingBusinessOperation:
        (json['manufacturingBusinessOperation'] as List)
            ?.map((e) => e == null
                ? null
                : MedicinalProduct_ManufacturingBusinessOperation.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
    specialDesignation: (json['specialDesignation'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_SpecialDesignation.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductToJson(MedicinalProduct instance) =>
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
      'type': instance.type?.toJson(),
      'domain': instance.domain?.toJson(),
      'combinedPharmaceuticalDoseForm':
          instance.combinedPharmaceuticalDoseForm?.toJson(),
      'legalStatusOfSupply': instance.legalStatusOfSupply?.toJson(),
      'additionalMonitoringIndicator':
          instance.additionalMonitoringIndicator?.toJson(),
      'specialMeasures': instance.specialMeasures,
      'elementSpecialMeasures':
          instance.elementSpecialMeasures?.map((e) => e?.toJson())?.toList(),
      'paediatricUseIndicator': instance.paediatricUseIndicator?.toJson(),
      'productClassification':
          instance.productClassification?.map((e) => e?.toJson())?.toList(),
      'marketingStatus':
          instance.marketingStatus?.map((e) => e?.toJson())?.toList(),
      'pharmaceuticalProduct':
          instance.pharmaceuticalProduct?.map((e) => e?.toJson())?.toList(),
      'packagedMedicinalProduct':
          instance.packagedMedicinalProduct?.map((e) => e?.toJson())?.toList(),
      'attachedDocument':
          instance.attachedDocument?.map((e) => e?.toJson())?.toList(),
      'masterFile': instance.masterFile?.map((e) => e?.toJson())?.toList(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'clinicalTrial':
          instance.clinicalTrial?.map((e) => e?.toJson())?.toList(),
      'name': instance.name?.map((e) => e?.toJson())?.toList(),
      'crossReference':
          instance.crossReference?.map((e) => e?.toJson())?.toList(),
      'manufacturingBusinessOperation': instance.manufacturingBusinessOperation
          ?.map((e) => e?.toJson())
          ?.toList(),
      'specialDesignation':
          instance.specialDesignation?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProduct_Name _$MedicinalProduct_NameFromJson(
    Map<String, dynamic> json) {
  return MedicinalProduct_Name(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productName: json['productName'] as String,
    elementProductName: json['elementProductName'] == null
        ? null
        : Element.fromJson(json['elementProductName'] as Map<String, dynamic>),
    namePart: (json['namePart'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_NamePart.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countryLanguage: (json['countryLanguage'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProduct_CountryLanguage.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProduct_NameToJson(
        MedicinalProduct_Name instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productName': instance.productName,
      'elementProductName': instance.elementProductName?.toJson(),
      'namePart': instance.namePart?.map((e) => e?.toJson())?.toList(),
      'countryLanguage':
          instance.countryLanguage?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProduct_NamePart _$MedicinalProduct_NamePartFromJson(
    Map<String, dynamic> json) {
  return MedicinalProduct_NamePart(
    json['type'] == null
        ? null
        : Coding.fromJson(json['type'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    part: json['part'] as String,
    elementPart: json['elementPart'] == null
        ? null
        : Element.fromJson(json['elementPart'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_NamePartToJson(
        MedicinalProduct_NamePart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'part': instance.part,
      'elementPart': instance.elementPart?.toJson(),
      'type': instance.type?.toJson(),
    };

MedicinalProduct_CountryLanguage _$MedicinalProduct_CountryLanguageFromJson(
    Map<String, dynamic> json) {
  return MedicinalProduct_CountryLanguage(
    json['country'] == null
        ? null
        : CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
    json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: json['jurisdiction'] == null
        ? null
        : CodeableConcept.fromJson(
            json['jurisdiction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_CountryLanguageToJson(
        MedicinalProduct_CountryLanguage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'country': instance.country?.toJson(),
      'jurisdiction': instance.jurisdiction?.toJson(),
      'language': instance.language?.toJson(),
    };

MedicinalProduct_ManufacturingBusinessOperation
    _$MedicinalProduct_ManufacturingBusinessOperationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProduct_ManufacturingBusinessOperation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    operationType: json['operationType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['operationType'] as Map<String, dynamic>),
    authorisationReferenceNumber: json['authorisationReferenceNumber'] == null
        ? null
        : Identifier.fromJson(
            json['authorisationReferenceNumber'] as Map<String, dynamic>),
    effectiveDate: json['effectiveDate'] == null
        ? null
        : DateTime.parse(json['effectiveDate'] as String),
    elementEffectiveDate: json['elementEffectiveDate'] == null
        ? null
        : Element.fromJson(
            json['elementEffectiveDate'] as Map<String, dynamic>),
    confidentialityIndicator: json['confidentialityIndicator'] == null
        ? null
        : CodeableConcept.fromJson(
            json['confidentialityIndicator'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    regulator: json['regulator'] == null
        ? null
        : Reference.fromJson(json['regulator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_ManufacturingBusinessOperationToJson(
        MedicinalProduct_ManufacturingBusinessOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'operationType': instance.operationType?.toJson(),
      'authorisationReferenceNumber':
          instance.authorisationReferenceNumber?.toJson(),
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'elementEffectiveDate': instance.elementEffectiveDate?.toJson(),
      'confidentialityIndicator': instance.confidentialityIndicator?.toJson(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
      'regulator': instance.regulator?.toJson(),
    };

MedicinalProduct_SpecialDesignation
    _$MedicinalProduct_SpecialDesignationFromJson(Map<String, dynamic> json) {
  return MedicinalProduct_SpecialDesignation(
    id: json['id'] as String,
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
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    intendedUse: json['intendedUse'] == null
        ? null
        : CodeableConcept.fromJson(json['intendedUse'] as Map<String, dynamic>),
    indicationCodeableConcept: json['indicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['indicationCodeableConcept'] as Map<String, dynamic>),
    indicationReference: json['indicationReference'] == null
        ? null
        : Reference.fromJson(
            json['indicationReference'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    species: json['species'] == null
        ? null
        : CodeableConcept.fromJson(json['species'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProduct_SpecialDesignationToJson(
        MedicinalProduct_SpecialDesignation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'intendedUse': instance.intendedUse?.toJson(),
      'indicationCodeableConcept': instance.indicationCodeableConcept?.toJson(),
      'indicationReference': instance.indicationReference?.toJson(),
      'status': instance.status?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'species': instance.species?.toJson(),
    };