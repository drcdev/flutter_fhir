import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:json_annotation/json_annotation.dart';
part 'encounter.g.dart';

@JsonSerializable(explicitToJson: true)
class Encounter {
  String resourceType;
  List<Identifier> identifier;
  String status;
  List<StatusHistory> statusHistory;
  String classs;
  List<ClassHistory> classHistory;
  List<CodeableConcept> type;
  CodeableConcept serviceType;
  CodeableConcept priority;
  Patient subject;
  List<EpisodeOfCare> episodeOfCare;
  List<ServiceRequest> basedOn;
  List<Participant> participant;
  List<Appointment> appointment;
  Period period;
  int length;
  List<CodeableConcept> reasonCode;
//  List<String> reasonReference;
//  List<Diagnosis> diagnosis;
//  List<String> account;
//  Hospitalization hospitalization;
//  List<Location> location;
//  String serviceProvider;
//  String partOf;

  Encounter({this.resourceType});
  //Encounter({this.resourceType, this.identifier, this.status, this.statusHistory, this.class, this.classHistory, this.type, this.serviceType, this.priority, this.subject, this.episodeOfCare, this.basedOn, this.participant, this.appointment, this.period, this.length, this.reasonCode, this.reasonReference, this.diagnosis, this.account, this.hospitalization, this.location, this.serviceProvider, this.partOf});

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}