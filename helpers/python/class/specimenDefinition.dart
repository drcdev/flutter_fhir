
part 'specimenDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition {
  
  // This is a SpecimenDefinition 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A business identifier associated with the kind of specimen.
  Identifier identifier;

  // The kind of material to be collected.
  CodeableConcept typeCollected;

  // Preparation of the patient for specimen collection.
  List<CodeableConcept patientPreparation;

  // Time aspect of specimen collection (duration or offset).
  String timeAspect;

  // Extensions for timeAspect
  Element _timeAspect;

  // The action to be performed for collecting the specimen.
  List<CodeableConcept collection;

  // Specimen conditioned in a container as expected by the testing laboratory.
  List<SpecimenDefinition_TypeTested typeTested
SpecimenDefinition(
      {this.resourceType,
this.id,
this.meta,
this.implicitRules,
this._implicitRules,
this.language,
this._language,
this.text,
this.contained,
this.extension,
this.modifierExtension,
this.identifier,
this.typeCollected,
this.patientPreparation,
this.timeAspect,
this._timeAspect,
this.collection,
this.typeTested});

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) => _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Additive {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Substance introduced in the kind of container to preserve, maintain or
  //  enhance the specimen. Examples: Formalin, Citrate, EDTA.
  CodeableConcept additiveCodeableConcept;

  // Substance introduced in the kind of container to preserve, maintain or
  //  enhance the specimen. Examples: Formalin, Citrate, EDTA.
  Reference additiveReference
SpecimenDefinition_Additive(
      {this.id,
this.extension,
this.modifierExtension,
this.additiveCodeableConcept,
this.additiveReference});

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_AdditiveToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Container {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The type of material of the container.
  CodeableConcept material;

  // The type of container used to contain this kind of specimen.
  CodeableConcept type;

  // Color of container cap.
  CodeableConcept cap;

  // The textual description of the kind of container.
  String description;

  // Extensions for description
  Element _description;

  // The capacity (volume or other measure) of this kind of container.
  Quantity capacity;

  // The minimum volume to be conditioned in the container.
  Quantity minimumVolumeQuantity;

  // The minimum volume to be conditioned in the container. string
  //  minimumVolumeString;

  // Extensions for minimumVolumeString
  Element _minimumVolumeString;

  // Substance introduced in the kind of container to preserve, maintain or
  //  enhance the specimen. Examples: Formalin, Citrate, EDTA.
  List<SpecimenDefinition_Additive additive;

  // Special processing that should be applied to the container for this kind of
  //  specimen.
  String preparation;

  // Extensions for preparation
  Element _preparation
SpecimenDefinition_Container(
      {this.id,
this.extension,
this.modifierExtension,
this.material,
this.type,
this.cap,
this.description,
this._description,
this.capacity,
this.minimumVolumeQuantity,
this.minimumVolumeString,
this._minimumVolumeString,
this.additive,
this.preparation,
this._preparation});

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_ContainerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Handling {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // It qualifies the interval of temperature, which characterizes an occurrence
  //  of handling. Conditions that are not related to temperature may be handled in
  //  the instruction element.
  CodeableConcept temperatureQualifier;

  // The temperature interval for this set of handling instructions.
  Range temperatureRange;

  // The maximum time interval of preservation of the specimen with these
  //  conditions.
  Duration maxDuration;

  // Additional textual instructions for the preservation or transport of the
  //  specimen. For instance, 'Protect from light exposure'.
  String instruction;

  // Extensions for instruction
  Element _instruction
SpecimenDefinition_Handling(
      {this.id,
this.extension,
this.modifierExtension,
this.temperatureQualifier,
this.temperatureRange,
this.maxDuration,
this.instruction,
this._instruction});

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_HandlingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_TypeTested {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Primary of secondary specimen.
  bool isDerived;

  // Extensions for isDerived
  Element _isDerived;

  // The kind of specimen conditioned for testing expected by lab.
  CodeableConcept type;

  // The preference for this type of conditioned specimen.Enum enum; //
  //  preferredalternate preference;

  // Extensions for preference
  Element _preference;

  // The specimen's container.
  SpecimenDefinition_Container container;

  // Requirements for delivery and special handling of this kind of conditioned
  //  specimen.
  String requirement;

  // Extensions for requirement
  Element _requirement;

  // The usual time that a specimen of this kind is retained after the ordered
  //  tests are completed, for the purpose of additional testing.
  Duration retentionTime;

  // Criterion for rejection of the specimen in its container by the laboratory.
  List<CodeableConcept rejectionCriterion;

  // Set of instructions for preservation/transport of the specimen at a defined
  //  temperature interval, prior the testing process.
  List<SpecimenDefinition_Handling handling
SpecimenDefinition_TypeTested(
      {this.id,
this.extension,
this.modifierExtension,
this.isDerived,
this._isDerived,
this.type,
this.preference,
this._preference,
this.container,
this.requirement,
this._requirement,
this.retentionTime,
this.rejectionCriterion,
this.handling});

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() => _$SpecimenDefinition_TypeTestedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Person who collected the specimen.
  Reference collector;

  // Time when specimen was collected from subject - the physiologically
  //  relevant time. string collectedDateTime;

  // Extensions for collectedDateTime
  Element _collectedDateTime;

  // Time when specimen was collected from subject - the physiologically
  //  relevant time.
  Period collectedPeriod;

  // The span of time over which the collection of a specimen occurred.
  Duration duration;

  // The quantity of specimen collected; for instance the volume of a blood
  //  sample, or the physical measurement of an anatomic pathology sample.
  Quantity quantity;

  // A coded value specifying the technique that is used to perform the
  //  procedure.
  CodeableConcept method;

  // Anatomical location from which the specimen was collected (if subject is a
  //  patient). This is the target site.  This element is not used for environmental
  //  specimens.
  CodeableConcept bodySite;

  // Abstinence or reduction from some or all food, drink, or both, for a period
  //  of time prior to sample collection.
  CodeableConcept fastingStatusCodeableConcept;

  // Abstinence or reduction from some or all food, drink, or both, for a period
  //  of time prior to sample collection.
  Duration fastingStatusDuration
Specimen_Collection(
      {this.id,
this.extension,
this.modifierExtension,
this.collector,
this.collectedDateTime,
this._collectedDateTime,
this.collectedPeriod,
this.duration,
this.quantity,
this.method,
this.bodySite,
this.fastingStatusCodeableConcept,
this.fastingStatusDuration});

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) => _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Container {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Id for container. There may be multiple; a manufacturer's bar code, lab
  //  assigned identifier, etc. The container ID may differ from the specimen id in
  //  some circumstances.
  List<Identifier identifier;

  // Textual description of the container.
  String description;

  // Extensions for description
  Element _description;

  // The type of container associated with the specimen (e.g. slide, aliquot,
  //  etc.).
  CodeableConcept type;

  // The capacity (volume or other measure) the container may contain.
  Quantity capacity;

  // The quantity of specimen in the container; may be volume, dimensions, or
  //  other appropriate measurements, depending on the specimen type.
  Quantity specimenQuantity;

  // Introduced substance to preserve, maintain or enhance the specimen.
  //  Examples: Formalin, Citrate, EDTA.
  CodeableConcept additiveCodeableConcept;

  // Introduced substance to preserve, maintain or enhance the specimen.
  //  Examples: Formalin, Citrate, EDTA.
  Reference additiveReference
Specimen_Container(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.description,
this._description,
this.type,
this.capacity,
this.specimenQuantity,
this.additiveCodeableConcept,
this.additiveReference});

  factory Specimen_Container.fromJson(Map<String, dynamic> json) => _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ContainerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Processing {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Textual description of procedure.
  String description;

  // Extensions for description
  Element _description;

  // A coded value specifying the procedure used to process the specimen.
  CodeableConcept procedure;

  // Material used in the processing step.
  List<Reference additive;

  // A record of the time or period when the specimen processing occurred.  For
  //  example the time of sample fixation or the period of time the sample was in
  //  formalin. string timeDateTime;

  // Extensions for timeDateTime
  Element _timeDateTime;

  // A record of the time or period when the specimen processing occurred.  For
  //  example the time of sample fixation or the period of time the sample was in
  //  formalin.
  Period timePeriod
Specimen_Processing(
      {this.id,
this.extension,
this.modifierExtension,
this.description,
this._description,
this.procedure,
this.additive,
this.timeDateTime,
this._timeDateTime,
this.timePeriod});

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) => _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() => _$Specimen_ProcessingToJson(this);
}
