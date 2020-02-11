import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 537)
class SpecimenDefinition {

  //  This is a SpecimenDefinition resource
  @HiveField(0)
  final String resourceType= 'SpecimenDefinition';

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

  //  A business identifier associated with the kind of specimen.
  @HiveField(11)
  Identifier identifier;

  //  The kind of material to be collected.
  @HiveField(12)
  CodeableConcept typeCollected;

  //  Preparation of the patient for specimen collection.
  @HiveField(13)
  List<CodeableConcept> patientPreparation;

  //  Time aspect of specimen collection (duration or offset).
  @HiveField(14)
  String timeAspect;

  //  Extensions for timeAspect
  @HiveField(15)
  Element elementTimeAspect;

  //  The action to be performed for collecting the specimen.
  @HiveField(16)
  List<CodeableConcept> collection;

  //  Specimen conditioned in a container as expected by the testing
  // laboratory.
  @HiveField(17)
  List<SpecimenDefinition_TypeTested> typeTested;

SpecimenDefinition(
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
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.elementTimeAspect,
    this.collection,
    this.typeTested
    });

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) => _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 538)
class SpecimenDefinition_TypeTested {

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

  //  Primary of secondary specimen.
  @HiveField(3)
  bool isDerived;

  //  Extensions for isDerived
  @HiveField(4)
  Element elementIsDerived;

  //  The kind of specimen conditioned for testing expected by lab.
  @HiveField(5)
  CodeableConcept type;

  //  The preference for this type of conditioned specimen.
  @HiveField(6)
  String preference; // <code> enum: preferred/alternate;

  //  Extensions for preference
  @HiveField(7)
  Element elementPreference;

  //  The specimen's container.
  @HiveField(8)
  SpecimenDefinition_Container container;

  //  Requirements for delivery and special handling of this kind of
  // conditioned specimen.
  @HiveField(9)
  String requirement;

  //  Extensions for requirement
  @HiveField(10)
  Element elementRequirement;

  //  The usual time that a specimen of this kind is retained after the
  // ordered tests are completed, for the purpose of additional testing.
  @HiveField(11)
  Duration retentionTime;

  //  Criterion for rejection of the specimen in its container by the
  // laboratory.
  @HiveField(12)
  List<CodeableConcept> rejectionCriterion;

  //  Set of instructions for preservation/transport of the specimen at a
  // defined temperature interval, prior the testing process.
  @HiveField(13)
  List<SpecimenDefinition_Handling> handling;

SpecimenDefinition_TypeTested(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.isDerived,
    this.elementIsDerived,
    this.type,
    this.preference,
    this.elementPreference,
    this.container,
    this.requirement,
    this.elementRequirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling
    });

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_TypeTestedToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 539)
class SpecimenDefinition_Container {

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

  //  The type of material of the container.
  @HiveField(3)
  CodeableConcept material;

  //  The type of container used to contain this kind of specimen.
  @HiveField(4)
  CodeableConcept type;

  //  Color of container cap.
  @HiveField(5)
  CodeableConcept cap;

  //  The textual description of the kind of container.
  @HiveField(6)
  String description;

  //  Extensions for description
  @HiveField(7)
  Element elementDescription;

  //  The capacity (volume or other measure) of this kind of container.
  @HiveField(8)
  Quantity capacity;

  //  The minimum volume to be conditioned in the container.
  @HiveField(9)
  Quantity minimumVolumeQuantity;

  //  The minimum volume to be conditioned in the container.
  @HiveField(10)
  String minimumVolumeString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for minimumVolumeString
  @HiveField(11)
  Element elementMinimumVolumeString;

  //  Substance introduced in the kind of container to preserve, maintain or
  // enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @HiveField(12)
  List<SpecimenDefinition_Additive> additive;

  //  Special processing that should be applied to the container for this
  // kind of specimen.
  @HiveField(13)
  String preparation;

  //  Extensions for preparation
  @HiveField(14)
  Element elementPreparation;

SpecimenDefinition_Container(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.elementDescription,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.elementMinimumVolumeString,
    this.additive,
    this.preparation,
    this.elementPreparation
    });

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_ContainerToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 540)
class SpecimenDefinition_Additive {

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

  //  Substance introduced in the kind of container to preserve, maintain or
  // enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @HiveField(3)
  CodeableConcept additiveCodeableConcept;

  //  Substance introduced in the kind of container to preserve, maintain or
  // enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @HiveField(4)
  Reference additiveReference;

SpecimenDefinition_Additive(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference
    });

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_AdditiveToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 541)
class SpecimenDefinition_Handling {

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

  //  It qualifies the interval of temperature, which characterizes an
  // occurrence of handling. Conditions that are not related to temperature
  // may be handled in the instruction element.
  @HiveField(3)
  CodeableConcept temperatureQualifier;

  //  The temperature interval for this set of handling instructions.
  @HiveField(4)
  Range temperatureRange;

  //  The maximum time interval of preservation of the specimen with these
  // conditions.
  @HiveField(5)
  Duration maxDuration;

  //  Additional textual instructions for the preservation or transport of
  // the specimen. For instance, 'Protect from light exposure'.
  @HiveField(6)
  String instruction;

  //  Extensions for instruction
  @HiveField(7)
  Element elementInstruction;

SpecimenDefinition_Handling(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.elementInstruction
    });

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_HandlingToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpecimenDefinitionAdapter extends TypeAdapter<SpecimenDefinition> {
  @override
  final typeId = 537;

  @override
  SpecimenDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition(
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
      typeCollected: fields[12] as CodeableConcept,
      patientPreparation: (fields[13] as List)?.cast<CodeableConcept>(),
      timeAspect: fields[14] as String,
      elementTimeAspect: fields[15] as Element,
      collection: (fields[16] as List)?.cast<CodeableConcept>(),
      typeTested: (fields[17] as List)?.cast<SpecimenDefinition_TypeTested>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition obj) {
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
      ..write(obj.typeCollected)
      ..writeByte(13)
      ..write(obj.patientPreparation)
      ..writeByte(14)
      ..write(obj.timeAspect)
      ..writeByte(15)
      ..write(obj.elementTimeAspect)
      ..writeByte(16)
      ..write(obj.collection)
      ..writeByte(17)
      ..write(obj.typeTested);
  }
}

class SpecimenDefinition_TypeTestedAdapter
    extends TypeAdapter<SpecimenDefinition_TypeTested> {
  @override
  final typeId = 538;

  @override
  SpecimenDefinition_TypeTested read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_TypeTested(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      isDerived: fields[3] as bool,
      elementIsDerived: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      preference: fields[6] as String,
      elementPreference: fields[7] as Element,
      container: fields[8] as SpecimenDefinition_Container,
      requirement: fields[9] as String,
      elementRequirement: fields[10] as Element,
      retentionTime: fields[11] as Duration,
      rejectionCriterion: (fields[12] as List)?.cast<CodeableConcept>(),
      handling: (fields[13] as List)?.cast<SpecimenDefinition_Handling>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_TypeTested obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.isDerived)
      ..writeByte(4)
      ..write(obj.elementIsDerived)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.preference)
      ..writeByte(7)
      ..write(obj.elementPreference)
      ..writeByte(8)
      ..write(obj.container)
      ..writeByte(9)
      ..write(obj.requirement)
      ..writeByte(10)
      ..write(obj.elementRequirement)
      ..writeByte(11)
      ..write(obj.retentionTime)
      ..writeByte(12)
      ..write(obj.rejectionCriterion)
      ..writeByte(13)
      ..write(obj.handling);
  }
}

class SpecimenDefinition_ContainerAdapter
    extends TypeAdapter<SpecimenDefinition_Container> {
  @override
  final typeId = 539;

  @override
  SpecimenDefinition_Container read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_Container(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      material: fields[3] as CodeableConcept,
      type: fields[4] as CodeableConcept,
      cap: fields[5] as CodeableConcept,
      description: fields[6] as String,
      elementDescription: fields[7] as Element,
      capacity: fields[8] as Quantity,
      minimumVolumeQuantity: fields[9] as Quantity,
      minimumVolumeString: fields[10] as String,
      elementMinimumVolumeString: fields[11] as Element,
      additive: (fields[12] as List)?.cast<SpecimenDefinition_Additive>(),
      preparation: fields[13] as String,
      elementPreparation: fields[14] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_Container obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.material)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.cap)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.elementDescription)
      ..writeByte(8)
      ..write(obj.capacity)
      ..writeByte(9)
      ..write(obj.minimumVolumeQuantity)
      ..writeByte(10)
      ..write(obj.minimumVolumeString)
      ..writeByte(11)
      ..write(obj.elementMinimumVolumeString)
      ..writeByte(12)
      ..write(obj.additive)
      ..writeByte(13)
      ..write(obj.preparation)
      ..writeByte(14)
      ..write(obj.elementPreparation);
  }
}

class SpecimenDefinition_AdditiveAdapter
    extends TypeAdapter<SpecimenDefinition_Additive> {
  @override
  final typeId = 540;

  @override
  SpecimenDefinition_Additive read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_Additive(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      additiveCodeableConcept: fields[3] as CodeableConcept,
      additiveReference: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_Additive obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.additiveCodeableConcept)
      ..writeByte(4)
      ..write(obj.additiveReference);
  }
}

class SpecimenDefinition_HandlingAdapter
    extends TypeAdapter<SpecimenDefinition_Handling> {
  @override
  final typeId = 541;

  @override
  SpecimenDefinition_Handling read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpecimenDefinition_Handling(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      temperatureQualifier: fields[3] as CodeableConcept,
      temperatureRange: fields[4] as Range,
      maxDuration: fields[5] as Duration,
      instruction: fields[6] as String,
      elementInstruction: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, SpecimenDefinition_Handling obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.temperatureQualifier)
      ..writeByte(4)
      ..write(obj.temperatureRange)
      ..writeByte(5)
      ..write(obj.maxDuration)
      ..writeByte(6)
      ..write(obj.instruction)
      ..writeByte(7)
      ..write(obj.elementInstruction);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecimenDefinition _$SpecimenDefinitionFromJson(Map<String, dynamic> json) {
  return SpecimenDefinition(
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
    typeCollected: json['typeCollected'] == null
        ? null
        : CodeableConcept.fromJson(
            json['typeCollected'] as Map<String, dynamic>),
    patientPreparation: (json['patientPreparation'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeAspect: json['timeAspect'] as String,
    elementTimeAspect: json['elementTimeAspect'] == null
        ? null
        : Element.fromJson(json['elementTimeAspect'] as Map<String, dynamic>),
    collection: (json['collection'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typeTested: (json['typeTested'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_TypeTested.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinitionToJson(SpecimenDefinition instance) =>
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
      'typeCollected': instance.typeCollected?.toJson(),
      'patientPreparation':
          instance.patientPreparation?.map((e) => e?.toJson())?.toList(),
      'timeAspect': instance.timeAspect,
      'elementTimeAspect': instance.elementTimeAspect?.toJson(),
      'collection': instance.collection?.map((e) => e?.toJson())?.toList(),
      'typeTested': instance.typeTested?.map((e) => e?.toJson())?.toList(),
    };

SpecimenDefinition_TypeTested _$SpecimenDefinition_TypeTestedFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_TypeTested(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isDerived: json['isDerived'] as bool,
    elementIsDerived: json['elementIsDerived'] == null
        ? null
        : Element.fromJson(json['elementIsDerived'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    preference: json['preference'] as String,
    elementPreference: json['elementPreference'] == null
        ? null
        : Element.fromJson(json['elementPreference'] as Map<String, dynamic>),
    container: json['container'] == null
        ? null
        : SpecimenDefinition_Container.fromJson(
            json['container'] as Map<String, dynamic>),
    requirement: json['requirement'] as String,
    elementRequirement: json['elementRequirement'] == null
        ? null
        : Element.fromJson(json['elementRequirement'] as Map<String, dynamic>),
    retentionTime: json['retentionTime'] == null
        ? null
        : Duration.fromJson(json['retentionTime'] as Map<String, dynamic>),
    rejectionCriterion: (json['rejectionCriterion'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    handling: (json['handling'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Handling.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SpecimenDefinition_TypeTestedToJson(
        SpecimenDefinition_TypeTested instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'isDerived': instance.isDerived,
      'elementIsDerived': instance.elementIsDerived?.toJson(),
      'type': instance.type?.toJson(),
      'preference': instance.preference,
      'elementPreference': instance.elementPreference?.toJson(),
      'container': instance.container?.toJson(),
      'requirement': instance.requirement,
      'elementRequirement': instance.elementRequirement?.toJson(),
      'retentionTime': instance.retentionTime?.toJson(),
      'rejectionCriterion':
          instance.rejectionCriterion?.map((e) => e?.toJson())?.toList(),
      'handling': instance.handling?.map((e) => e?.toJson())?.toList(),
    };

SpecimenDefinition_Container _$SpecimenDefinition_ContainerFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Container(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    material: json['material'] == null
        ? null
        : CodeableConcept.fromJson(json['material'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    cap: json['cap'] == null
        ? null
        : CodeableConcept.fromJson(json['cap'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    capacity: json['capacity'] == null
        ? null
        : Quantity.fromJson(json['capacity'] as Map<String, dynamic>),
    minimumVolumeQuantity: json['minimumVolumeQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['minimumVolumeQuantity'] as Map<String, dynamic>),
    minimumVolumeString: json['minimumVolumeString'] as String,
    elementMinimumVolumeString: json['elementMinimumVolumeString'] == null
        ? null
        : Element.fromJson(
            json['elementMinimumVolumeString'] as Map<String, dynamic>),
    additive: (json['additive'] as List)
        ?.map((e) => e == null
            ? null
            : SpecimenDefinition_Additive.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preparation: json['preparation'] as String,
    elementPreparation: json['elementPreparation'] == null
        ? null
        : Element.fromJson(json['elementPreparation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_ContainerToJson(
        SpecimenDefinition_Container instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'material': instance.material?.toJson(),
      'type': instance.type?.toJson(),
      'cap': instance.cap?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'capacity': instance.capacity?.toJson(),
      'minimumVolumeQuantity': instance.minimumVolumeQuantity?.toJson(),
      'minimumVolumeString': instance.minimumVolumeString,
      'elementMinimumVolumeString':
          instance.elementMinimumVolumeString?.toJson(),
      'additive': instance.additive?.map((e) => e?.toJson())?.toList(),
      'preparation': instance.preparation,
      'elementPreparation': instance.elementPreparation?.toJson(),
    };

SpecimenDefinition_Additive _$SpecimenDefinition_AdditiveFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Additive(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additiveCodeableConcept: json['additiveCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['additiveCodeableConcept'] as Map<String, dynamic>),
    additiveReference: json['additiveReference'] == null
        ? null
        : Reference.fromJson(json['additiveReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_AdditiveToJson(
        SpecimenDefinition_Additive instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'additiveCodeableConcept': instance.additiveCodeableConcept?.toJson(),
      'additiveReference': instance.additiveReference?.toJson(),
    };

SpecimenDefinition_Handling _$SpecimenDefinition_HandlingFromJson(
    Map<String, dynamic> json) {
  return SpecimenDefinition_Handling(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    temperatureQualifier: json['temperatureQualifier'] == null
        ? null
        : CodeableConcept.fromJson(
            json['temperatureQualifier'] as Map<String, dynamic>),
    temperatureRange: json['temperatureRange'] == null
        ? null
        : Range.fromJson(json['temperatureRange'] as Map<String, dynamic>),
    maxDuration: json['maxDuration'] == null
        ? null
        : Duration.fromJson(json['maxDuration'] as Map<String, dynamic>),
    instruction: json['instruction'] as String,
    elementInstruction: json['elementInstruction'] == null
        ? null
        : Element.fromJson(json['elementInstruction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecimenDefinition_HandlingToJson(
        SpecimenDefinition_Handling instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'temperatureQualifier': instance.temperatureQualifier?.toJson(),
      'temperatureRange': instance.temperatureRange?.toJson(),
      'maxDuration': instance.maxDuration?.toJson(),
      'instruction': instance.instruction,
      'elementInstruction': instance.elementInstruction?.toJson(),
    };
