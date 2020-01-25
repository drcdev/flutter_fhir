

part 'measureReport_Component.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport_Component {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept code;
  CodeableConcept value;


MeasureReport_Component(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.value});

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) => _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_ComponentToJson(this);
}