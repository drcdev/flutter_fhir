

part 'device_Property.g.dart';

@JsonSerializable(explicitToJson: true)
class Device_Property {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  List<Quantity> valueQuantity;
  List<CodeableConcept> valueCode;


Device_Property(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this.valueQuantity,
this.valueCode});

  factory Device_Property.fromJson(Map<String, dynamic> json) => _$Device_PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$Device_PropertyToJson(this);
}