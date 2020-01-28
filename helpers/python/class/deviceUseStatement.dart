part 'deviceUseStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceUseStatement {

DeviceUseStatement resourceType;
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
List<Reference> basedOn;
String status; // <code> enum: active/completed/entered-in-error/intended/stopped/on-hold;
Element _status;
Reference subject;
List<Reference> derivedFrom;
Timing timingTiming;
Period timingPeriod;
String timingDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _timingDateTime;
DateTime recordedOn;
Element _recordedOn;
Reference source;
Reference device;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
CodeableConcept bodySite;
List<Annotation> note;

DeviceUseStatement(
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
      this.basedOn,
      this.status,
      this._status,
      this.subject,
      this.derivedFrom,
      this.timingTiming,
      this.timingPeriod,
      this.timingDateTime,
      this._timingDateTime,
      this.recordedOn,
      this._recordedOn,
      this.source,
      this.device,
      this.reasonCode,
      this.reasonReference,
      this.bodySite,
      this.note,
      });

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) => _$DeviceUseStatementFromJson(json);
  Map<String, dynamic> toJson() _$DeviceUseStatementToJson(this);
}

