

part 'account.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {

  This is a Account resource resourceType;
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
  enum: activeinactiveentered-in-erroron-holdunknown status;
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
this.partOf});

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}