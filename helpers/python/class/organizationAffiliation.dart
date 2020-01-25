

part 'organizationAffiliation.g.dart';

@JsonSerializable(explicitToJson: true)
class OrganizationAffiliation {

  This is a OrganizationAffiliation resource resourceType;
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
  Reference organization;
  Reference participatingOrganization;
  List<Reference> network;
  List<CodeableConcept> code;
  List<CodeableConcept> specialty;
  List<Reference> location;
  List<Reference> healthcareService;
  List<ContactPoint> telecom;
  List<Reference> endpoint;


OrganizationAffiliation(
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
this.organization,
this.participatingOrganization,
this.network,
this.code,
this.specialty,
this.location,
this.healthcareService,
this.telecom,
this.endpoint});

  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) => _$OrganizationAffiliationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationAffiliationToJson(this);
}