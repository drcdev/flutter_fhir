part 'slot.g.dart';

@JsonSerializable(explicitToJson: true)
class Slot {

Slot resourceType;
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
List<CodeableConcept> serviceCategory;
List<CodeableConcept> serviceType;
List<CodeableConcept> specialty;
CodeableConcept appointmentType;
Reference schedule;
String status; // <code> enum: busy/free/busy-unavailable/busy-tentative/entered-in-error;
Element _status;
DateTime start;
Element _start;
DateTime end;
Element _end;
bool overbooked;
Element _overbooked;
String comment;
Element _comment;

Slot(
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
      this.serviceCategory,
      this.serviceType,
      this.specialty,
      this.appointmentType,
      this.schedule,
      this.status,
      this._status,
      this.start,
      this._start,
      this.end,
      this._end,
      this.overbooked,
      this._overbooked,
      this.comment,
      this._comment,
      });

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
  Map<String, dynamic> toJson() _$SlotToJson(this);
}

