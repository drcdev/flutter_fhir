

part 'measureReport.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport {

  This is a MeasureReport resource resourceType;
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
  enum: completependingerror status;
  Element _status;
  enum: individualsubject-listsummarydata-collection type;
  Element _type;
  String measure;
  Reference subject;
  StringTime date;
  Element _date;
  Reference reporter;
  Period period;
  CodeableConcept improvementNotation;
  List<MeasureReport_Group> group;
  List<Reference> evaluatedResource;


MeasureReport(
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
this._type,
this.measure,
this.subject,
this.date,
this._date,
this.reporter,
this.period,
this.improvementNotation,
this.group,
this.evaluatedResource});

  factory MeasureReport.fromJson(Map<String, dynamic> json) => _$MeasureReportFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReportToJson(this);
}