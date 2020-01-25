

part 'visionPrescription.g.dart';

@JsonSerializable(explicitToJson: true)
class VisionPrescription {

  This is a VisionPrescription resource resourceType;
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
  String status;
  Element _status;
  StringTime created;
  Element _created;
  Reference patient;
  Reference encounter;
  StringTime dateWritten;
  Element _dateWritten;
  Reference prescriber;
  List<VisionPrescription_LensSpecification> lensSpecification;


VisionPrescription(
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
this.status,
this._status,
this.created,
this._created,
this.patient,
this.encounter,
this.dateWritten,
this._dateWritten,
this.prescriber,
this.lensSpecification});

  factory VisionPrescription.fromJson(Map<String, dynamic> json) => _$VisionPrescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$VisionPrescriptionToJson(this);
}