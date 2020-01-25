

part 'coverage_Exception.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Period period;


Coverage_Exception(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.period});

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) => _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$Coverage_ExceptionToJson(this);
}