part 'coverage.g.dart';

@JsonSerializable(explicitToJson: true)
class Coverage {

Coverage resourceType;
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
CodeableConcept type;
Reference policyHolder;
Reference subscriber;
String subscriberId;
Element _subscriberId;
Reference beneficiary;
String dependent;
Element _dependent;
CodeableConcept relationship;
Period period;
List<Reference> payor;
List<Coverage_Class> class;
int order;
Element _order;
String network;
Element _network;
List<Coverage_CostToBeneficiary> costToBeneficiary;
bool subrogation;
Element _subrogation;
List<Reference> contract;

Coverage(
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
      this.policyHolder,
      this.subscriber,
      this.subscriberId,
      this._subscriberId,
      this.beneficiary,
      this.dependent,
      this._dependent,
      this.relationship,
      this.period,
      this.payor,
      this.class,
      this.order,
      this._order,
      this.network,
      this._network,
      this.costToBeneficiary,
      this.subrogation,
      this._subrogation,
      this.contract,
      });

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
  Map<String, dynamic> toJson() _$CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Class {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
String value;
Element _value;
String name;
Element _name;

Coverage_Class(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.value,
      this._value,
      this.name,
      this._name,
      });

  factory Coverage_Class.fromJson(Map<String, dynamic> json) => _$Coverage_ClassFromJson(json);
  Map<String, dynamic> toJson() _$Coverage_ClassToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_CostToBeneficiary {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Quantity valueQuantity;
Money valueMoney;
List<Coverage_Exception> exception;

Coverage_CostToBeneficiary(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.valueQuantity,
      this.valueMoney,
      this.exception,
      });

  factory Coverage_CostToBeneficiary.fromJson(Map<String, dynamic> json) => _$Coverage_CostToBeneficiaryFromJson(json);
  Map<String, dynamic> toJson() _$Coverage_CostToBeneficiaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Coverage_Exception {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept type;
Period period;

Coverage_Exception(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.type,
      this.period,
      });

  factory Coverage_Exception.fromJson(Map<String, dynamic> json) => _$Coverage_ExceptionFromJson(json);
  Map<String, dynamic> toJson() _$Coverage_ExceptionToJson(this);
}

