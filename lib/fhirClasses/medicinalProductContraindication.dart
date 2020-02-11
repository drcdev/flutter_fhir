import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 138)
class MedicinalProductContraindication {

  //  This is a MedicinalProductContraindication resource
  @HiveField(0)
  final String resourceType= 'MedicinalProductContraindication';

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

  //  The disease, symptom or procedure for the contraindication.
  @HiveField(12)
  CodeableConcept disease;

  //  The status of the disease or symptom for the contraindication.
  @HiveField(13)
  CodeableConcept diseaseStatus;

  //  A comorbidity (concurrent condition) or coinfection.
  @HiveField(14)
  List<CodeableConcept> comorbidity;

  //  Information about the use of the medicinal product in relation to
  // other therapies as part of the indication.
  @HiveField(15)
  List<Reference> therapeuticIndication;

  //  Information about the use of the medicinal product in relation to
  // other therapies described as part of the indication.
  @HiveField(16)
  List<MedicinalProductContraindication_OtherTherapy> otherTherapy;

  //  The population group to which this applies.
  @HiveField(17)
  List<Population> population;

MedicinalProductContraindication(
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
    this.disease,
    this.diseaseStatus,
    this.comorbidity,
    this.therapeuticIndication,
    this.otherTherapy,
    this.population
    });

  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

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

MedicinalProductContraindication_OtherTherapy(
  this.therapyRelationshipType,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductContraindication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindication_OtherTherapyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductContraindicationAdapter
    extends TypeAdapter<MedicinalProductContraindication> {
  @override
  final typeId = 138;

  @override
  MedicinalProductContraindication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductContraindication(
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
      disease: fields[12] as CodeableConcept,
      diseaseStatus: fields[13] as CodeableConcept,
      comorbidity: (fields[14] as List)?.cast<CodeableConcept>(),
      therapeuticIndication: (fields[15] as List)?.cast<Reference>(),
      otherTherapy: (fields[16] as List)
          ?.cast<MedicinalProductContraindication_OtherTherapy>(),
      population: (fields[17] as List)?.cast<Population>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductContraindication obj) {
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
      ..write(obj.subject)
      ..writeByte(12)
      ..write(obj.disease)
      ..writeByte(13)
      ..write(obj.diseaseStatus)
      ..writeByte(14)
      ..write(obj.comorbidity)
      ..writeByte(15)
      ..write(obj.therapeuticIndication)
      ..writeByte(16)
      ..write(obj.otherTherapy)
      ..writeByte(17)
      ..write(obj.population);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductContraindication _$MedicinalProductContraindicationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductContraindication(
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
    disease: json['disease'] == null
        ? null
        : CodeableConcept.fromJson(json['disease'] as Map<String, dynamic>),
    diseaseStatus: json['diseaseStatus'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diseaseStatus'] as Map<String, dynamic>),
    comorbidity: (json['comorbidity'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    therapeuticIndication: (json['therapeuticIndication'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    otherTherapy: (json['otherTherapy'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductContraindication_OtherTherapy.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) =>
            e == null ? null : Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductContraindicationToJson(
        MedicinalProductContraindication instance) =>
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
      'disease': instance.disease?.toJson(),
      'diseaseStatus': instance.diseaseStatus?.toJson(),
      'comorbidity': instance.comorbidity?.map((e) => e?.toJson())?.toList(),
      'therapeuticIndication':
          instance.therapeuticIndication?.map((e) => e?.toJson())?.toList(),
      'otherTherapy': instance.otherTherapy?.map((e) => e?.toJson())?.toList(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductContraindication_OtherTherapy
    _$MedicinalProductContraindication_OtherTherapyFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductContraindication_OtherTherapy(
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

Map<String, dynamic> _$MedicinalProductContraindication_OtherTherapyToJson(
        MedicinalProductContraindication_OtherTherapy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'therapyRelationshipType': instance.therapyRelationshipType?.toJson(),
      'medicationCodeableConcept': instance.medicationCodeableConcept?.toJson(),
      'medicationReference': instance.medicationReference?.toJson(),
    };
