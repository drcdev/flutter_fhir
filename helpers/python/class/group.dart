part 'group.g.dart';

@JsonSerializable(explicitToJson: true)
class Group {

Group resourceType;
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
String type; // <code> enum: person/animal/practitioner/device/medication/substance;
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
      this.member,
      });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() _$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Characteristic {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept valueCodeableConcept;
bool valueBoolean; //  pattern: ^true|false$
Element _valueBoolean;
Quantity valueQuantity;
Range valueRange;
Reference valueReference;
bool exclude;
Element _exclude;
Period period;

Group_Characteristic(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.valueCodeableConcept,
      this.valueBoolean,
      this._valueBoolean,
      this.valueQuantity,
      this.valueRange,
      this.valueReference,
      this.exclude,
      this._exclude,
      this.period,
      });

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) => _$Group_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() _$Group_CharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Member {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
Reference entity;
Period period;
bool inactive;
Element _inactive;

Group_Member(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.entity,
      this.period,
      this.inactive,
      this._inactive,
      });

  factory Group_Member.fromJson(Map<String, dynamic> json) => _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() _$Group_MemberToJson(this);
}

