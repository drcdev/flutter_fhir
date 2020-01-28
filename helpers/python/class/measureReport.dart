part 'measureReport.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport {

MeasureReport resourceType;
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
String status; // <code> enum: complete/pending/error;
Element _status;
String type; // <code> enum: individual/subject-list/summary/data-collection;
Element _type;
String measure;
Reference subject;
DateTime date;
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
      this.evaluatedResource,
      });

  factory MeasureReport.fromJson(Map<String, dynamic> json) => _$MeasureReportFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
List<MeasureReport_Population> population;
Quantity measureScore;
List<MeasureReport_Stratifier> stratifier;

MeasureReport_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.population,
      this.measureScore,
      this.stratifier,
      });

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) => _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
int count;
Element _count;
Reference subjectResults;

MeasureReport_Population(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.count,
      this._count,
      this.subjectResults,
      });

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) => _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratifier {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
List<MeasureReport_Stratum> stratum;

MeasureReport_Stratifier(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.stratum,
      });

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratum {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept value;
List<MeasureReport_Component> component;
List<MeasureReport_Population1> population;
Quantity measureScore;

MeasureReport_Stratum(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.value,
      this.component,
      this.population,
      this.measureScore,
      });

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_StratumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Component {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
CodeableConcept value;

MeasureReport_Component(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.value,
      });

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) => _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population1 {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept code;
int count;
Element _count;
Reference subjectResults;

MeasureReport_Population1(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.count,
      this._count,
      this.subjectResults,
      });

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) => _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() _$MeasureReport_Population1ToJson(this);
}

