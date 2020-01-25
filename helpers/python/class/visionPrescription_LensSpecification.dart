

part 'visionPrescription_LensSpecification.g.dart';

@JsonSerializable(explicitToJson: true)
class VisionPrescription_LensSpecification {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept product;
  enum: rightleft eye;
  Element _eye;
  double sphere;
  Element _sphere;
  double cylinder;
  Element _cylinder;
  int axis;
  Element _axis;
  List<VisionPrescription_Prism> prism;
  double add;
  Element _add;
  double power;
  Element _power;
  double backCurve;
  Element _backCurve;
  double diameter;
  Element _diameter;
  Quantity duration;
  String color;
  Element _color;
  String brand;
  Element _brand;
  List<Annotation> note;


VisionPrescription_LensSpecification(
      {this.id,
this.extension,
this.modifierExtension,
this.product,
this.eye,
this._eye,
this.sphere,
this._sphere,
this.cylinder,
this._cylinder,
this.axis,
this._axis,
this.prism,
this.add,
this._add,
this.power,
this._power,
this.backCurve,
this._backCurve,
this.diameter,
this._diameter,
this.duration,
this.color,
this._color,
this.brand,
this._brand,
this.note});

  factory VisionPrescription_LensSpecification.fromJson(Map<String, dynamic> json) => _$VisionPrescription_LensSpecificationFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_LensSpecificationToJson(this);
}