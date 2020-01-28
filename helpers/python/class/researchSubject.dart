part 'researchSubject.g.dart';

@JsonSerializable(explicitToJson: true)
class ResearchSubject {

ResearchSubject resourceType;
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
String status; // <code> enum: candidate/eligible/follow-up/ineligible/not-registered/off-study/on-study/on-study-intervention/on-study-observation/pending-on-study/potential-candidate/screening/withdrawn;
Element _status;
Period period;
Reference study;
Reference individual;
String assignedArm;
Element _assignedArm;
String actualArm;
Element _actualArm;
Reference consent;

ResearchSubject(
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
      this.period,
      this.study,
      this.individual,
      this.assignedArm,
      this._assignedArm,
      this.actualArm,
      this._actualArm,
      this.consent,
      });

  factory ResearchSubject.fromJson(Map<String, dynamic> json) => _$ResearchSubjectFromJson(json);
  Map<String, dynamic> toJson() _$ResearchSubjectToJson(this);
}

