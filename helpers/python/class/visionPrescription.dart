part 'visionPrescription.g.dart';

@JsonSerializable(explicitToJson: true)
class VisionPrescription {

VisionPrescription resourceType;
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
String status;
Element _status;
DateTime created;
Element _created;
Reference patient;
Reference encounter;
DateTime dateWritten;
Element _dateWritten;
Reference prescriber;
List<VisionPrescription_LensSpecification> lensSpecification;

VisionPrescription(
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
      this.created,
      this._created,
      this.patient,
      this.encounter,
      this.dateWritten,
      this._dateWritten,
      this.prescriber,
      this.lensSpecification,
      });

  factory VisionPrescription.fromJson(Map<String, dynamic> json) => _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() _$VisionPrescriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_LensSpecification {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept product;
String eye; // <code> enum: right/left;
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
      this.note,
      });

  factory VisionPrescription_LensSpecification.fromJson(Map<String, dynamic> json) => _$VisionPrescription_LensSpecificationFromJson(json);
  Map<String, dynamic> toJson() _$VisionPrescription_LensSpecificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_Prism {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
double amount;
Element _amount;
String base; // <code> enum: up/down/in/out;
Element _base;

VisionPrescription_Prism(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.amount,
      this._amount,
      this.base,
      this._base,
      });

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) => _$VisionPrescription_PrismFromJson(json);
  Map<String, dynamic> toJson() _$VisionPrescription_PrismToJson(this);
}

