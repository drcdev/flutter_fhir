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

part 'imagingStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ImagingStudy {

  //  This is a ImagingStudy resource
  final String resourceType= 'ImagingStudy';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
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
  List<Extension> modifierExtension;

  //  Identifiers for the ImagingStudy such as DICOM Study Instance UID, and
  // Accession Number.
  List<Identifier> identifier;

  //  The current state of the ImagingStudy.
  String status; // <code> enum: registered/available/cancelled/entered-in-error/unknown;

  //  Extensions for status
  Element elementStatus;

  //  A list of all the series.modality values that are actual acquisition
  // modalities, i.e. those in the DICOM Context Group 29 (value set OID
  // 1.2.840.10008.6.1.19).
  List<Coding> modality;

  //  The subject, typically a patient, of the imaging study.
  Reference subject;

  //  The healthcare event (e.g. a patient and healthcare provider
  // interaction) during which this ImagingStudy is made.
  Reference encounter;

  //  Date and time the study started.
  DateTime started;

  //  Extensions for started
  Element elementStarted;

  //  A list of the diagnostic requests that resulted in this imaging study
  // being performed.
  List<Reference> basedOn;

  //  The requesting/referring physician.
  Reference referrer;

  //  Who read the study and interpreted the images or other content.
  List<Reference> interpreter;

  //  The network service providing access (e.g., query, view, or retrieval)
  // for the study. See implementation notes for information about using
  // DICOM endpoints. A study-level endpoint applies to each series in the
  // study, unless overridden by a series-level endpoint with the same
  // Endpoint.connectionType.
  List<Reference> endpoint;

  //  Number of Series in the Study. This value given may be larger than the
  // number of series elements this Resource contains due to resource
  // availability, security, or other factors. This element should be
  // present if any series elements are present.
  int numberOfSeries;

  //  Extensions for numberOfSeries
  Element elementNumberOfSeries;

  //  Number of SOP Instances in Study. This value given may be larger than
  // the number of instance elements this resource contains due to resource
  // availability, security, or other factors. This element should be
  // present if any instance elements are present.
  int numberOfInstances;

  //  Extensions for numberOfInstances
  Element elementNumberOfInstances;

  //  The procedure which this ImagingStudy was part of.
  Reference procedureReference;

  //  The code for the performed procedure type.
  List<CodeableConcept> procedureCode;

  //  The principal physical location where the ImagingStudy was performed.
  Reference location;

  //  Description of clinical condition indicating why the ImagingStudy was
  // requested.
  List<CodeableConcept> reasonCode;

  //  Indicates another resource whose existence justifies this Study.
  List<Reference> reasonReference;

  //  Per the recommended DICOM mapping, this element is derived from the
  // Study Description attribute (0008,1030). Observations or findings about
  // the imaging study should be recorded in another resource, e.g.
  // Observation, and not in this element.
  List<Annotation> note;

  //  The Imaging Manager description of the study. Institution-generated
  // description or classification of the Study (component) performed.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Each study has one or more series of images or other content.
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

