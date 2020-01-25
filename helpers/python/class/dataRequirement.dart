

part 'dataRequirement.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement {

  String id;
  List<Extension> extension;
  String type;
  Element _type;
  List<String> profile;
  CodeableConcept subjectCodeableConcept;
  Reference subjectReference;
  List<String> mustSupport;
  List<Element> _mustSupport;
  List<DataRequirement_CodeFilter> codeFilter;
  List<DataRequirement_DateFilter> dateFilter;
  int limit;
  Element _limit;
  List<DataRequirement_Sort> sort;


DataRequirement(
      {this.id,
this.extension,
this.type,
this._type,
this.profile,
this.subjectCodeableConcept,
this.subjectReference,
this.mustSupport,
this._mustSupport,
this.codeFilter,
this.dateFilter,
this.limit,
this._limit,
this.sort});

  factory DataRequirement.fromJson(Map<String, dynamic> json) => _$DataRequirementFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirementToJson(this);
}