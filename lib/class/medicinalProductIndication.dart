import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/population.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'medicinalProductIndication.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication {

  //  This is a MedicinalProductIndication resource
  final String resourceType= 'MedicinalProductIndication';

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

  //  The medication for which this is an indication.
  List<Reference> subject;

  //  The disease, symptom or procedure that is the indication for
  // treatment.
  CodeableConcept diseaseSymptomProcedure;

  //  The status of the disease or symptom for which the indication applies.
  CodeableConcept diseaseStatus;

  //  Comorbidity (concurrent condition) or co-infection as part of the
  // indication.
  List<CodeableConcept> comorbidity;

  //  The intended effect, aim or strategy to be achieved by the indication.
  CodeableConcept intendedEffect;

  //  Timing or duration information as part of the indication.
  Quantity duration;

  //  Information about the use of the medicinal product in relation to
  // other therapies described as part of the indication.
  List<MedicinalProductIndication_OtherTherapy> otherTherapy;

  //  Describe the undesirable effects of the medicinal product.
  List<Reference> undesirableEffect;

  //  The population group to which this applies.
  List<Population> population;

MedicinalProductIndication(
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
    this.subject,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.duration,
    this.otherTherapy,
    this.undesirableEffect,
    this.population
    });

  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndicationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProductIndication_OtherTherapy {

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

MedicinalProductIndication_OtherTherapy(
  this.therapyRelationshipType,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.medicationCodeableConcept,
    this.medicationReference
    });

  factory MedicinalProductIndication_OtherTherapy.fromJson(Map<String, dynamic> json) => _$MedicinalProductIndication_OtherTherapyFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductIndication_OtherTherapyToJson(this);
}

