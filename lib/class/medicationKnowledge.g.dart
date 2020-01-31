// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicationKnowledge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationKnowledge _$MedicationKnowledgeFromJson(Map<String, dynamic> json) {
  return MedicationKnowledge(
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
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] == null
        ? null
        : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
    doseForm: json['doseForm'] == null
        ? null
        : CodeableConcept.fromJson(json['doseForm'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
    synonym: (json['synonym'] as List)?.map((e) => e as String)?.toList(),
    element_synonym: (json['element_synonym'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    relatedMedicationKnowledge: (json['relatedMedicationKnowledge'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_RelatedMedicationKnowledge.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    associatedMedication: (json['associatedMedication'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productType: (json['productType'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    monograph: (json['monograph'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Monograph.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ingredient: (json['ingredient'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Ingredient.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    preparationInstruction: json['preparationInstruction'] as String,
    element_preparationInstruction:
        json['element_preparationInstruction'] == null
            ? null
            : Element.fromJson(
                json['element_preparationInstruction'] as Map<String, dynamic>),
    intendedRoute: (json['intendedRoute'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cost: (json['cost'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Cost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    monitoringProgram: (json['monitoringProgram'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_MonitoringProgram.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    administrationGuidelines: (json['administrationGuidelines'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_AdministrationGuidelines.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    medicineClassification: (json['medicineClassification'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_MedicineClassification.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    packaging: json['packaging'] == null
        ? null
        : MedicationKnowledge_Packaging.fromJson(
            json['packaging'] as Map<String, dynamic>),
    drugCharacteristic: (json['drugCharacteristic'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_DrugCharacteristic.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    contraindication: (json['contraindication'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    regulatory: (json['regulatory'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Regulatory.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    kinetics: (json['kinetics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Kinetics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledgeToJson(
        MedicationKnowledge instance) =>
    <String, dynamic>{
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
      'code': instance.code?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'manufacturer': instance.manufacturer?.toJson(),
      'doseForm': instance.doseForm?.toJson(),
      'amount': instance.amount?.toJson(),
      'synonym': instance.synonym,
      'element_synonym':
          instance.element_synonym?.map((e) => e?.toJson())?.toList(),
      'relatedMedicationKnowledge': instance.relatedMedicationKnowledge
          ?.map((e) => e?.toJson())
          ?.toList(),
      'associatedMedication':
          instance.associatedMedication?.map((e) => e?.toJson())?.toList(),
      'productType': instance.productType?.map((e) => e?.toJson())?.toList(),
      'monograph': instance.monograph?.map((e) => e?.toJson())?.toList(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'preparationInstruction': instance.preparationInstruction,
      'element_preparationInstruction':
          instance.element_preparationInstruction?.toJson(),
      'intendedRoute':
          instance.intendedRoute?.map((e) => e?.toJson())?.toList(),
      'cost': instance.cost?.map((e) => e?.toJson())?.toList(),
      'monitoringProgram':
          instance.monitoringProgram?.map((e) => e?.toJson())?.toList(),
      'administrationGuidelines':
          instance.administrationGuidelines?.map((e) => e?.toJson())?.toList(),
      'medicineClassification':
          instance.medicineClassification?.map((e) => e?.toJson())?.toList(),
      'packaging': instance.packaging?.toJson(),
      'drugCharacteristic':
          instance.drugCharacteristic?.map((e) => e?.toJson())?.toList(),
      'contraindication':
          instance.contraindication?.map((e) => e?.toJson())?.toList(),
      'regulatory': instance.regulatory?.map((e) => e?.toJson())?.toList(),
      'kinetics': instance.kinetics?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_RelatedMedicationKnowledge
    _$MedicationKnowledge_RelatedMedicationKnowledgeFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_RelatedMedicationKnowledge(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    (json['reference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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

Map<String, dynamic> _$MedicationKnowledge_RelatedMedicationKnowledgeToJson(
        MedicationKnowledge_RelatedMedicationKnowledge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'reference': instance.reference?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_Monograph _$MedicationKnowledge_MonographFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Monograph(
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
    source: json['source'] == null
        ? null
        : Reference.fromJson(json['source'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MonographToJson(
        MedicationKnowledge_Monograph instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'source': instance.source?.toJson(),
    };

MedicationKnowledge_Ingredient _$MedicationKnowledge_IngredientFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Ingredient(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemCodeableConcept: json['itemCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['itemCodeableConcept'] as Map<String, dynamic>),
    itemReference: json['itemReference'] == null
        ? null
        : Reference.fromJson(json['itemReference'] as Map<String, dynamic>),
    isActive: json['isActive'] as bool,
    element_isActive: json['element_isActive'] == null
        ? null
        : Element.fromJson(json['element_isActive'] as Map<String, dynamic>),
    strength: json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_IngredientToJson(
        MedicationKnowledge_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemCodeableConcept': instance.itemCodeableConcept?.toJson(),
      'itemReference': instance.itemReference?.toJson(),
      'isActive': instance.isActive,
      'element_isActive': instance.element_isActive?.toJson(),
      'strength': instance.strength?.toJson(),
    };

MedicationKnowledge_Cost _$MedicationKnowledge_CostFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Cost(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    json['cost'] == null
        ? null
        : Money.fromJson(json['cost'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String,
    element_source: json['element_source'] == null
        ? null
        : Element.fromJson(json['element_source'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_CostToJson(
        MedicationKnowledge_Cost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'source': instance.source,
      'element_source': instance.element_source?.toJson(),
      'cost': instance.cost?.toJson(),
    };

MedicationKnowledge_MonitoringProgram
    _$MedicationKnowledge_MonitoringProgramFromJson(Map<String, dynamic> json) {
  return MedicationKnowledge_MonitoringProgram(
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
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MonitoringProgramToJson(
        MedicationKnowledge_MonitoringProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
    };

MedicationKnowledge_AdministrationGuidelines
    _$MedicationKnowledge_AdministrationGuidelinesFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_AdministrationGuidelines(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dosage: (json['dosage'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    indicationCodeableConcept: json['indicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['indicationCodeableConcept'] as Map<String, dynamic>),
    indicationReference: json['indicationReference'] == null
        ? null
        : Reference.fromJson(
            json['indicationReference'] as Map<String, dynamic>),
    patientCharacteristics: (json['patientCharacteristics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_PatientCharacteristics.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_AdministrationGuidelinesToJson(
        MedicationKnowledge_AdministrationGuidelines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
      'indicationCodeableConcept': instance.indicationCodeableConcept?.toJson(),
      'indicationReference': instance.indicationReference?.toJson(),
      'patientCharacteristics':
          instance.patientCharacteristics?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_Dosage _$MedicationKnowledge_DosageFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Dosage(
    json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    (json['dosage'] as List)
        ?.map((e) =>
            e == null ? null : Dosage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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

Map<String, dynamic> _$MedicationKnowledge_DosageToJson(
        MedicationKnowledge_Dosage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'dosage': instance.dosage?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_PatientCharacteristics
    _$MedicationKnowledge_PatientCharacteristicsFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_PatientCharacteristics(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    characteristicCodeableConcept: json['characteristicCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['characteristicCodeableConcept'] as Map<String, dynamic>),
    characteristicQuantity: json['characteristicQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['characteristicQuantity'] as Map<String, dynamic>),
    value: (json['value'] as List)?.map((e) => e as String)?.toList(),
    element_value: (json['element_value'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_PatientCharacteristicsToJson(
        MedicationKnowledge_PatientCharacteristics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'characteristicCodeableConcept':
          instance.characteristicCodeableConcept?.toJson(),
      'characteristicQuantity': instance.characteristicQuantity?.toJson(),
      'value': instance.value,
      'element_value':
          instance.element_value?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_MedicineClassification
    _$MedicationKnowledge_MedicineClassificationFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_MedicineClassification(
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
    classification: (json['classification'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicationKnowledge_MedicineClassificationToJson(
        MedicationKnowledge_MedicineClassification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'classification':
          instance.classification?.map((e) => e?.toJson())?.toList(),
    };

MedicationKnowledge_Packaging _$MedicationKnowledge_PackagingFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Packaging(
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
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_PackagingToJson(
        MedicationKnowledge_Packaging instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'quantity': instance.quantity?.toJson(),
    };

MedicationKnowledge_DrugCharacteristic
    _$MedicationKnowledge_DrugCharacteristicFromJson(
        Map<String, dynamic> json) {
  return MedicationKnowledge_DrugCharacteristic(
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
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    element_valueString: json['element_valueString'] == null
        ? null
        : Element.fromJson(json['element_valueString'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    element_valueBase64Binary: json['element_valueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['element_valueBase64Binary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_DrugCharacteristicToJson(
        MedicationKnowledge_DrugCharacteristic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueString': instance.valueString,
      'element_valueString': instance.element_valueString?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'element_valueBase64Binary': instance.element_valueBase64Binary?.toJson(),
    };

MedicationKnowledge_Regulatory _$MedicationKnowledge_RegulatoryFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Regulatory(
    json['regulatoryAuthority'] == null
        ? null
        : Reference.fromJson(
            json['regulatoryAuthority'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substitution: (json['substitution'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Substitution.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    schedule: (json['schedule'] as List)
        ?.map((e) => e == null
            ? null
            : MedicationKnowledge_Schedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    maxDispense: json['maxDispense'] == null
        ? null
        : MedicationKnowledge_MaxDispense.fromJson(
            json['maxDispense'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_RegulatoryToJson(
        MedicationKnowledge_Regulatory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'regulatoryAuthority': instance.regulatoryAuthority?.toJson(),
      'substitution': instance.substitution?.map((e) => e?.toJson())?.toList(),
      'schedule': instance.schedule?.map((e) => e?.toJson())?.toList(),
      'maxDispense': instance.maxDispense?.toJson(),
    };

MedicationKnowledge_Substitution _$MedicationKnowledge_SubstitutionFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Substitution(
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
    allowed: json['allowed'] as bool,
    element_allowed: json['element_allowed'] == null
        ? null
        : Element.fromJson(json['element_allowed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicationKnowledge_SubstitutionToJson(
        MedicationKnowledge_Substitution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'allowed': instance.allowed,
      'element_allowed': instance.element_allowed?.toJson(),
    };

MedicationKnowledge_Schedule _$MedicationKnowledge_ScheduleFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Schedule(
    json['schedule'] == null
        ? null
        : CodeableConcept.fromJson(json['schedule'] as Map<String, dynamic>),
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

Map<String, dynamic> _$MedicationKnowledge_ScheduleToJson(
        MedicationKnowledge_Schedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'schedule': instance.schedule?.toJson(),
    };

MedicationKnowledge_MaxDispense _$MedicationKnowledge_MaxDispenseFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_MaxDispense(
    json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    period: json['period'],
  );
}

Map<String, dynamic> _$MedicationKnowledge_MaxDispenseToJson(
        MedicationKnowledge_MaxDispense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'period': instance.period,
    };

MedicationKnowledge_Kinetics _$MedicationKnowledge_KineticsFromJson(
    Map<String, dynamic> json) {
  return MedicationKnowledge_Kinetics(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    areaUnderCurve: (json['areaUnderCurve'] as List)
        ?.map((e) =>
            e == null ? null : Quantity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lethalDose50: (json['lethalDose50'] as List)
        ?.map((e) =>
            e == null ? null : Quantity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    halfLifePeriod: json['halfLifePeriod'],
  );
}

Map<String, dynamic> _$MedicationKnowledge_KineticsToJson(
        MedicationKnowledge_Kinetics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'areaUnderCurve':
          instance.areaUnderCurve?.map((e) => e?.toJson())?.toList(),
      'lethalDose50': instance.lethalDose50?.map((e) => e?.toJson())?.toList(),
      'halfLifePeriod': instance.halfLifePeriod,
    };
