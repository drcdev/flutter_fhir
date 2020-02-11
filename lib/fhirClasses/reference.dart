import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 17)
class Reference {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  A reference to a location at which the other resource is found. The
  // reference may be a relative reference, in which case it is relative to
  // the service base URL, or an absolute URL that resolves to the location
  // where the resource is found. The reference may be version specific or
  // not. If the reference is not to a FHIR RESTful server, then it should
  // be assumed to be version specific. Internal fragment references (start
  // with '#') refer to contained resources.
  @HiveField(2)
  String reference;

  //  Extensions for reference
  @HiveField(3)
  Element elementReference;

  //  The expected type of the target of the reference. If both
  // Reference.type and Reference.reference are populated and
  // Reference.reference is a FHIR URL, both SHALL be consistent. The type
  // is the Canonical URL of Resource Definition that is the type this
  // reference refers to. References are URLs that are relative to
  // http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference
  // to http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are
  // only allowed for logical models (and can only be used in references in
  // logical models, not resources).
  @HiveField(4)
  String type;

  //  Extensions for type
  @HiveField(5)
  Element elementType;

  //  An identifier for the target resource. This is used when there is no
  // way to reference the other resource directly, either because the entity
  // it represents is not available through a FHIR server, or because there
  // is no way for the author of the resource to convert a known identifier
  // to an actual location. There is no requirement that a
  // Reference.identifier point to something that is actually exposed as a
  // FHIR instance, but it SHALL point to a business concept that would be
  // expected to be exposed as a FHIR instance, and that instance would need
  // to be of a FHIR resource type allowed by the reference.
  @HiveField(6)
  Identifier identifier;

  //  Plain text narrative that identifies the resource in addition to the
  // resource reference.
  @HiveField(7)
  String display;

  //  Extensions for display
  @HiveField(8)
  Element elementDisplay;

Reference(
  {this.id,
    this.extension,
    this.reference,
    this.elementReference,
    this.type,
    this.elementType,
    this.identifier,
    this.display,
    this.elementDisplay
    });

  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReferenceAdapter extends TypeAdapter<Reference> {
  @override
  final typeId = 17;

  @override
  Reference read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Reference(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      reference: fields[2] as String,
      elementReference: fields[3] as Element,
      type: fields[4] as String,
      elementType: fields[5] as Element,
      identifier: fields[6] as Identifier,
      display: fields[7] as String,
      elementDisplay: fields[8] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, Reference obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.reference)
      ..writeByte(3)
      ..write(obj.elementReference)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.elementType)
      ..writeByte(6)
      ..write(obj.identifier)
      ..writeByte(7)
      ..write(obj.display)
      ..writeByte(8)
      ..write(obj.elementDisplay);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return Reference(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reference: json['reference'] as String,
    elementReference: json['elementReference'] == null
        ? null
        : Element.fromJson(json['elementReference'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    display: json['display'] as String,
    elementDisplay: json['elementDisplay'] == null
        ? null
        : Element.fromJson(json['elementDisplay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReferenceToJson(Reference instance) => <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'reference': instance.reference,
      'elementReference': instance.elementReference?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'display': instance.display,
      'elementDisplay': instance.elementDisplay?.toJson(),
    };
