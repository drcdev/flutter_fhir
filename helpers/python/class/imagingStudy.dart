part 'imagingStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ImagingStudy {

ImagingStudy resourceType;
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
String status; // <code> enum: registered/available/cancelled/entered-in-error/unknown;
Element _status;
List<Coding> modality;
Reference subject;
Reference encounter;
DateTime started;
Element _started;
List<Reference> basedOn;
Reference referrer;
List<Reference> interpreter;
List<Reference> endpoint;
int numberOfSeries;
Element _numberOfSeries;
int numberOfInstances;
Element _numberOfInstances;
Reference procedureReference;
List<CodeableConcept> procedureCode;
Reference location;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<Annotation> note;
String description;
Element _description;
List<ImagingStudy_Series> series;

ImagingStudy(
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
      this.status,
      this._status,
      this.modality,
      this.subject,
      this.encounter,
      this.started,
      this._started,
      this.basedOn,
      this.referrer,
      this.interpreter,
      this.endpoint,
      this.numberOfSeries,
      this._numberOfSeries,
      this.numberOfInstances,
      this._numberOfInstances,
      this.procedureReference,
      this.procedureCode,
      this.location,
      this.reasonCode,
      this.reasonReference,
      this.note,
      this.description,
      this._description,
      this.series,
      });

  factory ImagingStudy.fromJson(Map<String, dynamic> json) => _$ImagingStudyFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Series {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uid;
Element _uid;
int number;
Element _number;
Coding modality;
String description;
Element _description;
int numberOfInstances;
Element _numberOfInstances;
List<Reference> endpoint;
Coding bodySite;
Coding laterality;
List<Reference> specimen;
DateTime started;
Element _started;
List<ImagingStudy_Performer> performer;
List<ImagingStudy_Instance> instance;

ImagingStudy_Series(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uid,
      this._uid,
      this.number,
      this._number,
      this.modality,
      this.description,
      this._description,
      this.numberOfInstances,
      this._numberOfInstances,
      this.endpoint,
      this.bodySite,
      this.laterality,
      this.specimen,
      this.started,
      this._started,
      this.performer,
      this.instance,
      });

  factory ImagingStudy_Series.fromJson(Map<String, dynamic> json) => _$ImagingStudy_SeriesFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudy_SeriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;

ImagingStudy_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      });

  factory ImagingStudy_Performer.fromJson(Map<String, dynamic> json) => _$ImagingStudy_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudy_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ImagingStudy_Instance {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String uid;
Element _uid;
Coding sopClass;
int number;
Element _number;
String title;
Element _title;

ImagingStudy_Instance(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.uid,
      this._uid,
      this.sopClass,
      this.number,
      this._number,
      this.title,
      this._title,
      });

  factory ImagingStudy_Instance.fromJson(Map<String, dynamic> json) => _$ImagingStudy_InstanceFromJson(json);
  Map<String, dynamic> toJson() _$ImagingStudy_InstanceToJson(this);
}

