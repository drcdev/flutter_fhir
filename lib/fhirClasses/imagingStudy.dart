import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 305)
class ImagingStudy {

  //  This is a ImagingStudy resource
  @HiveField(0)
  final String resourceType= 'ImagingStudy';

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

  //  Identifiers for the ImagingStudy such as DICOM Study Instance UID, and
  // Accession Number.
  @HiveField(11)
  List<Identifier> identifier;

  //  The current state of the ImagingStudy.
  @HiveField(12)
  String status; // <code> enum: registered/available/cancelled/entered-in-error/unknown;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  A list of all the series.modality values that are actual acquisition
  // modalities, i.e. those in the DICOM Context Group 29 (value set OID
  // 1.2.840.10008.6.1.19).
  @HiveField(14)
  List<Coding> modality;

  //  The subject, typically a patient, of the imaging study.
  @HiveField(15)
  Reference subject;

  //  The healthcare event (e.g. a patient and healthcare provider
  // interaction) during which this ImagingStudy is made.
  @HiveField(16)
  Reference encounter;

  //  Date and time the study started.
  @HiveField(17)
  DateTime started;

  //  Extensions for started
  @HiveField(18)
  Element elementStarted;

  //  A list of the diagnostic requests that resulted in this imaging study
  // being performed.
  @HiveField(19)
  List<Reference> basedOn;

  //  The requesting/referring physician.
  @HiveField(20)
  Reference referrer;

  //  Who read the study and interpreted the images or other content.
  @HiveField(21)
  List<Reference> interpreter;

  //  The network service providing access (e.g., query, view, or retrieval)
  // for the study. See implementation notes for information about using
  // DICOM endpoints. A study-level endpoint applies to each series in the
  // study, unless overridden by a series-level endpoint with the same
  // Endpoint.connectionType.
  @HiveField(22)
  List<Reference> endpoint;

  //  Number of Series in the Study. This value given may be larger than the
  // number of series elements this Resource contains due to resource
  // availability, security, or other factors. This element should be
  // present if any series elements are present.
  @HiveField(23)
  int numberOfSeries;

  //  Extensions for numberOfSeries
  @HiveField(24)
  Element elementNumberOfSeries;

  //  Number of SOP Instances in Study. This value given may be larger than
  // the number of instance elements this resource contains due to resource
  // availability, security, or other factors. This element should be
  // present if any instance elements are present.
  @HiveField(25)
  int numberOfInstances;

  //  Extensions for numberOfInstances
  @HiveField(26)
  Element elementNumberOfInstances;

  //  The procedure which this ImagingStudy was part of.
  @HiveField(27)
  Reference procedureReference;

  //  The code for the performed procedure type.
  @HiveField(28)
  List<CodeableConcept> procedureCode;

  //  The principal physical location where the ImagingStudy was performed.
  @HiveField(29)
  Reference location;

  //  Description of clinical condition indicating why the ImagingStudy was
  // requested.
  @HiveField(30)
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this Study.
  @HiveField(31)
  List<Reference> reasonReference;

  //  Per the recommended DICOM mapping, this element is derived from the
  // Study Description attribute (0008,1030). Observations or findings about
  // the imaging study should be recorded in another resource, e.g.
  // Observation, and not in this element.
  @HiveField(32)
  List<Annotation> note;

  //  The Imaging Manager description of the study. Institution-generated
  // description or classification of the Study (component) performed.
  @HiveField(33)
  String description;

  //  Extensions for description
  @HiveField(34)
  Element elementDescription;

  //  Each study has one or more series of images or other content.
  @HiveField(35)
  List<ImagingStudy_Series> series;

ImagingStudy(
  this.subject,
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
    this.status,
    this.elementStatus,
    this.modality,
    this.encounter,
    this.started,
    this.elementStarted,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.elementNumberOfSeries,
    this.numberOfInstances,
    this.elementNumberOfInstances,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.elementDescription,
    this.series
    });

  factory ImagingStudy.fromJson(Map<String, dynamic> json) => _$ImagingStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Series {

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

  //  The DICOM Series Instance UID for the series.
  String uid;

  //  Extensions for uid
  Element elementUid;

  //  The numeric identifier of this series in the study.
  int number;

  //  Extensions for number
  Element elementNumber;

  //  The modality of this series sequence.
  Coding modality;

  //  A description of the series.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Number of SOP Instances in the Study. The value given may be larger
  // than the number of instance elements this resource contains due to
  // resource availability, security, or other factors. This element should
  // be present if any instance elements are present.
  int numberOfInstances;

  //  Extensions for numberOfInstances
  Element elementNumberOfInstances;

  //  The network service providing access (e.g., query, view, or retrieval)
  // for this series. See implementation notes for information about using
  // DICOM endpoints. A series-level endpoint, if present, has precedence
  // over a study-level endpoint with the same Endpoint.connectionType.
  List<Reference> endpoint;

  //  The anatomic structures examined. See DICOM Part 16 Annex L
  // (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  // for DICOM to SNOMED-CT mappings. The bodySite may indicate the
  // laterality of body part imaged; if so, it shall be consistent with any
  // content of ImagingStudy.series.laterality.
  Coding bodySite;

  //  The laterality of the (possibly paired) anatomic structures examined.
  // E.g., the left knee, both lungs, or unpaired abdomen. If present, shall
  // be consistent with any laterality information indicated in
  // ImagingStudy.series.bodySite.
  Coding laterality;

  //  The specimen imaged, e.g., for whole slide imaging of a biopsy.
  List<Reference> specimen;

  //  The date and time the series was started.
  DateTime started;

  //  Extensions for started
  Element elementStarted;

  //  Indicates who or what performed the series and how they were involved.
  List<ImagingStudy_Performer> performer;

  //  A single SOP instance within the series, e.g. an image, or
  // presentation state.
  List<ImagingStudy_Instance> instance;

ImagingStudy_Series(
  this.modality,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.uid,
    this.elementUid,
    this.number,
    this.elementNumber,
    this.description,
    this.elementDescription,
    this.numberOfInstances,
    this.elementNumberOfInstances,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.elementStarted,
    this.performer,
    this.instance
    });

  factory ImagingStudy_Series.fromJson(Map<String, dynamic> json) => _$ImagingStudy_SeriesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_SeriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Performer {

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

  //  Distinguishes the type of involvement of the performer in the series.
  CodeableConcept function;

  //  Indicates who or what performed the series.
  Reference actor;

ImagingStudy_Performer(
  this.actor,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.function
    });

  factory ImagingStudy_Performer.fromJson(Map<String, dynamic> json) => _$ImagingStudy_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Instance {

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

  //  The DICOM SOP Instance UID for this image or other DICOM content.
  String uid;

  //  Extensions for uid
  Element elementUid;

  //  DICOM instance  type.
  Coding sopClass;

  //  The number of instance in the series.
  int number;

  //  Extensions for number
  Element elementNumber;

  //  The description of the instance.
  String title;

  //  Extensions for title
  Element elementTitle;

ImagingStudy_Instance(
  this.sopClass,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.uid,
    this.elementUid,
    this.number,
    this.elementNumber,
    this.title,
    this.elementTitle
    });

  factory ImagingStudy_Instance.fromJson(Map<String, dynamic> json) => _$ImagingStudy_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_InstanceToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImagingStudyAdapter extends TypeAdapter<ImagingStudy> {
  @override
  final typeId = 305;

  @override
  ImagingStudy read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagingStudy(
      fields[15] as Reference,
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
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      modality: (fields[14] as List)?.cast<Coding>(),
      encounter: fields[16] as Reference,
      started: fields[17] as DateTime,
      elementStarted: fields[18] as Element,
      basedOn: (fields[19] as List)?.cast<Reference>(),
      referrer: fields[20] as Reference,
      interpreter: (fields[21] as List)?.cast<Reference>(),
      endpoint: (fields[22] as List)?.cast<Reference>(),
      numberOfSeries: fields[23] as int,
      elementNumberOfSeries: fields[24] as Element,
      numberOfInstances: fields[25] as int,
      elementNumberOfInstances: fields[26] as Element,
      procedureReference: fields[27] as Reference,
      procedureCode: (fields[28] as List)?.cast<CodeableConcept>(),
      location: fields[29] as Reference,
      reasonCode: (fields[30] as List)?.cast<CodeableConcept>(),
      reasonReference: (fields[31] as List)?.cast<Reference>(),
      note: (fields[32] as List)?.cast<Annotation>(),
      description: fields[33] as String,
      elementDescription: fields[34] as Element,
      series: (fields[35] as List)?.cast<ImagingStudy_Series>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImagingStudy obj) {
    writer
      ..writeByte(36)
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
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.modality)
      ..writeByte(15)
      ..write(obj.subject)
      ..writeByte(16)
      ..write(obj.encounter)
      ..writeByte(17)
      ..write(obj.started)
      ..writeByte(18)
      ..write(obj.elementStarted)
      ..writeByte(19)
      ..write(obj.basedOn)
      ..writeByte(20)
      ..write(obj.referrer)
      ..writeByte(21)
      ..write(obj.interpreter)
      ..writeByte(22)
      ..write(obj.endpoint)
      ..writeByte(23)
      ..write(obj.numberOfSeries)
      ..writeByte(24)
      ..write(obj.elementNumberOfSeries)
      ..writeByte(25)
      ..write(obj.numberOfInstances)
      ..writeByte(26)
      ..write(obj.elementNumberOfInstances)
      ..writeByte(27)
      ..write(obj.procedureReference)
      ..writeByte(28)
      ..write(obj.procedureCode)
      ..writeByte(29)
      ..write(obj.location)
      ..writeByte(30)
      ..write(obj.reasonCode)
      ..writeByte(31)
      ..write(obj.reasonReference)
      ..writeByte(32)
      ..write(obj.note)
      ..writeByte(33)
      ..write(obj.description)
      ..writeByte(34)
      ..write(obj.elementDescription)
      ..writeByte(35)
      ..write(obj.series);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagingStudy _$ImagingStudyFromJson(Map<String, dynamic> json) {
  return ImagingStudy(
    json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
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
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    modality: (json['modality'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: json['encounter'] == null
        ? null
        : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    elementStarted: json['elementStarted'] == null
        ? null
        : Element.fromJson(json['elementStarted'] as Map<String, dynamic>),
    basedOn: (json['basedOn'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    referrer: json['referrer'] == null
        ? null
        : Reference.fromJson(json['referrer'] as Map<String, dynamic>),
    interpreter: (json['interpreter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    numberOfSeries: json['numberOfSeries'] as int,
    elementNumberOfSeries: json['elementNumberOfSeries'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfSeries'] as Map<String, dynamic>),
    numberOfInstances: json['numberOfInstances'] as int,
    elementNumberOfInstances: json['elementNumberOfInstances'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfInstances'] as Map<String, dynamic>),
    procedureReference: json['procedureReference'] == null
        ? null
        : Reference.fromJson(
            json['procedureReference'] as Map<String, dynamic>),
    procedureCode: (json['procedureCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : Reference.fromJson(json['location'] as Map<String, dynamic>),
    reasonCode: (json['reasonCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reasonReference: (json['reasonReference'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: (json['note'] as List)
        ?.map((e) =>
            e == null ? null : Annotation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    series: (json['series'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Series.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagingStudyToJson(ImagingStudy instance) =>
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
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'modality': instance.modality?.map((e) => e?.toJson())?.toList(),
      'subject': instance.subject?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'started': instance.started?.toIso8601String(),
      'elementStarted': instance.elementStarted?.toJson(),
      'basedOn': instance.basedOn?.map((e) => e?.toJson())?.toList(),
      'referrer': instance.referrer?.toJson(),
      'interpreter': instance.interpreter?.map((e) => e?.toJson())?.toList(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'numberOfSeries': instance.numberOfSeries,
      'elementNumberOfSeries': instance.elementNumberOfSeries?.toJson(),
      'numberOfInstances': instance.numberOfInstances,
      'elementNumberOfInstances': instance.elementNumberOfInstances?.toJson(),
      'procedureReference': instance.procedureReference?.toJson(),
      'procedureCode':
          instance.procedureCode?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'reasonCode': instance.reasonCode?.map((e) => e?.toJson())?.toList(),
      'reasonReference':
          instance.reasonReference?.map((e) => e?.toJson())?.toList(),
      'note': instance.note?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'series': instance.series?.map((e) => e?.toJson())?.toList(),
    };

ImagingStudy_Series _$ImagingStudy_SeriesFromJson(Map<String, dynamic> json) {
  return ImagingStudy_Series(
    json['modality'] == null
        ? null
        : Coding.fromJson(json['modality'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as String,
    elementUid: json['elementUid'] == null
        ? null
        : Element.fromJson(json['elementUid'] as Map<String, dynamic>),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    numberOfInstances: json['numberOfInstances'] as int,
    elementNumberOfInstances: json['elementNumberOfInstances'] == null
        ? null
        : Element.fromJson(
            json['elementNumberOfInstances'] as Map<String, dynamic>),
    endpoint: (json['endpoint'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : Coding.fromJson(json['bodySite'] as Map<String, dynamic>),
    laterality: json['laterality'] == null
        ? null
        : Coding.fromJson(json['laterality'] as Map<String, dynamic>),
    specimen: (json['specimen'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    started: json['started'] == null
        ? null
        : DateTime.parse(json['started'] as String),
    elementStarted: json['elementStarted'] == null
        ? null
        : Element.fromJson(json['elementStarted'] as Map<String, dynamic>),
    performer: (json['performer'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Performer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    instance: (json['instance'] as List)
        ?.map((e) => e == null
            ? null
            : ImagingStudy_Instance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagingStudy_SeriesToJson(
        ImagingStudy_Series instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uid': instance.uid,
      'elementUid': instance.elementUid?.toJson(),
      'number': instance.number,
      'elementNumber': instance.elementNumber?.toJson(),
      'modality': instance.modality?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'numberOfInstances': instance.numberOfInstances,
      'elementNumberOfInstances': instance.elementNumberOfInstances?.toJson(),
      'endpoint': instance.endpoint?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'laterality': instance.laterality?.toJson(),
      'specimen': instance.specimen?.map((e) => e?.toJson())?.toList(),
      'started': instance.started?.toIso8601String(),
      'elementStarted': instance.elementStarted?.toJson(),
      'performer': instance.performer?.map((e) => e?.toJson())?.toList(),
      'instance': instance.instance?.map((e) => e?.toJson())?.toList(),
    };

ImagingStudy_Performer _$ImagingStudy_PerformerFromJson(
    Map<String, dynamic> json) {
  return ImagingStudy_Performer(
    json['actor'] == null
        ? null
        : Reference.fromJson(json['actor'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    function: json['function'] == null
        ? null
        : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagingStudy_PerformerToJson(
        ImagingStudy_Performer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'function': instance.function?.toJson(),
      'actor': instance.actor?.toJson(),
    };

ImagingStudy_Instance _$ImagingStudy_InstanceFromJson(
    Map<String, dynamic> json) {
  return ImagingStudy_Instance(
    json['sopClass'] == null
        ? null
        : Coding.fromJson(json['sopClass'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    uid: json['uid'] as String,
    elementUid: json['elementUid'] == null
        ? null
        : Element.fromJson(json['elementUid'] as Map<String, dynamic>),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    title: json['title'] as String,
    elementTitle: json['elementTitle'] == null
        ? null
        : Element.fromJson(json['elementTitle'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagingStudy_InstanceToJson(
        ImagingStudy_Instance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'uid': instance.uid,
      'elementUid': instance.elementUid?.toJson(),
      'sopClass': instance.sopClass?.toJson(),
      'number': instance.number,
      'elementNumber': instance.elementNumber?.toJson(),
      'title': instance.title,
      'elementTitle': instance.elementTitle?.toJson(),
    };
