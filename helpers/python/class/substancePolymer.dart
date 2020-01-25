

part 'substancePolymer.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstancePolymer {

  This is a SubstancePolymer resource resourceType;
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
  CodeableConcept class;
  CodeableConcept geometry;
  List<CodeableConcept> copolymerConnectivity;
  List<String> modification;
  List<Element> _modification;
  List<SubstancePolymer_MonomerSet> monomerSet;
  List<SubstancePolymer_Repeat> repeat;


SubstancePolymer(
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
this.class,
this.geometry,
this.copolymerConnectivity,
this.modification,
this._modification,
this.monomerSet,
this.repeat});

  factory SubstancePolymer.fromJson(Map<String, dynamic> json) => _$SubstancePolymerFromJson(json);
  Map<String, dynamic> toJson() => _$SubstancePolymerToJson(this);
}