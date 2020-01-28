part 'allergyIntolerance.g.dart';

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance {

AllergyIntolerance resourceType;
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
String type; // <code> enum: allergy/intolerance;
Element _type;
List<Element> _category;
String criticality; // <code> enum: low/high/unable-to-assess;
Element _criticality;
CodeableConcept code;
Reference patient;
Reference encounter;
String onsetDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$
Element _onsetDateTime;
Age onsetAge;
Period onsetPeriod;
Range onsetRange;
String onsetString; //  pattern: ^[ \r\n\t\S]+$
Element _onsetString;
DateTime recordedDate;
Element _recordedDate;
Reference recorder;
Reference asserter;
DateTime lastOccurrence;
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
      this.reaction,
      });

  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) => _$AllergyIntoleranceFromJson(json);
  Map<String, dynamic> toJson() _$AllergyIntoleranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllergyIntolerance_Reaction {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept substance;
List<CodeableConcept> manifestation;
String description;
Element _description;
DateTime onset;
Element _onset;
String severity; // <code> enum: mild/moderate/severe;
Element _severity;
CodeableConcept exposureRoute;
List<Annotation> note;

AllergyIntolerance_Reaction(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.substance,
      this.manifestation,
      this.description,
      this._description,
      this.onset,
      this._onset,
      this.severity,
      this._severity,
      this.exposureRoute,
      this.note,
      });

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) => _$AllergyIntolerance_ReactionFromJson(json);
  Map<String, dynamic> toJson() _$AllergyIntolerance_ReactionToJson(this);
}

