part 'insurancePlan.g.dart';

@JsonSerializable(explicitToJson: true)
class InsurancePlan {

InsurancePlan resourceType;
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
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
List<CodeableConcept> type;
String name;
Element _name;
List<String> alias;
List<Element> _alias;
Period period;
Reference ownedBy;
Reference administeredBy;
List<Reference> coverageArea;
List<InsurancePlan_Contact> contact;
List<Reference> endpoint;
List<Reference> network;
List<InsurancePlan_Coverage> coverage;
List<InsurancePlan_Plan> plan;

InsurancePlan(
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
      this.type,
      this.name,
      this._name,
      this.alias,
      this._alias,
      this.period,
      this.ownedBy,
      this.administeredBy,
      this.coverageArea,
      this.contact,
      this.endpoint,
      this.network,
      this.coverage,
      this.plan,
      });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) => _$InsurancePlanFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Contact {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept purpose;
HumanName name;
List<ContactPoint> telecom;
Address address;

InsurancePlan_Contact(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.purpose,
      this.name,
      this.telecom,
      this.address,
      });

  factory InsurancePlan_Contact.fromJson(Map<String, dynamic> json) => _$InsurancePlan_ContactFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_ContactToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Coverage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<Reference> network;
List<InsurancePlan_Benefit> benefit;

InsurancePlan_Coverage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.network,
      this.benefit,
      });

  factory InsurancePlan_Coverage.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CoverageFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String requirement;
Element _requirement;
List<InsurancePlan_Limit> limit;

InsurancePlan_Benefit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.requirement,
      this._requirement,
      this.limit,
      });

  factory InsurancePlan_Benefit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_BenefitFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_BenefitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Limit {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Quantity value;
CodeableConcept code;

InsurancePlan_Limit(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.value,
      this.code,
      });

  factory InsurancePlan_Limit.fromJson(Map<String, dynamic> json) => _$InsurancePlan_LimitFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_LimitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Plan {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<Identifier> identifier;
CodeableConcept type;
List<Reference> coverageArea;
List<Reference> network;
List<InsurancePlan_GeneralCost> generalCost;
List<InsurancePlan_SpecificCost> specificCost;

InsurancePlan_Plan(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.identifier,
      this.type,
      this.coverageArea,
      this.network,
      this.generalCost,
      this.specificCost,
      });

  factory InsurancePlan_Plan.fromJson(Map<String, dynamic> json) => _$InsurancePlan_PlanFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_PlanToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_GeneralCost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
int groupSize;
Element _groupSize;
Money cost;
String comment;
Element _comment;

InsurancePlan_GeneralCost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.groupSize,
      this._groupSize,
      this.cost,
      this.comment,
      this._comment,
      });

  factory InsurancePlan_GeneralCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_GeneralCostFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_GeneralCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_SpecificCost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept category;
List<InsurancePlan_Benefit1> benefit;

InsurancePlan_SpecificCost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.category,
      this.benefit,
      });

  factory InsurancePlan_SpecificCost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_SpecificCostFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_SpecificCostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Benefit1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
List<InsurancePlan_Cost> cost;

InsurancePlan_Benefit1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.cost,
      });

  factory InsurancePlan_Benefit1.fromJson(Map<String, dynamic> json) => _$InsurancePlan_Benefit1FromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_Benefit1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsurancePlan_Cost {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
CodeableConcept applicability;
List<CodeableConcept> qualifiers;
Quantity value;

InsurancePlan_Cost(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.applicability,
      this.qualifiers,
      this.value,
      });

  factory InsurancePlan_Cost.fromJson(Map<String, dynamic> json) => _$InsurancePlan_CostFromJson(json);
  Map<String, dynamic> toJson() _$InsurancePlan_CostToJson(this);
}

