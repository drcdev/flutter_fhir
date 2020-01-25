

part 'flag.g.dart';

@JsonSerializable(explicitToJson: true)
class Flag {

  This is a Flag resource resourceType;
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
  Reference subject;
  Period period;
  Reference encounter;
  Reference author;


Flag(
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
this.subject,
this.period,
this.encounter,
this.author});

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
  Map<String, dynamic> toJson() => _$FlagToJson(this);
}