import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 410)
class MedicinalProductIngredient {

  //  This is a MedicinalProductIngredient resource
  @HiveField(0)
  final String resourceType= 'MedicinalProductIngredient';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  The identifier(s) of this Ingredient that are assigned by business
  // processes and/or used to refer to it when a direct URL reference to the
  // resource itself is not appropriate.
  @HiveField(11)
  Identifier identifier;

  //  Ingredient role e.g. Active ingredient, excipient.
  @HiveField(12)
  CodeableConcept role;

  //  If the ingredient is a known or suspected allergen.
  @HiveField(13)
  bool allergenicIndicator;

  //  Extensions for allergenicIndicator
  @HiveField(14)
  Element elementAllergenicIndicator;

  //  Manufacturer of this Ingredient.
  @HiveField(15)
  List<Reference> manufacturer;

  //  A specified substance that comprises this ingredient.
  @HiveField(16)
  List<MedicinalProductIngredient_SpecifiedSubstance> specifiedSubstance;

  //  The ingredient substance.
  @HiveField(17)
  MedicinalProductIngredient_Substance substance;

MedicinalProductIngredient(
  this.role,
    {this.id,
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
    this.allergenicIndicator,
    this.elementAllergenicIndicator,
    this.manufacturer,
    this.specifiedSubstance,
    this.substance
    });

  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 411)
class MedicinalProductIngredient_SpecifiedSubstance {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The specified substance.
  @HiveField(3)
  CodeableConcept code;

  //  The group of specified substance, e.g. group 1 to 4.
  @HiveField(4)
  CodeableConcept group;

  //  Confidentiality level of the specified substance as the ingredient.
  @HiveField(5)
  CodeableConcept confidentiality;

  //  Quantity of the substance or specified substance present in the
  // manufactured item or pharmaceutical product.
  @HiveField(6)
  List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_SpecifiedSubstance(
  this.code,
    this.group,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.confidentiality,
    this.strength
    });

  factory MedicinalProductIngredient_SpecifiedSubstance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_SpecifiedSubstanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 412)
class MedicinalProductIngredient_Strength {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The quantity of substance in the unit of presentation, or in the
  // volume (or mass) of the single pharmaceutical product or manufactured
  // item.
  @HiveField(3)
  Ratio presentation;

  //  A lower limit for the quantity of substance in the unit of
  // presentation. For use when there is a range of strengths, this is the
  // lower limit, with the presentation attribute becoming the upper limit.
  @HiveField(4)
  Ratio presentationLowLimit;

  //  The strength per unitary volume (or mass).
  @HiveField(5)
  Ratio concentration;

  //  A lower limit for the strength per unitary volume (or mass), for when
  // there is a range. The concentration attribute then becomes the upper
  // limit.
  @HiveField(6)
  Ratio concentrationLowLimit;

  //  For when strength is measured at a particular point or distance.
  @HiveField(7)
  String measurementPoint;

  //  Extensions for measurementPoint
  @HiveField(8)
  Element elementMeasurementPoint;

  //  The country or countries for which the strength range applies.
  @HiveField(9)
  List<CodeableConcept> country;

  //  Strength expressed in terms of a reference substance.
  @HiveField(10)
  List<MedicinalProductIngredient_ReferenceStrength> referenceStrength;

MedicinalProductIngredient_Strength(
  this.presentation,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.presentationLowLimit,
    this.concentration,
    this.concentrationLowLimit,
    this.measurementPoint,
    this.elementMeasurementPoint,
    this.country,
    this.referenceStrength
    });

  factory MedicinalProductIngredient_Strength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_StrengthFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_StrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 413)
class MedicinalProductIngredient_ReferenceStrength {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  Relevant reference substance.
  @HiveField(3)
  CodeableConcept substance;

  //  Strength expressed in terms of a reference substance.
  @HiveField(4)
  Ratio strength;

  //  Strength expressed in terms of a reference substance.
  @HiveField(5)
  Ratio strengthLowLimit;

  //  For when strength is measured at a particular point or distance.
  @HiveField(6)
  String measurementPoint;

  //  Extensions for measurementPoint
  @HiveField(7)
  Element elementMeasurementPoint;

  //  The country or countries for which the strength range applies.
  @HiveField(8)
  List<CodeableConcept> country;

MedicinalProductIngredient_ReferenceStrength(
  this.strength,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.substance,
    this.strengthLowLimit,
    this.measurementPoint,
    this.elementMeasurementPoint,
    this.country
    });

  factory MedicinalProductIngredient_ReferenceStrength.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_ReferenceStrengthFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_ReferenceStrengthToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 414)
class MedicinalProductIngredient_Substance {

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

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The ingredient substance.
  @HiveField(3)
  CodeableConcept code;

  //  Quantity of the substance or specified substance present in the
  // manufactured item or pharmaceutical product.
  @HiveField(4)
  List<MedicinalProductIngredient_Strength> strength;

MedicinalProductIngredient_Substance(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.strength
    });

  factory MedicinalProductIngredient_Substance.fromJson(Map<String, dynamic> json) => _$MedicinalProductIngredient_SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIngredient_SubstanceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductIngredientAdapter
    extends TypeAdapter<MedicinalProductIngredient> {
  @override
  final typeId = 410;

  @override
  MedicinalProductIngredient read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient(
      fields[12] as CodeableConcept,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: fields[11] as Identifier,
      allergenicIndicator: fields[13] as bool,
      elementAllergenicIndicator: fields[14] as Element,
      manufacturer: (fields[15] as List)?.cast<Reference>(),
      specifiedSubstance: (fields[16] as List)
          ?.cast<MedicinalProductIngredient_SpecifiedSubstance>(),
      substance: fields[17] as MedicinalProductIngredient_Substance,
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIngredient obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.role)
      ..writeByte(13)
      ..write(obj.allergenicIndicator)
      ..writeByte(14)
      ..write(obj.elementAllergenicIndicator)
      ..writeByte(15)
      ..write(obj.manufacturer)
      ..writeByte(16)
      ..write(obj.specifiedSubstance)
      ..writeByte(17)
      ..write(obj.substance);
  }
}

class MedicinalProductIngredient_SpecifiedSubstanceAdapter
    extends TypeAdapter<MedicinalProductIngredient_SpecifiedSubstance> {
  @override
  final typeId = 411;

  @override
  MedicinalProductIngredient_SpecifiedSubstance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_SpecifiedSubstance(
      fields[3] as CodeableConcept,
      fields[4] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      confidentiality: fields[5] as CodeableConcept,
      strength:
          (fields[6] as List)?.cast<MedicinalProductIngredient_Strength>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicinalProductIngredient_SpecifiedSubstance obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.group)
      ..writeByte(5)
      ..write(obj.confidentiality)
      ..writeByte(6)
      ..write(obj.strength);
  }
}

class MedicinalProductIngredient_StrengthAdapter
    extends TypeAdapter<MedicinalProductIngredient_Strength> {
  @override
  final typeId = 412;

  @override
  MedicinalProductIngredient_Strength read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_Strength(
      fields[3] as Ratio,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      presentationLowLimit: fields[4] as Ratio,
      concentration: fields[5] as Ratio,
      concentrationLowLimit: fields[6] as Ratio,
      measurementPoint: fields[7] as String,
      elementMeasurementPoint: fields[8] as Element,
      country: (fields[9] as List)?.cast<CodeableConcept>(),
      referenceStrength: (fields[10] as List)
          ?.cast<MedicinalProductIngredient_ReferenceStrength>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIngredient_Strength obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.presentation)
      ..writeByte(4)
      ..write(obj.presentationLowLimit)
      ..writeByte(5)
      ..write(obj.concentration)
      ..writeByte(6)
      ..write(obj.concentrationLowLimit)
      ..writeByte(7)
      ..write(obj.measurementPoint)
      ..writeByte(8)
      ..write(obj.elementMeasurementPoint)
      ..writeByte(9)
      ..write(obj.country)
      ..writeByte(10)
      ..write(obj.referenceStrength);
  }
}

class MedicinalProductIngredient_ReferenceStrengthAdapter
    extends TypeAdapter<MedicinalProductIngredient_ReferenceStrength> {
  @override
  final typeId = 413;

  @override
  MedicinalProductIngredient_ReferenceStrength read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_ReferenceStrength(
      fields[4] as Ratio,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      substance: fields[3] as CodeableConcept,
      strengthLowLimit: fields[5] as Ratio,
      measurementPoint: fields[6] as String,
      elementMeasurementPoint: fields[7] as Element,
      country: (fields[8] as List)?.cast<CodeableConcept>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, MedicinalProductIngredient_ReferenceStrength obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.substance)
      ..writeByte(4)
      ..write(obj.strength)
      ..writeByte(5)
      ..write(obj.strengthLowLimit)
      ..writeByte(6)
      ..write(obj.measurementPoint)
      ..writeByte(7)
      ..write(obj.elementMeasurementPoint)
      ..writeByte(8)
      ..write(obj.country);
  }
}

class MedicinalProductIngredient_SubstanceAdapter
    extends TypeAdapter<MedicinalProductIngredient_Substance> {
  @override
  final typeId = 414;

  @override
  MedicinalProductIngredient_Substance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIngredient_Substance(
      fields[3] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      strength:
          (fields[4] as List)?.cast<MedicinalProductIngredient_Strength>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIngredient_Substance obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.strength);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIngredient _$MedicinalProductIngredientFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIngredient(
    json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    allergenicIndicator: json['allergenicIndicator'] as bool,
    elementAllergenicIndicator: json['elementAllergenicIndicator'] == null
        ? null
        : Element.fromJson(
            json['elementAllergenicIndicator'] as Map<String, dynamic>),
    manufacturer: (json['manufacturer'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specifiedSubstance: (json['specifiedSubstance'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_SpecifiedSubstance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    substance: json['substance'] == null
        ? null
        : MedicinalProductIngredient_Substance.fromJson(
            json['substance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductIngredientToJson(
        MedicinalProductIngredient instance) =>
    <String, dynamic>{
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
      'identifier': instance.identifier?.toJson(),
      'role': instance.role?.toJson(),
      'allergenicIndicator': instance.allergenicIndicator,
      'elementAllergenicIndicator':
          instance.elementAllergenicIndicator?.toJson(),
      'manufacturer': instance.manufacturer?.map((e) => e?.toJson())?.toList(),
      'specifiedSubstance':
          instance.specifiedSubstance?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
    };

MedicinalProductIngredient_SpecifiedSubstance
    _$MedicinalProductIngredient_SpecifiedSubstanceFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIngredient_SpecifiedSubstance(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    json['group'] == null
        ? null
        : CodeableConcept.fromJson(json['group'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    confidentiality: json['confidentiality'] == null
        ? null
        : CodeableConcept.fromJson(
            json['confidentiality'] as Map<String, dynamic>),
    strength: (json['strength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_Strength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_SpecifiedSubstanceToJson(
        MedicinalProductIngredient_SpecifiedSubstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'group': instance.group?.toJson(),
      'confidentiality': instance.confidentiality?.toJson(),
      'strength': instance.strength?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIngredient_Strength
    _$MedicinalProductIngredient_StrengthFromJson(Map<String, dynamic> json) {
  return MedicinalProductIngredient_Strength(
    json['presentation'] == null
        ? null
        : Ratio.fromJson(json['presentation'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    presentationLowLimit: json['presentationLowLimit'] == null
        ? null
        : Ratio.fromJson(json['presentationLowLimit'] as Map<String, dynamic>),
    concentration: json['concentration'] == null
        ? null
        : Ratio.fromJson(json['concentration'] as Map<String, dynamic>),
    concentrationLowLimit: json['concentrationLowLimit'] == null
        ? null
        : Ratio.fromJson(json['concentrationLowLimit'] as Map<String, dynamic>),
    measurementPoint: json['measurementPoint'] as String,
    elementMeasurementPoint: json['elementMeasurementPoint'] == null
        ? null
        : Element.fromJson(
            json['elementMeasurementPoint'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referenceStrength: (json['referenceStrength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_ReferenceStrength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_StrengthToJson(
        MedicinalProductIngredient_Strength instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'presentation': instance.presentation?.toJson(),
      'presentationLowLimit': instance.presentationLowLimit?.toJson(),
      'concentration': instance.concentration?.toJson(),
      'concentrationLowLimit': instance.concentrationLowLimit?.toJson(),
      'measurementPoint': instance.measurementPoint,
      'elementMeasurementPoint': instance.elementMeasurementPoint?.toJson(),
      'country': instance.country?.map((e) => e?.toJson())?.toList(),
      'referenceStrength':
          instance.referenceStrength?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIngredient_ReferenceStrength
    _$MedicinalProductIngredient_ReferenceStrengthFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIngredient_ReferenceStrength(
    json['strength'] == null
        ? null
        : Ratio.fromJson(json['strength'] as Map<String, dynamic>),
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
    strengthLowLimit: json['strengthLowLimit'] == null
        ? null
        : Ratio.fromJson(json['strengthLowLimit'] as Map<String, dynamic>),
    measurementPoint: json['measurementPoint'] as String,
    elementMeasurementPoint: json['elementMeasurementPoint'] == null
        ? null
        : Element.fromJson(
            json['elementMeasurementPoint'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_ReferenceStrengthToJson(
        MedicinalProductIngredient_ReferenceStrength instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'substance': instance.substance?.toJson(),
      'strength': instance.strength?.toJson(),
      'strengthLowLimit': instance.strengthLowLimit?.toJson(),
      'measurementPoint': instance.measurementPoint,
      'elementMeasurementPoint': instance.elementMeasurementPoint?.toJson(),
      'country': instance.country?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIngredient_Substance
    _$MedicinalProductIngredient_SubstanceFromJson(Map<String, dynamic> json) {
  return MedicinalProductIngredient_Substance(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: (json['strength'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIngredient_Strength.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIngredient_SubstanceToJson(
        MedicinalProductIngredient_Substance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'strength': instance.strength?.map((e) => e?.toJson())?.toList(),
    };
