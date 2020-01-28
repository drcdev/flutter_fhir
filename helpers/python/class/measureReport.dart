
part 'measureReport.g.dart';

@JsonSerializable(explicitToJson: true)
class MeasureReport {
  
  // This is a MeasureReport 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A formal identifier that is used to identify this MeasureReport when it is
  //  represented in other formats or referenced in a specification, model, design or
  //  an instance.
  List<Identifier identifier;

  // The MeasureReport status. No data will be available until the MeasureReport
  //  status is complete.Enum enum; // completependingerror status;

  // Extensions for status
  Element _status;

  // The type of measure report. This may be an individual report, which
  //  provides the score for the measure for an individual member of the population;
  //  a subject-listing, which returns the list of members that meet the various
  //  criteria in the measure; a summary report, which returns a population count for
  //  each of the criteria in the measure; or a data-collection, which enables the
  //  MeasureReport to be used to exchange the data-of-interest for a quality
  //  measure.Enum enum; // individualsubject-listsummarydata-collection type;

  // Extensions for type
  Element _type;

  // A reference to the Measure that was calculated to produce this report.
  String measure;

  // Optional subject identifying the individual or individuals the report is
  //  for.
  Reference subject;

  // The date this measure report was generated.
  StringTime date;

  // Extensions for date
  Element _date;

  // The individual, location, or organization that is reporting the data.
  Reference reporter;

  // The reporting period for which the report was calculated.
  Period period;

  // Whether improvement in the measure is noted by an increase or decrease in
  //  the measure score.
  CodeableConcept improvementNotation;

  // The results of the calculation, one for each population group in the
  //  measure.
  List<MeasureReport_Group group;

  // A reference to a Bundle containing the Resources that were used in the
  //  calculation of this measure.
  List<Reference evaluatedResource
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

@JsonSerializable(explicitToJson: true)
class MeasureReport_Component {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The code for the stratum component value.
  CodeableConcept code;

  // The stratum component value.
  CodeableConcept value
MeasureReport_Component(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.value});

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) => _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Group {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The meaning of the population group as defined in the measure definition.
  CodeableConcept code;

  // The populations that make up the population group, one for each type of
  //  population appropriate for the measure.
  List<MeasureReport_Population population;

  // The measure score for this population group, calculated as appropriate for
  //  the measure type and scoring method, and based on the contents of the
  //  populations defined in the group.
  Quantity measureScore;

  // When a measure includes multiple stratifiers, there will be a stratifier
  //  group for each stratifier defined by the measure.
  List<MeasureReport_Stratifier stratifier
MeasureReport_Group(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.population,
this.measureScore,
this.stratifier});

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) => _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The type of the population.
  CodeableConcept code;

  // The number of members of the population.
  int count;

  // Extensions for count
  Element _count;

  // This element refers to a List of subject level MeasureReport resources, one
  //  for each subject in this population.
  Reference subjectResults
MeasureReport_Population(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.count,
this._count,
this.subjectResults});

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) => _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Population1 {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The type of the population.
  CodeableConcept code;

  // The number of members of the population in this stratum.
  int count;

  // Extensions for count
  Element _count;

  // This element refers to a List of subject level MeasureReport resources, one
  //  for each subject in this population in this stratum.
  Reference subjectResults
MeasureReport_Population1(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.count,
this._count,
this.subjectResults});

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) => _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_Population1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratifier {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The meaning of this stratifier, as defined in the measure definition.
  List<CodeableConcept code;

  // This element contains the results for a single stratum within the
  //  stratifier. For example, when stratifying on administrative gender, there will
  //  be four strata, one for each possible gender value.
  List<MeasureReport_Stratum stratum
MeasureReport_Stratifier(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.stratum});

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MeasureReport_Stratum {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The value for this stratum, expressed as a CodeableConcept. When defining
  //  stratifiers on complex values, the value must be rendered such that the value
  //  for each stratum within the stratifier is unique.
  CodeableConcept value;

  // A stratifier component value.
  List<MeasureReport_Component component;

  // The populations that make up the stratum, one for each type of population
  //  appropriate to the measure.
  List<MeasureReport_Population1 population;

  // The measure score for this stratum, calculated as appropriate for the
  //  measure type and scoring method, and based on only the members of this stratum.
  Quantity measureScore
MeasureReport_Stratum(
      {this.id,
this.extension,
this.modifierExtension,
this.value,
this.component,
this.population,
this.measureScore});

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Component {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Indicates a meaning for the stratifier component. This can be as simple as
  //  a unique identifier, or it can establish meaning in a broader context by
  //  drawing from a terminology, allowing stratifiers to be correlated across measures.
  CodeableConcept code;

  // The human readable description of this stratifier criteria component.
  String description;

  // Extensions for description
  Element _description;

  // An expression that specifies the criteria for this component of the
  //  stratifier. This is typically the name of an expression defined within a
  //  referenced library, but it may also be a path to a stratifier element.
  Expression criteria
Measure_Component(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.criteria});

  factory Measure_Component.fromJson(Map<String, dynamic> json) => _$Measure_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Group {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Indicates a meaning for the group. This can be as simple as a unique
  //  identifier, or it can establish meaning in a broader context by drawing from a
  //  terminology, allowing groups to be correlated across measures.
  CodeableConcept code;

  // The human readable description of this population group.
  String description;

  // Extensions for description
  Element _description;

  // A population criteria for the measure.
  List<Measure_Population population;

  // The stratifier criteria for the measure report, specified as either the
  //  name of a valid CQL expression defined within a referenced library or a valid
  //  FHIR Resource Path.
  List<Measure_Stratifier stratifier
Measure_Group(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.population,
this.stratifier});

  factory Measure_Group.fromJson(Map<String, dynamic> json) => _$Measure_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Population {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The type of population criteria.
  CodeableConcept code;

  // The human readable description of this population criteria.
  String description;

  // Extensions for description
  Element _description;

  // An expression that specifies the criteria for the population, typically the
  //  name of an expression in a library.
  Expression criteria
Measure_Population(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.criteria});

  factory Measure_Population.fromJson(Map<String, dynamic> json) => _$Measure_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_Stratifier {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Indicates a meaning for the stratifier. This can be as simple as a unique
  //  identifier, or it can establish meaning in a broader context by drawing from a
  //  terminology, allowing stratifiers to be correlated across measures.
  CodeableConcept code;

  // The human readable description of this stratifier criteria.
  String description;

  // Extensions for description
  Element _description;

  // An expression that specifies the criteria for the stratifier. This is
  //  typically the name of an expression defined within a referenced library, but it
  //  may also be a path to a stratifier element.
  Expression criteria;

  // A component of the stratifier criteria for the measure report, specified as
  //  either the name of a valid CQL expression defined within a referenced library
  //  or a valid FHIR Resource Path.
  List<Measure_Component component
Measure_Stratifier(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.description,
this._description,
this.criteria,
this.component});

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) => _$Measure_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Measure_SupplementalData {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Indicates a meaning for the supplemental data. This can be as simple as a
  //  unique identifier, or it can establish meaning in a broader context by drawing
  //  from a terminology, allowing supplemental data to be correlated across measures.
  CodeableConcept code;

  // An indicator of the intended usage for the supplemental data element.
  //  Supplemental data indicates the data is additional information requested to
  //  augment the measure information. Risk adjustment factor indicates the data is
  //  additional information used to calculate risk adjustment factors when applying
  //  a risk model to the measure calculation.
  List<CodeableConcept usage;

  // The human readable description of this supplemental data.
  String description;

  // Extensions for description
  Element _description;

  // The criteria for the supplemental data. This is typically the name of a
  //  valid expression defined within a referenced library, but it may also be a path
  //  to a specific data element. The criteria defines the data to be returned for
  //  this element.
  Expression criteria
Measure_SupplementalData(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.usage,
this.description,
this._description,
this.criteria});

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) => _$Measure_SupplementalDataFromJson(json);
  Map<String, dynamic> toJson() => _$Measure_SupplementalDataToJson(this);
}