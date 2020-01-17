import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:json_annotation/json_annotation.dart';
part 'condition.g.dart';

@JsonSerializable(explicitToJson: true)
class Condition {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
  String language;
  List<Identifier> identifier;
  CodeableConcept clinicalStatus;
  CodeableConcept verificationStatus;
  List<CodeableConcept> category;
  CodeableConcept severity;
  CodeableConcept code;
  List<CodeableConcept> bodySite;
  Reference subject;
  Reference encounter;
  DateTime onsetDateTime;
  int onsetAge;
  Period onsetPeriod;
  Range onsetRange;
  String onsetString;
  DateTime abatementDateTime;
  int abatementAge;
  Period abatementPeriod;
  Range abatementRange;
  String abatementString;
  DateTime recordedDate;
  Reference recorder;
  Reference asserter;
  List<Stage> stage;
  List<Evidence> evidence;
  List<Annotation> note;

  Condition(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language,
        this.identifier,
        this.clinicalStatus,
        this.verificationStatus,
        this.category,
        this.severity,
        this.code,
        this.bodySite,
        this.subject,
        this.encounter,
        this.onsetDateTime,
        this.onsetAge,
        this.onsetPeriod,
        this.onsetRange,
        this.onsetString,
        this.abatementDateTime,
        this.abatementAge,
        this.abatementPeriod,
        this.abatementRange,
        this.abatementString,
        this.recordedDate,
        this.recorder,
        this.asserter,
        this.stage,
        this.evidence,
        this.note});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Stage {
  CodeableConcept summary;
  List<Reference> assessment;
  CodeableConcept type;

  Stage({this.summary, this.assessment, this.type});

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
  Map<String, dynamic> toJson() => _$StageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Evidence {
  List<CodeableConcept> code;
  List<Reference> detail;

  Evidence({this.code, this.detail});

  factory Evidence.fromJson(Map<String, dynamic> json) => _$EvidenceFromJson(json);
  Map<String, dynamic> toJson() => _$EvidenceToJson(this);
}