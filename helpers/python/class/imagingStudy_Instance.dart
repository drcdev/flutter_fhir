

part 'imagingStudy_Instance.g.dart';

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
this._title});

  factory ImagingStudy_Instance.fromJson(Map<String, dynamic> json) => _$ImagingStudy_InstanceFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_InstanceToJson(this);
}