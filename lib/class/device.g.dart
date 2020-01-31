// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device(
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
    definition: json['definition'] == null
        ? null
        : Reference.fromJson(json['definition'] as Map<String, dynamic>),
    udiCarrier: (json['udiCarrier'] as List)
        ?.map((e) => e == null
            ? null
            : Device_UdiCarrier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    statusReason: (json['statusReason'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    distinctIdentifier: json['distinctIdentifier'] as String,
    element_distinctIdentifier: json['element_distinctIdentifier'] == null
        ? null
        : Element.fromJson(
            json['element_distinctIdentifier'] as Map<String, dynamic>),
    manufacturer: json['manufacturer'] as String,
    element_manufacturer: json['element_manufacturer'] == null
        ? null
        : Element.fromJson(
            json['element_manufacturer'] as Map<String, dynamic>),
    manufactureDate: json['manufactureDate'] == null
        ? null
        : DateTime.parse(json['manufactureDate'] as String),
    element_manufactureDate: json['element_manufactureDate'] == null
        ? null
        : Element.fromJson(
            json['element_manufactureDate'] as Map<String, dynamic>),
    expirationDate: json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate'] as String),
    element_expirationDate: json['element_expirationDate'] == null
        ? null
        : Element.fromJson(
            json['element_expirationDate'] as Map<String, dynamic>),
    lotNumber: json['lotNumber'] as String,
    element_lotNumber: json['element_lotNumber'] == null
        ? null
        : Element.fromJson(json['element_lotNumber'] as Map<String, dynamic>),
    serialNumber: json['serialNumber'] as String,
    element_serialNumber: json['element_serialNumber'] == null
        ? null
        : Element.fromJson(
            json['element_serialNumber'] as Map<String, dynamic>),
    deviceName: (json['deviceName'] as List)
        ?.map((e) => e == null
            ? null
            : Device_DeviceName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modelNumber: json['modelNumber'] as String,
    element_modelNumber: json['element_modelNumber'] == null
        ? null
        : Element.fromJson(json['element_modelNumber'] as Map<String, dynamic>),
    partNumber: json['partNumber'] as String,
    element_partNumber: json['element_partNumber'] == null
        ? null
        : Element.fromJson(json['element_partNumber'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    specialization: (json['specialization'] as List)
        ?.map((e) => e == null
            ? null
            : Device_Specialization.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: (json['version'] as List)
        ?.map((e) => e == null
            ? null
            : Device_Version.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: (json['property'] as List)
        ?.map((e) => e == null
            ? null
            : Device_Property.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : ContactPoint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    safety: (json['safety'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    parent: json['parent'] == null
        ? null
        : Reference.fromJson(json['parent'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
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
      'definition': instance.definition?.toJson(),
      'udiCarrier': instance.udiCarrier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'statusReason': instance.statusReason?.map((e) => e?.toJson())?.toList(),
      'distinctIdentifier': instance.distinctIdentifier,
      'element_distinctIdentifier':
          instance.element_distinctIdentifier?.toJson(),
      'manufacturer': instance.manufacturer,
      'element_manufacturer': instance.element_manufacturer?.toJson(),
      'manufactureDate': instance.manufactureDate?.toIso8601String(),
      'element_manufactureDate': instance.element_manufactureDate?.toJson(),
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'element_expirationDate': instance.element_expirationDate?.toJson(),
      'lotNumber': instance.lotNumber,
      'element_lotNumber': instance.element_lotNumber?.toJson(),
      'serialNumber': instance.serialNumber,
      'element_serialNumber': instance.element_serialNumber?.toJson(),
      'deviceName': instance.deviceName?.map((e) => e?.toJson())?.toList(),
      'modelNumber': instance.modelNumber,
      'element_modelNumber': instance.element_modelNumber?.toJson(),
      'partNumber': instance.partNumber,
      'element_partNumber': instance.element_partNumber?.toJson(),
      'type': instance.type?.toJson(),
      'specialization':
          instance.specialization?.map((e) => e?.toJson())?.toList(),
      'version': instance.version?.map((e) => e?.toJson())?.toList(),
      'property': instance.property?.map((e) => e?.toJson())?.toList(),
      'patient': instance.patient?.toJson(),
      'owner': instance.owner?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'safety': instance.safety?.map((e) => e?.toJson())?.toList(),
      'parent': instance.parent?.toJson(),
    };

Device_UdiCarrier _$Device_UdiCarrierFromJson(Map<String, dynamic> json) {
  return Device_UdiCarrier(
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
    carrierAIDC: json['carrierAIDC'] as String,
    element_carrierAIDC: json['element_carrierAIDC'] == null
        ? null
        : Element.fromJson(json['element_carrierAIDC'] as Map<String, dynamic>),
    carrierHRF: json['carrierHRF'] as String,
    element_carrierHRF: json['element_carrierHRF'] == null
        ? null
        : Element.fromJson(json['element_carrierHRF'] as Map<String, dynamic>),
    entryType: json['entryType'] as String,
    element_entryType: json['element_entryType'] == null
        ? null
        : Element.fromJson(json['element_entryType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_UdiCarrierToJson(Device_UdiCarrier instance) =>
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
      'carrierAIDC': instance.carrierAIDC,
      'element_carrierAIDC': instance.element_carrierAIDC?.toJson(),
      'carrierHRF': instance.carrierHRF,
      'element_carrierHRF': instance.element_carrierHRF?.toJson(),
      'entryType': instance.entryType,
      'element_entryType': instance.element_entryType?.toJson(),
    };

Device_DeviceName _$Device_DeviceNameFromJson(Map<String, dynamic> json) {
  return Device_DeviceName(
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

Map<String, dynamic> _$Device_DeviceNameToJson(Device_DeviceName instance) =>
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

Device_Specialization _$Device_SpecializationFromJson(
    Map<String, dynamic> json) {
  return Device_Specialization(
    json['systemType'] == null
        ? null
        : CodeableConcept.fromJson(json['systemType'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_SpecializationToJson(
        Device_Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'systemType': instance.systemType?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
    };

Device_Version _$Device_VersionFromJson(Map<String, dynamic> json) {
  return Device_Version(
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
    component: json['component'] == null
        ? null
        : Identifier.fromJson(json['component'] as Map<String, dynamic>),
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Device_VersionToJson(Device_Version instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'component': instance.component?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
    };

Device_Property _$Device_PropertyFromJson(Map<String, dynamic> json) {
  return Device_Property(
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

Map<String, dynamic> _$Device_PropertyToJson(Device_Property instance) =>
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
