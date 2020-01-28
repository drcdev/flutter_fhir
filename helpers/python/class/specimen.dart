part 'specimen.g.dart';

@JsonSerializable(explicitToJson: true)
class Specimen {

Specimen resourceType;
String id;
Meta meta;
String implicitRules;
Element _implicitRules;
String language;
Element _language;
Narrative text;
List<ResourceList> contained;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
Identifier accessionIdentifier;
String status; // <code> enum: available/unavailable/unsatisfactory/entered-in-error;
Element _status;
CodeableConcept type;
Reference subject;
DateTime receivedTime;
Element _receivedTime;
List<Reference> parent;
List<Reference> request;
Specimen_Collection collection;
List<Specimen_Processing> processing;
List<Specimen_Container> container;
List<CodeableConcept> condition;
List<Annotation> note;

Specimen(
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
      this.accessionIdentifier,
      this.status,
      this._status,
      this.type,
      this.subject,
      this.receivedTime,
      this._receivedTime,
      this.parent,
      this.request,
      this.collection,
      this.processing,
      this.container,
      this.condition,
      this.note,
      });

  factory Specimen.fromJson(Map<String, dynamic> json) => _$SpecimenFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Collection {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference collector;
String collectedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _collectedDateTime;
Period collectedPeriod;
Duration duration;
Quantity quantity;
CodeableConcept method;
CodeableConcept bodySite;
CodeableConcept fastingStatusCodeableConcept;
Duration fastingStatusDuration;

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
      this.fastingStatusDuration,
      });

  factory Specimen_Collection.fromJson(Map<String, dynamic> json) => _$Specimen_CollectionFromJson(json);
  Map<String, dynamic> toJson() _$Specimen_CollectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Processing {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String description;
Element _description;
CodeableConcept procedure;
List<Reference> additive;
String timeDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timeDateTime;
Period timePeriod;

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
      this.timePeriod,
      });

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) => _$Specimen_ProcessingFromJson(json);
  Map<String, dynamic> toJson() _$Specimen_ProcessingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Specimen_Container {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
String description;
Element _description;
CodeableConcept type;
Quantity capacity;
Quantity specimenQuantity;
CodeableConcept additiveCodeableConcept;
Reference additiveReference;

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
      this.additiveReference,
      });

  factory Specimen_Container.fromJson(Map<String, dynamic> json) => _$Specimen_ContainerFromJson(json);
  Map<String, dynamic> toJson() _$Specimen_ContainerToJson(this);
}

