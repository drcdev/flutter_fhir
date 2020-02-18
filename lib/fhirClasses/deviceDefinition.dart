import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/prodCharacteristic.dart';
import 'package:flutter_fhir/fhirClasses/productShelfLife.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class DeviceDefinition {
  static Future<DeviceDefinition> newInstance({
    String resourceType,
    String id,
    Meta meta,
    String implicitRules,
    Element elementImplicitRules,
    String language,
    Element elementLanguage,
    Narrative text,
    List<dynamic> contained,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<Identifier> identifier,
    List<DeviceDefinition_UdiDeviceIdentifier> udiDeviceIdentifier,
    String manufacturerString,
    Element elementManufacturerString,
    Reference manufacturerReference,
    List<DeviceDefinition_DeviceName> deviceName,
    String modelNumber,
    Element elementModelNumber,
    CodeableConcept type,
    List<DeviceDefinition_Specialization> specialization,
    List<String> version,
    List<Element> elementVersion,
    List<CodeableConcept> safety,
    List<ProductShelfLife> shelfLifeStorage,
    ProdCharacteristic physicalCharacteristics,
    List<CodeableConcept> languageCode,
    List<DeviceDefinition_Capability> capability,
    List<DeviceDefinition_Property> property,
    Reference owner,
    List<ContactPoint> contact,
    String url,
    Element elementUrl,
    String onlineInformation,
    Element elementOnlineInformation,
    List<Annotation> note,
    Quantity quantity,
    Reference parentDevice,
    List<DeviceDefinition_Material> material,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition newDeviceDefinition = new DeviceDefinition(
      resourceType: 'DeviceDefinition',
      id: id ?? await fhirDb.newResourceId('DeviceDefinition'),
      meta: meta ?? await Meta.newInstance(),
      implicitRules: implicitRules,
      elementImplicitRules: elementImplicitRules,
      language: language,
      elementLanguage: elementLanguage,
      text: text,
      contained: contained,
      extension: extension,
      modifierExtension: modifierExtension,
      identifier: identifier,
      udiDeviceIdentifier: udiDeviceIdentifier,
      manufacturerString: manufacturerString,
      elementManufacturerString: elementManufacturerString,
      manufacturerReference: manufacturerReference,
      deviceName: deviceName,
      modelNumber: modelNumber,
      elementModelNumber: elementModelNumber,
      type: type,
      specialization: specialization,
      version: version,
      elementVersion: elementVersion,
      safety: safety,
      shelfLifeStorage: shelfLifeStorage,
      physicalCharacteristics: physicalCharacteristics,
      languageCode: languageCode,
      capability: capability,
      property: property,
      owner: owner,
      contact: contact,
      url: url,
      elementUrl: elementUrl,
      onlineInformation: onlineInformation,
      elementOnlineInformation: elementOnlineInformation,
      note: note,
      quantity: quantity,
      parentDevice: parentDevice,
      material: material,
    );
    newDeviceDefinition.meta.createdAt = DateTime.now();
    newDeviceDefinition.meta.lastUpdated = newDeviceDefinition.meta.createdAt;
    int saved = await fhirDb.saveResource(newDeviceDefinition);
    return newDeviceDefinition;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'DeviceDefinition';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  List<DeviceDefinition_UdiDeviceIdentifier> udiDeviceIdentifier;
  String manufacturerString;
  Element elementManufacturerString;
  Reference manufacturerReference;
  List<DeviceDefinition_DeviceName> deviceName;
  String modelNumber;
  Element elementModelNumber;
  CodeableConcept type;
  List<DeviceDefinition_Specialization> specialization;
  List<String> version;
  List<Element> elementVersion;
  List<CodeableConcept> safety;
  List<ProductShelfLife> shelfLifeStorage;
  ProdCharacteristic physicalCharacteristics;
  List<CodeableConcept> languageCode;
  List<DeviceDefinition_Capability> capability;
  List<DeviceDefinition_Property> property;
  Reference owner;
  List<ContactPoint> contact;
  String url;
  Element elementUrl;
  String onlineInformation;
  Element elementOnlineInformation;
  List<Annotation> note;
  Quantity quantity;
  Reference parentDevice;
  List<DeviceDefinition_Material> material;

  DeviceDefinition({
    @required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.elementManufacturerString,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,
    this.elementModelNumber,
    this.type,
    this.specialization,
    this.version,
    this.elementVersion,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,
    this.elementUrl,
    this.onlineInformation,
    this.elementOnlineInformation,
    this.note,
    this.quantity,
    this.parentDevice,
    this.material,
  });

  factory DeviceDefinition.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_UdiDeviceIdentifier {
  static Future<DeviceDefinition_UdiDeviceIdentifier> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String deviceIdentifier,
    Element elementDeviceIdentifier,
    String issuer,
    Element elementIssuer,
    String jurisdiction,
    Element elementJurisdiction,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition_UdiDeviceIdentifier
        newDeviceDefinition_UdiDeviceIdentifier =
        new DeviceDefinition_UdiDeviceIdentifier(
      id: id ??
          await fhirDb.newResourceId('DeviceDefinition_UdiDeviceIdentifier'),
      extension: extension,
      modifierExtension: modifierExtension,
      deviceIdentifier: deviceIdentifier,
      elementDeviceIdentifier: elementDeviceIdentifier,
      issuer: issuer,
      elementIssuer: elementIssuer,
      jurisdiction: jurisdiction,
      elementJurisdiction: elementJurisdiction,
    );
    return newDeviceDefinition_UdiDeviceIdentifier;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String deviceIdentifier;
  Element elementDeviceIdentifier;
  String issuer;
  Element elementIssuer;
  String jurisdiction;
  Element elementJurisdiction;

  DeviceDefinition_UdiDeviceIdentifier({
    this.id,
    this.extension,
    this.modifierExtension,
    this.deviceIdentifier,
    this.elementDeviceIdentifier,
    this.issuer,
    this.elementIssuer,
    this.jurisdiction,
    this.elementJurisdiction,
  });

  factory DeviceDefinition_UdiDeviceIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);
  Map<String, dynamic> toJson() =>
      _$DeviceDefinition_UdiDeviceIdentifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_DeviceName {
  static Future<DeviceDefinition_DeviceName> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String name,
    Element elementName,
    String type,
    Element elementType,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition_DeviceName newDeviceDefinition_DeviceName =
        new DeviceDefinition_DeviceName(
      id: id ?? await fhirDb.newResourceId('DeviceDefinition_DeviceName'),
      extension: extension,
      modifierExtension: modifierExtension,
      name: name,
      elementName: elementName,
      type: type,
      elementType: elementType,
    );
    return newDeviceDefinition_DeviceName;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String name;
  Element elementName;
  String type;
  Element elementType;

  DeviceDefinition_DeviceName({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.elementName,
    this.type,
    this.elementType,
  });

  factory DeviceDefinition_DeviceName.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_DeviceNameFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_DeviceNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Specialization {
  static Future<DeviceDefinition_Specialization> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String systemType,
    Element elementSystemType,
    String version,
    Element elementVersion,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition_Specialization newDeviceDefinition_Specialization =
        new DeviceDefinition_Specialization(
      id: id ?? await fhirDb.newResourceId('DeviceDefinition_Specialization'),
      extension: extension,
      modifierExtension: modifierExtension,
      systemType: systemType,
      elementSystemType: elementSystemType,
      version: version,
      elementVersion: elementVersion,
    );
    return newDeviceDefinition_Specialization;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String systemType;
  Element elementSystemType;
  String version;
  Element elementVersion;

  DeviceDefinition_Specialization({
    this.id,
    this.extension,
    this.modifierExtension,
    this.systemType,
    this.elementSystemType,
    this.version,
    this.elementVersion,
  });

  factory DeviceDefinition_Specialization.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_SpecializationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$DeviceDefinition_SpecializationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Capability {
  static Future<DeviceDefinition_Capability> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<CodeableConcept> description,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition_Capability newDeviceDefinition_Capability =
        new DeviceDefinition_Capability(
      id: id ?? await fhirDb.newResourceId('DeviceDefinition_Capability'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      description: description,
    );
    return newDeviceDefinition_Capability;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<CodeableConcept> description;

  DeviceDefinition_Capability({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.description,
  });

  factory DeviceDefinition_Capability.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_CapabilityFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_CapabilityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Property {
  static Future<DeviceDefinition_Property> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    List<Quantity> valueQuantity,
    List<CodeableConcept> valueCode,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition_Property newDeviceDefinition_Property =
        new DeviceDefinition_Property(
      id: id ?? await fhirDb.newResourceId('DeviceDefinition_Property'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      valueQuantity: valueQuantity,
      valueCode: valueCode,
    );
    return newDeviceDefinition_Property;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Quantity> valueQuantity;
  List<CodeableConcept> valueCode;

  DeviceDefinition_Property({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  factory DeviceDefinition_Property.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeviceDefinition_Material {
  static Future<DeviceDefinition_Material> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept substance,
    bool alternate,
    Element elementAlternate,
    bool allergenicIndicator,
    Element elementAllergenicIndicator,
  }) async {
    var fhirDb = new DatabaseHelper();
    DeviceDefinition_Material newDeviceDefinition_Material =
        new DeviceDefinition_Material(
      id: id ?? await fhirDb.newResourceId('DeviceDefinition_Material'),
      extension: extension,
      modifierExtension: modifierExtension,
      substance: substance,
      alternate: alternate,
      elementAlternate: elementAlternate,
      allergenicIndicator: allergenicIndicator,
      elementAllergenicIndicator: elementAllergenicIndicator,
    );
    return newDeviceDefinition_Material;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept substance;
  bool alternate;
  Element elementAlternate;
  bool allergenicIndicator;
  Element elementAllergenicIndicator;

  DeviceDefinition_Material({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.substance,
    this.alternate,
    this.elementAlternate,
    this.allergenicIndicator,
    this.elementAllergenicIndicator,
  });

  factory DeviceDefinition_Material.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_MaterialFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDefinition_MaterialToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceDefinition _$DeviceDefinitionFromJson(Map<String, dynamic> json) {
  return DeviceDefinition(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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
    elementManufacturerString: json['elementManufacturerString'] == null
        ? null
        : Element.fromJson(
            json['elementManufacturerString'] as Map<String, dynamic>),
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
    elementModelNumber: json['elementModelNumber'] == null
        ? null
        : Element.fromJson(json['elementModelNumber'] as Map<String, dynamic>),
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
    elementVersion: (json['elementVersion'] as List)
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
    elementUrl: json['elementUrl'] == null
        ? null
        : Element.fromJson(json['elementUrl'] as Map<String, dynamic>),
    onlineInformation: json['onlineInformation'] as String,
    elementOnlineInformation: json['elementOnlineInformation'] == null
        ? null
        : Element.fromJson(
            json['elementOnlineInformation'] as Map<String, dynamic>),
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
      'resourceType': instance.resourceType,
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'udiDeviceIdentifier':
          instance.udiDeviceIdentifier?.map((e) => e?.toJson())?.toList(),
      'manufacturerString': instance.manufacturerString,
      'elementManufacturerString': instance.elementManufacturerString?.toJson(),
      'manufacturerReference': instance.manufacturerReference?.toJson(),
      'deviceName': instance.deviceName?.map((e) => e?.toJson())?.toList(),
      'modelNumber': instance.modelNumber,
      'elementModelNumber': instance.elementModelNumber?.toJson(),
      'type': instance.type?.toJson(),
      'specialization':
          instance.specialization?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'elementVersion':
          instance.elementVersion?.map((e) => e?.toJson())?.toList(),
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
      'elementUrl': instance.elementUrl?.toJson(),
      'onlineInformation': instance.onlineInformation,
      'elementOnlineInformation': instance.elementOnlineInformation?.toJson(),
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
    elementDeviceIdentifier: json['elementDeviceIdentifier'] == null
        ? null
        : Element.fromJson(
            json['elementDeviceIdentifier'] as Map<String, dynamic>),
    issuer: json['issuer'] as String,
    elementIssuer: json['elementIssuer'] == null
        ? null
        : Element.fromJson(json['elementIssuer'] as Map<String, dynamic>),
    jurisdiction: json['jurisdiction'] as String,
    elementJurisdiction: json['elementJurisdiction'] == null
        ? null
        : Element.fromJson(json['elementJurisdiction'] as Map<String, dynamic>),
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
      'elementDeviceIdentifier': instance.elementDeviceIdentifier?.toJson(),
      'issuer': instance.issuer,
      'elementIssuer': instance.elementIssuer?.toJson(),
      'jurisdiction': instance.jurisdiction,
      'elementJurisdiction': instance.elementJurisdiction?.toJson(),
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
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
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
      'elementName': instance.elementName?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
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
    elementSystemType: json['elementSystemType'] == null
        ? null
        : Element.fromJson(json['elementSystemType'] as Map<String, dynamic>),
    version: json['version'] as String,
    elementVersion: json['elementVersion'] == null
        ? null
        : Element.fromJson(json['elementVersion'] as Map<String, dynamic>),
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
      'elementSystemType': instance.elementSystemType?.toJson(),
      'version': instance.version,
      'elementVersion': instance.elementVersion?.toJson(),
    };

DeviceDefinition_Capability _$DeviceDefinition_CapabilityFromJson(
    Map<String, dynamic> json) {
  return DeviceDefinition_Capability(
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    alternate: json['alternate'] as bool,
    elementAlternate: json['elementAlternate'] == null
        ? null
        : Element.fromJson(json['elementAlternate'] as Map<String, dynamic>),
    allergenicIndicator: json['allergenicIndicator'] as bool,
    elementAllergenicIndicator: json['elementAllergenicIndicator'] == null
        ? null
        : Element.fromJson(
            json['elementAllergenicIndicator'] as Map<String, dynamic>),
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
      'elementAlternate': instance.elementAlternate?.toJson(),
      'allergenicIndicator': instance.allergenicIndicator,
      'elementAllergenicIndicator':
          instance.elementAllergenicIndicator?.toJson(),
    };
