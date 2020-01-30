import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/population.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProductContraindication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication {

//  This is a MedicinalProductContraindication resource
String resourceType;

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
Element element_implicitRules;

//  The base language in which the resource is written.
String language;

//  Extensions for language
Element element_language;

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
List<ResourceList> contained;

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

//  The medication for which this is an indication.
List<Reference> subject;

//  The disease, symptom or procedure for the contraindication.
CodeableConcept disease;

//  The status of the disease or symptom for the contraindication.
CodeableConcept diseaseStatus;

//  A comorbidity (concurrent condition) or coinfection.
List<CodeableConcept> comorbidity;

//  Information about the use of the medicinal product in relation to
// other therapies as part of the indication.
List<Reference> therapeuticIndication;

//  Information about the use of the medicinal product in relation to
// other therapies described as part of the indication.
List<MedicinalProductContraindication_OtherTherapy> otherTherapy;

//  The population group to which this applies.
List<Population> population;

MedicinalProductContraindication(
  {this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.subject,
    this.disease,
    this.diseaseStatus,
    this.comorbidity,
    this.therapeuticIndication,
    this.otherTherapy,
    this.population
    });

  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductContraindication_OtherTherapy {

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

//  The type of relationship between the medicinal product indication or
// contraindication and another therapy.
CodeableConcept therapyRelationshipType;

//  Reference to a specific medication (active substance, medicinal
// product or class of products) as part of an indication or
// contraindication.
CodeableConcept medicationCodeableConcept;

//  Reference to a specific medication (active substance, medicinal
// product or class of products) as part of an indication or
// contraindication.
Reference medicationReference;

MedicinalProductContraindication_OtherTherapy(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.therapyRelationshipType,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductContraindication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductContraindication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductContraindication_OtherTherapyToJson(this);
}

