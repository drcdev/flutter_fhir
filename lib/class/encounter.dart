import 'package:flutter_fhir/class/account.dart';
import 'package:flutter_fhir/class/appointment.dart';
import 'package:flutter_fhir/class/classHistory.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/diagnosis.dart';
import 'package:flutter_fhir/class/episodeOfCare.dart';
import 'package:flutter_fhir/class/hospitalization.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/location.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/statusHistory.dart';
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
  List<Reference> reasonReference;
  List<Diagnosis> diagnosis;
  List<Account> account;
  Hospitalization hospitalization;
  List<Location> location;
  Reference serviceProvider;
  Reference partOf;

  Encounter({this.resourceType, this.identifier, this.status, this.statusHistory, this.classs, this.classHistory, this.type, this.serviceType, this.priority, this.subject, this.episodeOfCare, this.basedOn, this.participant, this.appointment, this.period, this.length, this.reasonCode, this.reasonReference, this.diagnosis, this.account, this.hospitalization, this.location, this.serviceProvider, this.partOf});

  factory Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);
  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}