

part 'deviceUseStatement.g.dart';

@JsonSerializable(explicitToJson: true)
class DeviceUseStatement {

  This is a DeviceUseStatement resource resourceType;
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
  enum: activecompletedentered-in-errorintendedstoppedon-hold status;
  Element _status;
  Reference subject;
  List<Reference> derivedFrom;
  Timing timingTiming;
  Period timingPeriod;
  String timingDateTime;
  Element _timingDateTime;
  StringTime recordedOn;
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
this.note});

  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) => _$DeviceUseStatementFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceUseStatementToJson(this);
}