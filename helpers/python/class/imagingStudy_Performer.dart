

part 'imagingStudy_Performer.g.dart';

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
this.actor});

  factory ImagingStudy_Performer.fromJson(Map<String, dynamic> json) => _$ImagingStudy_PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$ImagingStudy_PerformerToJson(this);
}