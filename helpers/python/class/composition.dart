

part 'composition.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition {

  This is a Composition resource resourceType;
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
  Identifier identifier;
  enum: preliminaryfinalamendedentered-in-error status;
  Element _status;
  CodeableConcept type;
  List<CodeableConcept> category;
  Reference subject;
  Reference encounter;
  StringTime date;
  Element _date;
  List<Reference> author;
  String title;
  Element _title;
  String confidentiality;
  Element _confidentiality;
  List<Composition_Attester> attester;
  Reference custodian;
  List<Composition_RelatesTo> relatesTo;
  List<Composition_Event> event;
  List<Composition_Section> section;


Composition(
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
this.category,
this.subject,
this.encounter,
this.date,
this._date,
this.author,
this.title,
this._title,
this.confidentiality,
this._confidentiality,
this.attester,
this.custodian,
this.relatesTo,
this.event,
this.section});

  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}