

part 'imagingStudy_Series.g.dart';

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
  StringTime started;
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
this.instance});

  factory ImagingStudy_Series.fromJson(Map<String, dynamic> json) => _$ImagingStudy_SeriesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_SeriesToJson(this);
}