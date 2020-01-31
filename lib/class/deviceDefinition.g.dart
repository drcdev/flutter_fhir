// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deviceDefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceDefinition _$DeviceDefinitionFromJson(Map<String, dynamic> json) {
  return DeviceDefinition(
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
    udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_UdiDeviceIdentifier.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    manufacturerString: json['manufacturerString'] as String,
    element_manufacturerString: json['element_manufacturerString'] == null
        ? null
        : Element.fromJson(
            json['element_manufacturerString'] as Map<String, dynamic>),
    manufacturerReference: json['manufacturerReference'] == null
        ? null
        : Reference.fromJson(
            json['manufacturerReference'] as Map<String, dynamic>),
    deviceName: (json['deviceName'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_DeviceName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modelNumber: json['modelNumber'] as String,
    element_modelNumber: json['element_modelNumber'] == null
        ? null
        : Element.fromJson(json['element_modelNumber'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    specialization: (json['specialization'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Specialization.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    version: (json['version'] as List)?.map((e) => e as String)?.toList(),
    element_version: (json['element_version'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    safety: (json['safety'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shelfLifeStorage: (json['shelfLifeStorage'] as List)
        ?.map((e) => e == null
            ? null
            : ProductShelfLife.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    physicalCharacteristics: json['physicalCharacteristics'] == null
        ? null
        : ProdCharacteristic.fromJson(
            json['physicalCharacteristics'] as Map<String, dynamic>),
    languageCode: (json['languageCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    capability: (json['capability'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Capability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Property.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    onlineInformation: json['onlineInformation'] as String,
    element_onlineInformation: json['element_onlineInformation'] == null
        ? null
        : Element.fromJson(
            json['element_onlineInformation'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    parentDevice: json['parentDevice'] == null
        ? null
        : Reference.fromJson(json['parentDevice'] as Map<String, dynamic>),
    material: (json['material'] as List)
        ?.map((e) => e == null
            ? null
            : DeviceDefinition_Material.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceDefinitionToJson(DeviceDefinition instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'udiDeviceIdentifier':
          instance.udiDeviceIdentifier?.map((e) => e?.toJson())?.toList(),
      'manufacturerString': instance.manufacturerString,
      'element_manufacturerString':
          instance.element_manufacturerString?.toJson(),
      'manufacturerReference': instance.manufacturerReference?.toJson(),
      'deviceName': instance.deviceName?.map((e) => e?.toJson())?.toList(),
      'modelNumber': instance.modelNumber,
      'element_modelNumber': instance.element_modelNumber?.toJson(),
      'type': instance.type?.toJson(),
      'specialization':
          instance.specialization?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'element_version':
          instance.element_version?.map((e) => e?.toJson())?.toList(),
      'safety': instance.safety?.map((e) => e?.toJson())?.toList(),
      'shelfLifeStorage':
          instance.shelfLifeStorage?.map((e) => e?.toJson())?.toList(),
      'physicalCharacteristics': instance.physicalCharacteristics?.toJson(),
      'languageCode': instance.languageCode?.map((e) => e?.toJson())?.toList(),
      'capability': instance.capability?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'owner': instance.owner?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'onlineInformation': instance.onlineInformation,
      'element_onlineInformation': instance.element_onlineInformation?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'parentDevice': instance.parentDevice?.toJson(),
      'material': instance.material?.map((e) => e?.toJson())?.toList(),
    };

DeviceDefinition_UdiDeviceIdentifier
    _$DeviceDefinition_UdiDeviceIdentifierFromJson(Map<String, dynamic> json) {
  return DeviceDefinition_UdiDeviceIdentifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    deviceIdentifier: json['deviceIdentifier'] as String,
    element_deviceIdentifier: json['element_deviceIdentifier'] == null
        ? null
        : Element.fromJson(
            json['element_deviceIdentifier'] as Map<String, dynamic>),
    issuer: json['issuer'] as String,
    element_issuer: json['element_issuer'] == null
        ? null
        : Element.fromJson(json['element_issuer'] as Map<String, dynamic>),
    jurisdiction: json['jurisdiction'] as String,
    element_jurisdiction: json['element_jurisdiction'] == null
        ? null
        : Element.fromJson(
            json['element_jurisdiction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceDefinition_UdiDeviceIdentifierToJson(
        DeviceDefinition_UdiDeviceIdentifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'deviceIdentifier': instance.deviceIdentifier,
      'element_deviceIdentifier': instance.element_deviceIdentifier?.toJson(),
      'issuer': instance.issuer,
      'element_issuer': instance.element_issuer?.toJson(),
      'jurisdiction': instance.jurisdiction,
      'element_jurisdiction': instance.element_jurisdiction?.toJson(),
    };

DeviceDefinition_DeviceName _$DeviceDefinition_DeviceNameFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_DeviceName(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    type: json['type'] as String,
    element_type: json['element_type'] == null
        ? null
        : Element.fromJson(json['element_type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceDefinition_DeviceNameToJson(
        DeviceDefinition_DeviceName instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'type': instance.type,
      'element_type': instance.element_type?.toJson(),
    };

DeviceDefinition_Specialization _$DeviceDefinition_SpecializationFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Specialization(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    systemType: json['systemType'] as String,
    element_systemType: json['element_systemType'] == null
        ? null
        : Element.fromJson(json['element_systemType'] as Map<String, dynamic>),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceDefinition_SpecializationToJson(
        DeviceDefinition_Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'systemType': instance.systemType,
      'element_systemType': instance.element_systemType?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
    };

DeviceDefinition_Capability _$DeviceDefinition_CapabilityFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Capability(
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
    description: (json['description'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceDefinition_CapabilityToJson(
        DeviceDefinition_Capability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'description': instance.description?.map((e) => e?.toJson())?.toList(),
    };

DeviceDefinition_Property _$DeviceDefinition_PropertyFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Property(
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
    valueQuantity: (json['valueQuantity'] as List)
        ?.map((e) =>
            e == null ? null : Quantity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueCode: (json['valueCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeviceDefinition_PropertyToJson(
        DeviceDefinition_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'valueQuantity':
          instance.valueQuantity?.map((e) => e?.toJson())?.toList(),
      'valueCode': instance.valueCode?.map((e) => e?.toJson())?.toList(),
    };

DeviceDefinition_Material _$DeviceDefinition_MaterialFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Material(
    json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    alternate: json['alternate'] as bool,
    element_alternate: json['element_alternate'] == null
        ? null
        : Element.fromJson(json['element_alternate'] as Map<String, dynamic>),
    allergenicIndicator: json['allergenicIndicator'] as bool,
    element_allergenicIndicator: json['element_allergenicIndicator'] == null
        ? null
        : Element.fromJson(
            json['element_allergenicIndicator'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceDefinition_MaterialToJson(
        DeviceDefinition_Material instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'alternate': instance.alternate,
      'element_alternate': instance.element_alternate?.toJson(),
      'allergenicIndicator': instance.allergenicIndicator,
      'element_allergenicIndicator':
          instance.element_allergenicIndicator?.toJson(),
    };
