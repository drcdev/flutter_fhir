

part 'substance.g.dart';

@JsonSerializable(explicitToJson: true)
class Substance {

  This is a Substance resource resourceType;
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
  enum: activeinactiveentered-in-error status;
  Element _status;
  List<CodeableConcept> category;
  CodeableConcept code;
  String description;
  Element _description;
  List<Substance_Instance> instance;
  List<Substance_Ingredient> ingredient;


Substance(
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
this.category,
this.code,
this.description,
this._description,
this.instance,
this.ingredient});

  factory Substance.fromJson(Map<String, dynamic> json) => _$SubstanceFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceToJson(this);
}