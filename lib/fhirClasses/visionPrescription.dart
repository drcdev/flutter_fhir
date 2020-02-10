import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

part 'visionPrescription.g.dart';

@JsonSerializable(explicitToJson: true)
class VisionPrescription {

  //  This is a VisionPrescription resource
  final String resourceType= 'VisionPrescription';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  List<Extension> modifierExtension;

  //  A unique identifier assigned to this vision prescription.
  List<Identifier> identifier;

  //  The status of the resource instance.
  String status;

  //  Extensions for status
  Element elementStatus;

  //  The date this resource was created.
  DateTime created;

  //  Extensions for created
  Element elementCreated;

  //  A resource reference to the person to whom the vision prescription
  // applies.
  Reference patient;

  //  A reference to a resource that identifies the particular occurrence of
  // contact between patient and health care provider during which the
  // prescription was issued.
  Reference encounter;

  //  The date (and perhaps time) when the prescription was written.
  DateTime dateWritten;

  //  Extensions for dateWritten
  Element elementDateWritten;

  //  The healthcare professional responsible for authorizing the
  // prescription.
  Reference prescriber;

  //  Contain the details of  the individual lens specifications and serves
  // as the authorization for the fullfillment by certified professionals.
  List<VisionPrescription_LensSpecification> lensSpecification;

VisionPrescription(
  this.patient,
    this.prescriber,
    this.lensSpecification,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.created,
    this.elementCreated,
    this.encounter,
    this.dateWritten,
    this.elementDateWritten
    });

  factory VisionPrescription.fromJson(Map<String, dynamic> json) => _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_LensSpecification {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Identifies the type of vision correction product which is required for
  // the patient.
  CodeableConcept product;

  //  The eye for which the lens specification applies.
  String eye; // <code> enum: right/left;

  //  Extensions for eye
  Element elementEye;

  //  Lens power measured in dioptres (0.25 units).
  double sphere;

  //  Extensions for sphere
  Element elementSphere;

  //  Power adjustment for astigmatism measured in dioptres (0.25 units).
  double cylinder;

  //  Extensions for cylinder
  Element elementCylinder;

  //  Adjustment for astigmatism measured in integer degrees.
  int axis;

  //  Extensions for axis
  Element elementAxis;

  //  Allows for adjustment on two axis.
  List<VisionPrescription_Prism> prism;

  //  Power adjustment for multifocal lenses measured in dioptres (0.25
  // units).
  double add;

  //  Extensions for add
  Element elementAdd;

  //  Contact lens power measured in dioptres (0.25 units).
  double power;

  //  Extensions for power
  Element elementPower;

  //  Back curvature measured in millimetres.
  double backCurve;

  //  Extensions for backCurve
  Element elementBackCurve;

  //  Contact lens diameter measured in millimetres.
  double diameter;

  //  Extensions for diameter
  Element elementDiameter;

  //  The recommended maximum wear period for the lens.
  Quantity duration;

  //  Special color or pattern.
  String color;

  //  Extensions for color
  Element elementColor;

  //  Brand recommendations or restrictions.
  String brand;

  //  Extensions for brand
  Element elementBrand;

  //  Notes for special requirements such as coatings and lens materials.
  List<Annotation> note;

VisionPrescription_LensSpecification(
  this.product,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.eye,
    this.elementEye,
    this.sphere,
    this.elementSphere,
    this.cylinder,
    this.elementCylinder,
    this.axis,
    this.elementAxis,
    this.prism,
    this.add,
    this.elementAdd,
    this.power,
    this.elementPower,
    this.backCurve,
    this.elementBackCurve,
    this.diameter,
    this.elementDiameter,
    this.duration,
    this.color,
    this.elementColor,
    this.brand,
    this.elementBrand,
    this.note
    });

  factory VisionPrescription_LensSpecification.fromJson(Map<String, dynamic> json) => _$VisionPrescription_LensSpecificationFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_LensSpecificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VisionPrescription_Prism {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Amount of prism to compensate for eye alignment in fractional units.
  double amount;

  //  Extensions for amount
  Element elementAmount;

  //  The relative base, or reference lens edge, for the prism.
  String base; // <code> enum: up/down/in/out;

  //  Extensions for base
  Element elementBase;

VisionPrescription_Prism(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.amount,
    this.elementAmount,
    this.base,
    this.elementBase
    });

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) => _$VisionPrescription_PrismFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescription_PrismToJson(this);
}

