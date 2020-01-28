part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {

Account resourceType;
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
String status; // <code> enum: active/inactive/entered-in-error/on-hold/unknown;
Element _status;
CodeableConcept type;
String name;
Element _name;
List<Reference> subject;
Period servicePeriod;
List<Account_Coverage> coverage;
Reference owner;
String description;
Element _description;
List<Account_Guarantor> guarantor;
Reference partOf;

Account(
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
      this.subject,
      this.servicePeriod,
      this.coverage,
      this.owner,
      this.description,
      this._description,
      this.guarantor,
      this.partOf,
      });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() _$AccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Coverage {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference coverage;
int priority;
Element _priority;

Account_Coverage(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.coverage,
      this.priority,
      this._priority,
      });

  factory Account_Coverage.fromJson(Map<String, dynamic> json) => _$Account_CoverageFromJson(json);
  Map<String, dynamic> toJson() _$Account_CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Guarantor {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference party;
bool onHold;
Element _onHold;
Period period;

Account_Guarantor(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.party,
      this.onHold,
      this._onHold,
      this.period,
      });

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) => _$Account_GuarantorFromJson(json);
  Map<String, dynamic> toJson() _$Account_GuarantorToJson(this);
}

