import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 144)
class MedicinalProductPharmaceutical {

  //  This is a MedicinalProductPharmaceutical resource
  @HiveField(0)
  final String resourceType= 'MedicinalProductPharmaceutical';

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

  //  An identifier for the pharmaceutical medicinal product.
  @HiveField(11)
  List<Identifier> identifier;

  //  The administrable dose form, after necessary reconstitution.
  @HiveField(12)
  CodeableConcept administrableDoseForm;

  //  Todo.
  @HiveField(13)
  CodeableConcept unitOfPresentation;

  //  Ingredient.
  @HiveField(14)
  List<Reference> ingredient;

  //  Accompanying device.
  @HiveField(15)
  List<Reference> device;

  //  Characteristics e.g. a products onset of action.
  @HiveField(16)
  List<MedicinalProductPharmaceutical_Characteristics> characteristics;

  //  The path by which the pharmaceutical product is taken into or makes
  // contact with the body.
  @HiveField(17)
  List<MedicinalProductPharmaceutical_RouteOfAdministration> routeOfAdministration;

MedicinalProductPharmaceutical(
  this.administrableDoseForm,
    this.routeOfAdministration,
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
    this.unitOfPresentation,
    this.ingredient,
    this.device,
    this.characteristics
    });

  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceuticalFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceuticalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_Characteristics {

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

  //  A coded characteristic.
  CodeableConcept code;

  //  The status of characteristic e.g. assigned or pending.
  CodeableConcept status;

MedicinalProductPharmaceutical_Characteristics(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.status
    });

  factory MedicinalProductPharmaceutical_Characteristics.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_CharacteristicsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_CharacteristicsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_RouteOfAdministration {

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

  //  Coded expression for the route.
  CodeableConcept code;

  //  The first dose (dose quantity) administered in humans can be
  // specified, for a product under investigation, using a numerical value
  // and its unit of measurement.
  Quantity firstDose;

  //  The maximum single dose that can be administered as per the protocol
  // of a clinical trial can be specified using a numerical value and its
  // unit of measurement.
  Quantity maxSingleDose;

  //  The maximum dose per day (maximum dose quantity to be administered in
  // any one 24-h period) that can be administered as per the protocol
  // referenced in the clinical trial authorisation.
  Quantity maxDosePerDay;

  //  The maximum dose per treatment period that can be administered as per
  // the protocol referenced in the clinical trial authorisation.
  Ratio maxDosePerTreatmentPeriod;

  //  The maximum treatment period during which an Investigational Medicinal
  // Product can be administered as per the protocol referenced in the
  // clinical trial authorisation.
  Duration maxTreatmentPeriod;

  //  A species for which this route applies.
  List<MedicinalProductPharmaceutical_TargetSpecies> targetSpecies;

MedicinalProductPharmaceutical_RouteOfAdministration(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies
    });

  factory MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_TargetSpecies {

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

  //  Coded expression for the species.
  CodeableConcept code;

  //  A species specific time during which consumption of animal product is
  // not appropriate.
  List<MedicinalProductPharmaceutical_WithdrawalPeriod> withdrawalPeriod;

MedicinalProductPharmaceutical_TargetSpecies(
  this.code,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.withdrawalPeriod
    });

  factory MedicinalProductPharmaceutical_TargetSpecies.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_TargetSpeciesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductPharmaceutical_WithdrawalPeriod {

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

  //  Coded expression for the type of tissue for which the withdrawal
  // period applues, e.g. meat, milk.
  CodeableConcept tissue;

  //  A value for the time.
  Quantity value;

  //  Extra information about the withdrawal period.
  String supportingInformation;

  //  Extensions for supportingInformation
  Element elementSupportingInformation;

MedicinalProductPharmaceutical_WithdrawalPeriod(
  this.tissue,
    this.value,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.supportingInformation,
    this.elementSupportingInformation
    });

  factory MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(Map<String, dynamic> json) => _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicinalProductPharmaceuticalAdapter
    extends TypeAdapter<MedicinalProductPharmaceutical> {
  @override
  final typeId = 144;

  @override
  MedicinalProductPharmaceutical read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MedicinalProductPharmaceutical(
      fields[12] as CodeableConcept,
      (fields[17] as List)
          ?.cast<MedicinalProductPharmaceutical_RouteOfAdministration>(),
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
      identifier: (fields[11] as List)?.cast<Identifier>(),
      unitOfPresentation: fields[13] as CodeableConcept,
      ingredient: (fields[14] as List)?.cast<Reference>(),
      device: (fields[15] as List)?.cast<Reference>(),
      characteristics: (fields[16] as List)
          ?.cast<MedicinalProductPharmaceutical_Characteristics>(),
    );
  }

  @override
  void write(BinaryWriter writer, MedicinalProductPharmaceutical obj) {
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
      ..write(obj.administrableDoseForm)
      ..writeByte(13)
      ..write(obj.unitOfPresentation)
      ..writeByte(14)
      ..write(obj.ingredient)
      ..writeByte(15)
      ..write(obj.device)
      ..writeByte(16)
      ..write(obj.characteristics)
      ..writeByte(17)
      ..write(obj.routeOfAdministration);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductPharmaceutical _$MedicinalProductPharmaceuticalFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical(
    json['administrableDoseForm'] == null
        ? null
        : CodeableConcept.fromJson(
            json['administrableDoseForm'] as Map<String, dynamic>),
    (json['routeOfAdministration'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_RouteOfAdministration.fromJson(
                e as Map<String, dynamic>))
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
    unitOfPresentation: json['unitOfPresentation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['unitOfPresentation'] as Map<String, dynamic>),
    ingredient: (json['ingredient'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    device: (json['device'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    characteristics: (json['characteristics'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_Characteristics.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceuticalToJson(
        MedicinalProductPharmaceutical instance) =>
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
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'administrableDoseForm': instance.administrableDoseForm?.toJson(),
      'unitOfPresentation': instance.unitOfPresentation?.toJson(),
      'ingredient': instance.ingredient?.map((e) => e?.toJson())?.toList(),
      'device': instance.device?.map((e) => e?.toJson())?.toList(),
      'characteristics':
          instance.characteristics?.map((e) => e?.toJson())?.toList(),
      'routeOfAdministration':
          instance.routeOfAdministration?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPharmaceutical_Characteristics
    _$MedicinalProductPharmaceutical_CharacteristicsFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_Characteristics(
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
    status: json['status'] == null
        ? null
        : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_CharacteristicsToJson(
        MedicinalProductPharmaceutical_Characteristics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'status': instance.status?.toJson(),
    };

MedicinalProductPharmaceutical_RouteOfAdministration
    _$MedicinalProductPharmaceutical_RouteOfAdministrationFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_RouteOfAdministration(
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
    firstDose: json['firstDose'] == null
        ? null
        : Quantity.fromJson(json['firstDose'] as Map<String, dynamic>),
    maxSingleDose: json['maxSingleDose'] == null
        ? null
        : Quantity.fromJson(json['maxSingleDose'] as Map<String, dynamic>),
    maxDosePerDay: json['maxDosePerDay'] == null
        ? null
        : Quantity.fromJson(json['maxDosePerDay'] as Map<String, dynamic>),
    maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] == null
        ? null
        : Ratio.fromJson(
            json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>),
    maxTreatmentPeriod: json['maxTreatmentPeriod'] == null
        ? null
        : Duration.fromJson(json['maxTreatmentPeriod'] as Map<String, dynamic>),
    targetSpecies: (json['targetSpecies'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_TargetSpecies.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic>
    _$MedicinalProductPharmaceutical_RouteOfAdministrationToJson(
            MedicinalProductPharmaceutical_RouteOfAdministration instance) =>
        <String, dynamic>{
          'id': instance.id,
          'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
          'modifierExtension':
              instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
          'code': instance.code?.toJson(),
          'firstDose': instance.firstDose?.toJson(),
          'maxSingleDose': instance.maxSingleDose?.toJson(),
          'maxDosePerDay': instance.maxDosePerDay?.toJson(),
          'maxDosePerTreatmentPeriod':
              instance.maxDosePerTreatmentPeriod?.toJson(),
          'maxTreatmentPeriod': instance.maxTreatmentPeriod?.toJson(),
          'targetSpecies':
              instance.targetSpecies?.map((e) => e?.toJson())?.toList(),
        };

MedicinalProductPharmaceutical_TargetSpecies
    _$MedicinalProductPharmaceutical_TargetSpeciesFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_TargetSpecies(
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
    withdrawalPeriod: (json['withdrawalPeriod'] as List)
        ?.map((e) => e == null
            ? null
            : MedicinalProductPharmaceutical_WithdrawalPeriod.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_TargetSpeciesToJson(
        MedicinalProductPharmaceutical_TargetSpecies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'withdrawalPeriod':
          instance.withdrawalPeriod?.map((e) => e?.toJson())?.toList(),
    };

MedicinalProductPharmaceutical_WithdrawalPeriod
    _$MedicinalProductPharmaceutical_WithdrawalPeriodFromJson(
        Map<String, dynamic> json) {
  return MedicinalProductPharmaceutical_WithdrawalPeriod(
    json['tissue'] == null
        ? null
        : CodeableConcept.fromJson(json['tissue'] as Map<String, dynamic>),
    json['value'] == null
        ? null
        : Quantity.fromJson(json['value'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInformation: json['supportingInformation'] as String,
    elementSupportingInformation: json['elementSupportingInformation'] == null
        ? null
        : Element.fromJson(
            json['elementSupportingInformation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MedicinalProductPharmaceutical_WithdrawalPeriodToJson(
        MedicinalProductPharmaceutical_WithdrawalPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'tissue': instance.tissue?.toJson(),
      'value': instance.value?.toJson(),
      'supportingInformation': instance.supportingInformation,
      'elementSupportingInformation':
          instance.elementSupportingInformation?.toJson(),
    };
