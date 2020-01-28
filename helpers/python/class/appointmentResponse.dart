part 'appointmentResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class AppointmentResponse {

AppointmentResponse resourceType;
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
Reference appointment;
DateTime start;
Element _start;
DateTime end;
Element _end;
List<CodeableConcept> participantType;
Reference actor;
String participantStatus;
Element _participantStatus;
String comment;
Element _comment;

AppointmentResponse(
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
      this.appointment,
      this.start,
      this._start,
      this.end,
      this._end,
      this.participantType,
      this.actor,
      this.participantStatus,
      this._participantStatus,
      this.comment,
      this._comment,
      });

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) => _$AppointmentResponseFromJson(json);
  Map<String, dynamic> toJson() _$AppointmentResponseToJson(this);
}

