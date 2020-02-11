import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 358)
class MeasureReport {

  //  This is a MeasureReport resource
  @HiveField(0)
  final String resourceType= 'MeasureReport';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  @HiveField(1)
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  @HiveField(2)
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  @HiveField(3)
  String implicitRules;

  //  Extensions for implicitRules
  @HiveField(4)
  Element elementImplicitRules;

  //  The base language in which the resource is written.
  @HiveField(5)
  String language;

  //  Extensions for language
  @HiveField(6)
  Element elementLanguage;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  @HiveField(7)
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  @HiveField(8)
  List<dynamic> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  @HiveField(9)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  @HiveField(10)
  List<Extension> modifierExtension;

  //  A formal identifier that is used to identify this MeasureReport when
  // it is represented in other formats or referenced in a specification,
  // model, design or an instance.
  @HiveField(11)
  List<Identifier> identifier;

  //  The MeasureReport status. No data will be available until the
  // MeasureReport status is complete.
  @HiveField(12)
  String status; // <code> enum: complete/pending/error;

  //  Extensions for status
  @HiveField(13)
  Element elementStatus;

  //  The type of measure report. This may be an individual report, which
  // provides the score for the measure for an individual member of the
  // population; a subject-listing, which returns the list of members that
  // meet the various criteria in the measure; a summary report, which
  // returns a population count for each of the criteria in the measure; or
  // a data-collection, which enables the MeasureReport to be used to
  // exchange the data-of-interest for a quality measure.
  @HiveField(14)
  String type; // <code> enum: individual/subject-list/summary/data-collection;

  //  Extensions for type
  @HiveField(15)
  Element elementType;

  //  A reference to the Measure that was calculated to produce this report.
  @HiveField(16)
  String measure;

  //  Optional subject identifying the individual or individuals the report
  // is for.
  @HiveField(17)
  Reference subject;

  //  The date this measure report was generated.
  @HiveField(18)
  DateTime date;

  //  Extensions for date
  @HiveField(19)
  Element elementDate;

  //  The individual, location, or organization that is reporting the data.
  @HiveField(20)
  Reference reporter;

  //  The reporting period for which the report was calculated.
  @HiveField(21)
  Period period;

  //  Whether improvement in the measure is noted by an increase or decrease
  // in the measure score.
  @HiveField(22)
  CodeableConcept improvementNotation;

  //  The results of the calculation, one for each population group in the
  // measure.
  @HiveField(23)
  List<MeasureReport_Group> group;

  //  A reference to a Bundle containing the Resources that were used in the
  // calculation of this measure.
  @HiveField(24)
  List<Reference> evaluatedResource;

MeasureReport(
  this.measure,
    this.period,
    {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.type,
    this.elementType,
    this.subject,
    this.date,
    this.elementDate,
    this.reporter,
    this.improvementNotation,
    this.group,
    this.evaluatedResource
    });

  factory MeasureReport.fromJson(Map<String, dynamic> json) => _$MeasureReportFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 359)
class MeasureReport_Group {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The meaning of the population group as defined in the measure
  // definition.
  @HiveField(3)
  CodeableConcept code;

  //  The populations that make up the population group, one for each type
  // of population appropriate for the measure.
  @HiveField(4)
  List<MeasureReport_Population> population;

  //  The measure score for this population group, calculated as appropriate
  // for the measure type and scoring method, and based on the contents of
  // the populations defined in the group.
  @HiveField(5)
  Quantity measureScore;

  //  When a measure includes multiple stratifiers, there will be a
  // stratifier group for each stratifier defined by the measure.
  @HiveField(6)
  List<MeasureReport_Stratifier> stratifier;

MeasureReport_Group(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier
    });

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) => _$MeasureReport_GroupFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 360)
class MeasureReport_Population {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of the population.
  @HiveField(3)
  CodeableConcept code;

  //  The number of members of the population.
  @HiveField(4)
  int count;

  //  Extensions for count
  @HiveField(5)
  Element elementCount;

  //  This element refers to a List of subject level MeasureReport
  // resources, one for each subject in this population.
  @HiveField(6)
  Reference subjectResults;

MeasureReport_Population(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.elementCount,
    this.subjectResults
    });

  factory MeasureReport_Population.fromJson(Map<String, dynamic> json) => _$MeasureReport_PopulationFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_PopulationToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 361)
class MeasureReport_Stratifier {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The meaning of this stratifier, as defined in the measure definition.
  @HiveField(3)
  List<CodeableConcept> code;

  //  This element contains the results for a single stratum within the
  // stratifier. For example, when stratifying on administrative gender,
  // there will be four strata, one for each possible gender value.
  @HiveField(4)
  List<MeasureReport_Stratum> stratum;

MeasureReport_Stratifier(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.stratum
    });

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratifierFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratifierToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 362)
class MeasureReport_Stratum {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The value for this stratum, expressed as a CodeableConcept. When
  // defining stratifiers on complex values, the value must be rendered such
  // that the value for each stratum within the stratifier is unique.
  @HiveField(3)
  CodeableConcept value;

  //  A stratifier component value.
  @HiveField(4)
  List<MeasureReport_Component> component;

  //  The populations that make up the stratum, one for each type of
  // population appropriate to the measure.
  @HiveField(5)
  List<MeasureReport_Population1> population;

  //  The measure score for this stratum, calculated as appropriate for the
  // measure type and scoring method, and based on only the members of this
  // stratum.
  @HiveField(6)
  Quantity measureScore;

MeasureReport_Stratum(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore
    });

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) => _$MeasureReport_StratumFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_StratumToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 363)
class MeasureReport_Component {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The code for the stratum component value.
  @HiveField(3)
  CodeableConcept code;

  //  The stratum component value.
  @HiveField(4)
  CodeableConcept value;

MeasureReport_Component(
  this.code,
    this.value,
    {this.id,
    this.extension,
    this.modifierExtension
    });

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) => _$MeasureReport_ComponentFromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_ComponentToJson(this);
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 364)
class MeasureReport_Population1 {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The type of the population.
  @HiveField(3)
  CodeableConcept code;

  //  The number of members of the population in this stratum.
  @HiveField(4)
  int count;

  //  Extensions for count
  @HiveField(5)
  Element elementCount;

  //  This element refers to a List of subject level MeasureReport
  // resources, one for each subject in this population in this stratum.
  @HiveField(6)
  Reference subjectResults;

MeasureReport_Population1(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.count,
    this.elementCount,
    this.subjectResults
    });

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) => _$MeasureReport_Population1FromJson(json);
  Map<String, dynamic> toJson() => _$MeasureReport_Population1ToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasureReportAdapter extends TypeAdapter<MeasureReport> {
  @override
  final typeId = 358;

  @override
  MeasureReport read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport(
      fields[16] as String,
      fields[21] as Period,
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      type: fields[14] as String,
      elementType: fields[15] as Element,
      subject: fields[17] as Reference,
      date: fields[18] as DateTime,
      elementDate: fields[19] as Element,
      reporter: fields[20] as Reference,
      improvementNotation: fields[22] as CodeableConcept,
      group: (fields[23] as List)?.cast<MeasureReport_Group>(),
      evaluatedResource: (fields[24] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport obj) {
    writer
      ..writeByte(25)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.elementType)
      ..writeByte(16)
      ..write(obj.measure)
      ..writeByte(17)
      ..write(obj.subject)
      ..writeByte(18)
      ..write(obj.date)
      ..writeByte(19)
      ..write(obj.elementDate)
      ..writeByte(20)
      ..write(obj.reporter)
      ..writeByte(21)
      ..write(obj.period)
      ..writeByte(22)
      ..write(obj.improvementNotation)
      ..writeByte(23)
      ..write(obj.group)
      ..writeByte(24)
      ..write(obj.evaluatedResource);
  }
}

class MeasureReport_GroupAdapter extends TypeAdapter<MeasureReport_Group> {
  @override
  final typeId = 359;

  @override
  MeasureReport_Group read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Group(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      population: (fields[4] as List)?.cast<MeasureReport_Population>(),
      measureScore: fields[5] as Quantity,
      stratifier: (fields[6] as List)?.cast<MeasureReport_Stratifier>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Group obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.population)
      ..writeByte(5)
      ..write(obj.measureScore)
      ..writeByte(6)
      ..write(obj.stratifier);
  }
}

class MeasureReport_PopulationAdapter
    extends TypeAdapter<MeasureReport_Population> {
  @override
  final typeId = 360;

  @override
  MeasureReport_Population read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Population(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      count: fields[4] as int,
      elementCount: fields[5] as Element,
      subjectResults: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Population obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.count)
      ..writeByte(5)
      ..write(obj.elementCount)
      ..writeByte(6)
      ..write(obj.subjectResults);
  }
}

class MeasureReport_StratifierAdapter
    extends TypeAdapter<MeasureReport_Stratifier> {
  @override
  final typeId = 361;

  @override
  MeasureReport_Stratifier read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Stratifier(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: (fields[3] as List)?.cast<CodeableConcept>(),
      stratum: (fields[4] as List)?.cast<MeasureReport_Stratum>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Stratifier obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.stratum);
  }
}

class MeasureReport_StratumAdapter extends TypeAdapter<MeasureReport_Stratum> {
  @override
  final typeId = 362;

  @override
  MeasureReport_Stratum read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Stratum(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      value: fields[3] as CodeableConcept,
      component: (fields[4] as List)?.cast<MeasureReport_Component>(),
      population: (fields[5] as List)?.cast<MeasureReport_Population1>(),
      measureScore: fields[6] as Quantity,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Stratum obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.value)
      ..writeByte(4)
      ..write(obj.component)
      ..writeByte(5)
      ..write(obj.population)
      ..writeByte(6)
      ..write(obj.measureScore);
  }
}

class MeasureReport_ComponentAdapter
    extends TypeAdapter<MeasureReport_Component> {
  @override
  final typeId = 363;

  @override
  MeasureReport_Component read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Component(
      fields[3] as CodeableConcept,
      fields[4] as CodeableConcept,
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Component obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.value);
  }
}

class MeasureReport_Population1Adapter
    extends TypeAdapter<MeasureReport_Population1> {
  @override
  final typeId = 364;

  @override
  MeasureReport_Population1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasureReport_Population1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      code: fields[3] as CodeableConcept,
      count: fields[4] as int,
      elementCount: fields[5] as Element,
      subjectResults: fields[6] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, MeasureReport_Population1 obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.count)
      ..writeByte(5)
      ..write(obj.elementCount)
      ..writeByte(6)
      ..write(obj.subjectResults);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasureReport _$MeasureReportFromJson(Map<String, dynamic> json) {
  return MeasureReport(
    json['measure'] as String,
    json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    subject: json['subject'] == null
        ? null
        : Reference.fromJson(json['subject'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    reporter: json['reporter'] == null
        ? null
        : Reference.fromJson(json['reporter'] as Map<String, dynamic>),
    improvementNotation: json['improvementNotation'] == null
        ? null
        : CodeableConcept.fromJson(
            json['improvementNotation'] as Map<String, dynamic>),
    group: (json['group'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Group.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluatedResource: (json['evaluatedResource'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReportToJson(MeasureReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'measure': instance.measure,
      'subject': instance.subject?.toJson(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'reporter': instance.reporter?.toJson(),
      'period': instance.period?.toJson(),
      'improvementNotation': instance.improvementNotation?.toJson(),
      'group': instance.group?.map((e) => e?.toJson())?.toList(),
      'evaluatedResource':
          instance.evaluatedResource?.map((e) => e?.toJson())?.toList(),
    };

MeasureReport_Group _$MeasureReport_GroupFromJson(Map<String, dynamic> json) {
  return MeasureReport_Group(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Population.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measureScore: json['measureScore'] == null
        ? null
        : Quantity.fromJson(json['measureScore'] as Map<String, dynamic>),
    stratifier: (json['stratifier'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Stratifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_GroupToJson(
        MeasureReport_Group instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
      'measureScore': instance.measureScore?.toJson(),
      'stratifier': instance.stratifier?.map((e) => e?.toJson())?.toList(),
    };

MeasureReport_Population _$MeasureReport_PopulationFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Population(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    subjectResults: json['subjectResults'] == null
        ? null
        : Reference.fromJson(json['subjectResults'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_PopulationToJson(
        MeasureReport_Population instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'count': instance.count,
      'elementCount': instance.elementCount?.toJson(),
      'subjectResults': instance.subjectResults?.toJson(),
    };

MeasureReport_Stratifier _$MeasureReport_StratifierFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Stratifier(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: (json['code'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stratum: (json['stratum'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Stratum.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_StratifierToJson(
        MeasureReport_Stratifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'stratum': instance.stratum?.map((e) => e?.toJson())?.toList(),
    };

MeasureReport_Stratum _$MeasureReport_StratumFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Stratum(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    value: json['value'] == null
        ? null
        : CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
    component: (json['component'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Component.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    population: (json['population'] as List)
        ?.map((e) => e == null
            ? null
            : MeasureReport_Population1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    measureScore: json['measureScore'] == null
        ? null
        : Quantity.fromJson(json['measureScore'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_StratumToJson(
        MeasureReport_Stratum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'value': instance.value?.toJson(),
      'component': instance.component?.map((e) => e?.toJson())?.toList(),
      'population': instance.population?.map((e) => e?.toJson())?.toList(),
      'measureScore': instance.measureScore?.toJson(),
    };

MeasureReport_Component _$MeasureReport_ComponentFromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Component(
    json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    json['value'] == null
        ? null
        : CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MeasureReport_ComponentToJson(
        MeasureReport_Component instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'value': instance.value?.toJson(),
    };

MeasureReport_Population1 _$MeasureReport_Population1FromJson(
    Map<String, dynamic> json) {
  return MeasureReport_Population1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    count: json['count'] as int,
    elementCount: json['elementCount'] == null
        ? null
        : Element.fromJson(json['elementCount'] as Map<String, dynamic>),
    subjectResults: json['subjectResults'] == null
        ? null
        : Reference.fromJson(json['subjectResults'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MeasureReport_Population1ToJson(
        MeasureReport_Population1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code?.toJson(),
      'count': instance.count,
      'elementCount': instance.elementCount?.toJson(),
      'subjectResults': instance.subjectResults?.toJson(),
    };
