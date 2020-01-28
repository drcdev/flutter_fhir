part 'procedure.g.dart';

@JsonSerializable(explicitToJson: true)
class Procedure {

Procedure resourceType;
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
List<String> instantiatesCanonical;
List<String> instantiatesUri;
List<Element> _instantiatesUri;
List<Reference> basedOn;
List<Reference> partOf;
String status;
Element _status;
CodeableConcept statusReason;
CodeableConcept category;
CodeableConcept code;
Reference subject;
Reference encounter;
String performedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _performedDateTime;
Period performedPeriod;
String performedString; //  pattern: ^[ \r\n\t\S]+$
Element _performedString;
Age performedAge;
Range performedRange;
Reference recorder;
Reference asserter;
List<Procedure_Performer> performer;
Reference location;
List<CodeableConcept> reasonCode;
List<Reference> reasonReference;
List<CodeableConcept> bodySite;
CodeableConcept outcome;
List<Reference> report;
List<CodeableConcept> complication;
List<Reference> complicationDetail;
List<CodeableConcept> followUp;
List<Annotation> note;
List<Procedure_FocalDevice> focalDevice;
List<Reference> usedReference;
List<CodeableConcept> usedCode;

Procedure(
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
      this.instantiatesCanonical,
      this.instantiatesUri,
      this._instantiatesUri,
      this.basedOn,
      this.partOf,
      this.status,
      this._status,
      this.statusReason,
      this.category,
      this.code,
      this.subject,
      this.encounter,
      this.performedDateTime,
      this._performedDateTime,
      this.performedPeriod,
      this.performedString,
      this._performedString,
      this.performedAge,
      this.performedRange,
      this.recorder,
      this.asserter,
      this.performer,
      this.location,
      this.reasonCode,
      this.reasonReference,
      this.bodySite,
      this.outcome,
      this.report,
      this.complication,
      this.complicationDetail,
      this.followUp,
      this.note,
      this.focalDevice,
      this.usedReference,
      this.usedCode,
      });

  factory Procedure.fromJson(Map<String, dynamic> json) => _$ProcedureFromJson(json);
  Map<String, dynamic> toJson() _$ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_Performer {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept function;
Reference actor;
Reference onBehalfOf;

Procedure_Performer(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.function,
      this.actor,
      this.onBehalfOf,
      });

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) => _$Procedure_PerformerFromJson(json);
  Map<String, dynamic> toJson() _$Procedure_PerformerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Procedure_FocalDevice {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept action;
Reference manipulated;

Procedure_FocalDevice(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.action,
      this.manipulated,
      });

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) => _$Procedure_FocalDeviceFromJson(json);
  Map<String, dynamic> toJson() _$Procedure_FocalDeviceToJson(this);
}

