

part 'practitionerRole.g.dart';

@JsonSerializable(explicitToJson: true)
class PractitionerRole {

  This is a PractitionerRole resource resourceType;
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
  bool active;
  Element _active;
  Period period;
  Reference practitioner;
  Reference organization;
  List<CodeableConcept> code;
  List<CodeableConcept> specialty;
  List<Reference> location;
  List<Reference> healthcareService;
  List<ContactPoint> telecom;
  List<PractitionerRole_AvailableTime> availableTime;
  List<PractitionerRole_NotAvailable> notAvailable;
  String availabilityExceptions;
  Element _availabilityExceptions;
  List<Reference> endpoint;


PractitionerRole(
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
this.active,
this._active,
this.period,
this.practitioner,
this.organization,
this.code,
this.specialty,
this.location,
this.healthcareService,
this.telecom,
this.availableTime,
this.notAvailable,
this.availabilityExceptions,
this._availabilityExceptions,
this.endpoint});

  factory PractitionerRole.fromJson(Map<String, dynamic> json) => _$PractitionerRoleFromJson(json);
  Map<String, dynamic> toJson() => _$PractitionerRoleToJson(this);
}