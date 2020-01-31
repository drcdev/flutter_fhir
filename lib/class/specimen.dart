import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'specimen.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen {

  //  This is a Specimen resource
  final String resourceType= 'Specimen';

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
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

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
  List<ResourceList> contained;

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

  //  Id for specimen.
  List<Identifier> identifier;

  //  The identifier assigned by the lab when accessioning specimen(s). This
  // is not necessarily the same as the specimen identifier, depending on
  // local lab procedures.
  Identifier accessionIdentifier;

  //  The availability of the specimen.
  String status; // <code> enum: available/unavailable/unsatisfactory/entered-in-error;

  //  Extensions for status
  Element element_status;

  //  The kind of material that forms the specimen.
  CodeableConcept type;

  //  Where the specimen came from. This may be from patient(s), from a
  // location (e.g., the source of an environmental sample), or a sampling
  // of a substance or a device.
  Reference subject;

  //  Time when specimen was received for processing or testing.
  DateTime receivedTime;

  //  Extensions for receivedTime
  Element element_receivedTime;

  //  Reference to the parent (source) specimen which is used when the
  // specimen was either derived from or a component of another specimen.
  List<Reference> parent;

  //  Details concerning a service request that required a specimen to be
  // collected.
  List<Reference> request;

  //  Details concerning the specimen collection.
  Specimen_Collection collection;

  //  Details concerning processing and processing steps for the specimen.
  List<Specimen_Processing> processing;

  //  The container holding the specimen.  The recursive nature of
  // containers; i.e. blood in tube in tray in rack is not addressed here.
  List<Specimen_Container> container;

  //  A mode or state of being that describes the nature of the specimen.
  List<CodeableConcept> condition;

  //  To communicate any details or issues about the specimen or during the
  // specimen collection. (for example: broken vial, sent with patient,
  // frozen).
  List<Annotation> note;

Specimen(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.accessionIdentifier,
    this.status,
    this.element_status,
    this.type,
    this.subject,
    this.receivedTime,
    this.element_receivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note
    });

  factory Specimen.fromJson(Map<String, dynamic> json) => _$SpecimenFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {

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

  //  Person who collected the specimen.
  Reference collector;

  //  Time when specimen was collected from subject - the physiologically
  // relevant time.
  String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for collectedDateTime
  Element element_collectedDateTime;

  //  Time when specimen was collected from subject - the physiologically
  // relevant time.
  Period collectedPeriod;

  //  The span of time over which the collection of a specimen occurred.
  Duration duration;

  //  The quantity of specimen collected; for instance the volume of a blood
  // sample, or the physical measurement of an anatomic pathology sample.
  Quantity quantity;

  //  A coded value specifying the technique that is used to perform the
  // procedure.
  CodeableConcept method;

  //  Anatomical location from which the specimen was collected (if subject
  // is a patient). This is the target site.  This element is not used for
  // environmental specimens.
  CodeableConcept bodySite;

  //  Abstinence or reduction from some or all food, drink, or both, for a
  // period of time prior to sample collection.
  CodeableConcept fastingStatusCodeableConcept;

  //  Abstinence or reduction from some or all food, drink, or both, for a
  // period of time prior to sample collection.
  Duration fastingStatusDuration;

Specimen_Collection(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.element_collectedDateTime,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration
    });

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) => _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Processing {

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

  //  Textual description of procedure.
  String description;

  //  Extensions for description
  Element element_description;

  //  A coded value specifying the procedure used to process the specimen.
  CodeableConcept procedure;

  //  Material used in the processing step.
  List<Reference> additive;

  //  A record of the time or period when the specimen processing occurred. 
  // For example the time of sample fixation or the period of time the
  // sample was in formalin.
  String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for timeDateTime
  Element element_timeDateTime;

  //  A record of the time or period when the specimen processing occurred. 
  // For example the time of sample fixation or the period of time the
  // sample was in formalin.
  Period timePeriod;

Specimen_Processing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.element_description,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.element_timeDateTime,
    this.timePeriod
    });

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) => _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Container {

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

  //  Id for container. There may be multiple; a manufacturer's bar code,
  // lab assigned identifier, etc. The container ID may differ from the
  // specimen id in some circumstances.
  List<Identifier> identifier;

  //  Textual description of the container.
  String description;

  //  Extensions for description
  Element element_description;

  //  The type of container associated with the specimen (e.g. slide,
  // aliquot, etc.).
  CodeableConcept type;

  //  The capacity (volume or other measure) the container may contain.
  Quantity capacity;

  //  The quantity of specimen in the container; may be volume, dimensions,
  // or other appropriate measurements, depending on the specimen type.
  Quantity specimenQuantity;

  //  Introduced substance to preserve, maintain or enhance the specimen.
  // Examples: Formalin, Citrate, EDTA.
  CodeableConcept additiveCodeableConcept;

  //  Introduced substance to preserve, maintain or enhance the specimen.
  // Examples: Formalin, Citrate, EDTA.
  Reference additiveReference;

Specimen_Container(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.description,
    this.element_description,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference
    });

  factory Specimen_Container.fromJson(Map<String, dynamic> json) => _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ContainerToJson(this);
}

