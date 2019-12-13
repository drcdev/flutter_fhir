// import 'reasonCode.dart';
// import 'performer.dart';
// import 'period.dart';
// import 'Reference.dart';
// import 'Reference.dart';
// import 'Reference.dart';
// import 'Reference.dart';
// import 'codeableConcept.dart';
// import 'codeableConcept.dart';
// import 'codeableConcept.dart';
// import 'Reference.dart';
// import 'identifier.dart';
// import 'package:json_annotation/json_annotation.dart';
// part 'medicationAdministration.g.dart';

// @JsonSerializable(explicitToJson: true)
// class MedicationAdministration {
//   String resourceType;
//    // from Resource: id, meta, implicitRules, and language
//    // from DomainResource: text, contained, extension, and modifierExtension
//   List<identifier> identifier;   // External identifier
//   List<uri> ;   // Instantiates protocol or definition
//   List<Reference> partOf;  //**##oRR##** // Part of referenced event
//   String status;   // R!  in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown
//   List<codeableConcept> statusReason;   // Reason administration not performed
//   List<codeableConcept> category;   // Type of medication usage
//    // medication[x]: What was administered. One of these 2:
//   List<codeableConcept> medicationCodeableConcept;   
//   List<Reference> medicationReference;  //**##oRR##** 
//   List<Reference> subject;  //**##oRR##** // R!  Who received medication
//   List<Reference> context;  //**##oRR##** // Encounter or Episode of Care administered as part of
//   List<Reference> supportingInformation;  //**##oRR##** // Additional information to support administration
//    // effective[x]: Start and end time of administration. One of these 2:
//   String effectiveDateTime;   
//   List<period> effectivePeriod;   
//   List<performer> performer;   // Who performed the medication administration and what they did
//   List<reasonCode> reasonCode;  // Reason administration performed

//   MedicationAdministration({this.identifier, this.instantiates, this.partOf, this.status, this.statusReason, this.category, this.medicationCodeableConcept, this.medicationReference, this.subject, this.context, this.supportingInformation, this.effectiveDateTime, this.effectivePeriod, this.performer, this.reasonCode});

//   factory MedicationAdministration.fromJson(Map<String, dynamic> json) => _$MedicationAdministrationFromJson(json);
//   Map<String, dynamic> toJson() => _$MedicationAdministrationToJson(this);
// }
