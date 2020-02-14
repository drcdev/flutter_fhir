import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication {


	static Future<MedicinalProductIndication> newInstance({
		String  resourceType,
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
		List<Reference> subject,
		CodeableConcept diseaseSymptomProcedure,
		CodeableConcept diseaseStatus,
		List<CodeableConcept> comorbidity,
		CodeableConcept intendedEffect,
		Quantity duration,
		List<MedicinalProductIndication_OtherTherapy> otherTherapy,
		List<Reference> undesirableEffect,
		List<Population> population}) async {
	var fhirDb = new DatabaseHelper();
	MedicinalProductIndication newMedicinalProductIndication = new MedicinalProductIndication(
			resourceType: resourceType,
			id: await fhirDb.newResourceId('MedicinalProductIndication'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			subject: subject,
			diseaseSymptomProcedure: diseaseSymptomProcedure,
			diseaseStatus: diseaseStatus,
			comorbidity: comorbidity,
			intendedEffect: intendedEffect,
			duration: duration,
			otherTherapy: otherTherapy,
			undesirableEffect: undesirableEffect,
			population: population,
);
	int saved = await fhirDb.saveResource(newMedicinalProductIndication);
	return newMedicinalProductIndication;
}

save () async {
	var fhirDb = new DatabaseHelper();
	int saved = await fhirDb.save(this);
}
  String resourceType= 'MedicinalProductIndication';
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
  List<Reference> subject;
  CodeableConcept diseaseSymptomProcedure;
  CodeableConcept diseaseStatus;
  List<CodeableConcept> comorbidity;
  CodeableConcept intendedEffect;
  Quantity duration;
  List<MedicinalProductIndication_OtherTherapy> otherTherapy;
  List<Reference> undesirableEffect;
  List<Population> population;

MedicinalProductIndication(
  {@required this.resourceType,
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


	static Future<MedicinalProductIndication_OtherTherapy> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept therapyRelationshipType,
		CodeableConcept medicationCodeableConcept,
		Reference medicationReference}) async {
	var fhirDb = new DatabaseHelper();
	MedicinalProductIndication_OtherTherapy newMedicinalProductIndication_OtherTherapy = new MedicinalProductIndication_OtherTherapy(
			id: await fhirDb.newResourceId('MedicinalProductIndication_OtherTherapy'),
			extension: extension,
			modifierExtension: modifierExtension,
			therapyRelationshipType: therapyRelationshipType,
			medicationCodeableConcept: medicationCodeableConcept,
			medicationReference: medicationReference,
);
	return newMedicinalProductIndication_OtherTherapy;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept therapyRelationshipType;
  CodeableConcept medicationCodeableConcept;
  Reference medicationReference;

MedicinalProductIndication_OtherTherapy(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.therapyRelationshipType,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndication_OtherTherapyToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductIndication _$MedicinalProductIndicationFromJson(
    Map<String, dynamic> json) {
  return MedicinalProductIndication(
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
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    therapyRelationshipType: json['therapyRelationshipType'] == null
        ? null
        : CodeableConcept.fromJson(
            json['therapyRelationshipType'] as Map<String, dynamic>),
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
