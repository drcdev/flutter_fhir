

part 'group.g.dart';

@JsonSerializable(explicitToJson: true)
class Group {

  This is a Group resource resourceType;
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
  enum: personanimalpractitionerdevicemedicationsubstance type;
  Element _type;
  bool actual;
  Element _actual;
  CodeableConcept code;
  String name;
  Element _name;
  int quantity;
  Element _quantity;
  Reference managingEntity;
  List<Group_Characteristic> characteristic;
  List<Group_Member> member;


Group(
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
this.type,
this._type,
this.actual,
this._actual,
this.code,
this.name,
this._name,
this.quantity,
this._quantity,
this.managingEntity,
this.characteristic,
this.member});

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}