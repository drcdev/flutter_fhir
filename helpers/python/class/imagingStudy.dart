

part 'imagingStudy.g.dart';

@JsonSerializable(explicitToJson: true)
class ImagingStudy {

  This is a ImagingStudy resource resourceType;
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
  enum: registeredavailablecancelledentered-in-errorunknown status;
  Element _status;
  List<Coding> modality;
  Reference subject;
  Reference encounter;
  StringTime started;
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
this.series});

  factory ImagingStudy.fromJson(Map<String, dynamic> json) => _$ImagingStudyFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudyToJson(this);
}