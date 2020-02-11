import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 408)
class MedicinalProductIndication {

  //  This is a MedicinalProductIndication resource
  @HiveField(0)
  final String resourceType= 'MedicinalProductIndication';

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

  //  The medication for which this is an indication.
  @HiveField(11)
  List<Reference> subject;

  //  The disease, symptom or procedure that is the indication for
  // treatment.
  @HiveField(12)
  CodeableConcept diseaseSymptomProcedure;

  //  The status of the disease or symptom for which the indication applies.
  @HiveField(13)
  CodeableConcept diseaseStatus;

  //  Comorbidity (concurrent condition) or co-infection as part of the
  // indication.
  @HiveField(14)
  List<CodeableConcept> comorbidity;

  //  The intended effect, aim or strategy to be achieved by the indication.
  @HiveField(15)
  CodeableConcept intendedEffect;

  //  Timing or duration information as part of the indication.
  @HiveField(16)
  Quantity duration;

  //  Information about the use of the medicinal product in relation to
  // other therapies described as part of the indication.
  @HiveField(17)
  List<MedicinalProductIndication_OtherTherapy> otherTherapy;

  //  Describe the undesirable effects of the medicinal product.
  @HiveField(18)
  List<Reference> undesirableEffect;

  //  The population group to which this applies.
  @HiveField(19)
  List<Population> population;

MedicinalProductIndication(
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
    this.subject,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.duration,
    this.otherTherapy,
    this.undesirableEffect,
    this.population
    });

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
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
  List<Extension> modifierExtension;

  //  The type of relationship between the medicinal product indication or
  // contraindication and another therapy.
  CodeableConcept therapyRelationshipType;

  //  Reference to a specific medication (active substance, medicinal
  // product or class of products) as part of an indication or
  // contraindication.
  CodeableConcept medicationCodeableConcept;

  //  Reference to a specific medication (active substance, medicinal
  // product or class of products) as part of an indication or
  // contraindication.
  Reference medicationReference;

MedicinalProductIndication_OtherTherapy(
  this.therapyRelationshipType,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndication_OtherTherapyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductIndicationAdapter
    extends TypeAdapter<MedicinalProductIndication> {
  @override
  final typeId = 408;

  @override
  MedicinalProductIndication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductIndication(
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
      subject: (fields[11] as List)?.cast<Reference>(),
      diseaseSymptomProcedure: fields[12] as CodeableConcept,
      diseaseStatus: fields[13] as CodeableConcept,
      comorbidity: (fields[14] as List)?.cast<CodeableConcept>(),
      intendedEffect: fields[15] as CodeableConcept,
      duration: fields[16] as Quantity,
      otherTherapy:
          (fields[17] as List)?.cast<MedicinalProductIndication_OtherTherapy>(),
      undesirableEffect: (fields[18] as List)?.cast<Reference>(),
      population: (fields[19] as List)?.cast<Population>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductIndication obj) {
    writer
      ..writeByte(20)
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
      ..write(obj.subject)
      ..writeByte(12)
      ..write(obj.diseaseSymptomProcedure)
      ..writeByte(13)
      ..write(obj.diseaseStatus)
      ..writeByte(14)
      ..write(obj.comorbidity)
      ..writeByte(15)
      ..write(obj.intendedEffect)
      ..writeByte(16)
      ..write(obj.duration)
      ..writeByte(17)
      ..write(obj.otherTherapy)
      ..writeByte(18)
      ..write(obj.undesirableEffect)
      ..writeByte(19)
      ..write(obj.population);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIndication _$MedicinalProductIndicationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIndication(
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
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diseaseSymptomProcedure: json['diseaseSymptomProcedure'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseSymptomProcedure'] as Map<String, dynamic>),
    diseaseStatus: json['diseaseStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseStatus'] as Map<String, dynamic>),
    comorbidity: (json['comorbidity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intendedEffect: json['intendedEffect'] == null
        ? null
        : CodeableConcept.fromJson(
            json['intendedEffect'] as Map<String, dynamic>),
    duration: json['duration'] == null
        ? null
        : Quantity.fromJson(json['duration'] as Map<String, dynamic>),
    otherTherapy: (json['otherTherapy'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductIndication_OtherTherapy.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    undesirableEffect: (json['undesirableEffect'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductIndicationToJson(
        MedicinalProductIndication instance) =>
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
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'diseaseSymptomProcedure': instance.diseaseSymptomProcedure?.toJson(),
      'diseaseStatus': instance.diseaseStatus?.toJson(),
      'comorbidity': instance.comorbidity?.map((e) => e?.toJson())?.toList(),
      'intendedEffect': instance.intendedEffect?.toJson(),
      'duration': instance.duration?.toJson(),
      'otherTherapy': instance.otherTherapy?.map((e) => e?.toJson())?.toList(),
      'undesirableEffect':
          instance.undesirableEffect?.map((e) => e?.toJson())?.toList(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductIndication_OtherTherapy
    _$MedicinalProductIndication_OtherTherapyFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductIndication_OtherTherapy(
    json['therapyRelationshipType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['therapyRelationshipType'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    medicationCodeableConcept: json['medicationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['medicationCodeableConcept'] as Map<String, dynamic>),
    medicationReference: json['medicationReference'] == null
        ? null
        : Reference.fromJson(
            json['medicationReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductIndication_OtherTherapyToJson(
        MedicinalProductIndication_OtherTherapy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'therapyRelationshipType': instance.therapyRelationshipType?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
    };
