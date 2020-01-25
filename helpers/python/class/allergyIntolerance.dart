

part 'allergyIntolerance.g.dart';

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance {

  This is a AllergyIntolerance resource resourceType;
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
  CodeableConcept clinicalStatus;
  CodeableConcept verificationStatus;
  enum: allergyintolerance type;
  Element _type;
  array category;
  List<Element> _category;
  enum: lowhighunable-to-assess criticality;
  Element _criticality;
  CodeableConcept code;
  Reference patient;
  Reference encounter;
  String onsetDateTime;
  Element _onsetDateTime;
  Age onsetAge;
  Period onsetPeriod;
  Range onsetRange;
  String onsetString;
  Element _onsetString;
  StringTime recordedDate;
  Element _recordedDate;
  Reference recorder;
  Reference asserter;
  StringTime lastOccurrence;
  Element _lastOccurrence;
  List<Annotation> note;
  List<AllergyIntolerance_Reaction> reaction;


AllergyIntolerance(
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
this.clinicalStatus,
this.verificationStatus,
this.type,
this._type,
this.category,
this._category,
this.criticality,
this._criticality,
this.code,
this.patient,
this.encounter,
this.onsetDateTime,
this._onsetDateTime,
this.onsetAge,
this.onsetPeriod,
this.onsetRange,
this.onsetString,
this._onsetString,
this.recordedDate,
this._recordedDate,
this.recorder,
this.asserter,
this.lastOccurrence,
this._lastOccurrence,
this.note,
this.reaction});

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) => _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() => _$AllergyIntoleranceToJson(this);
}