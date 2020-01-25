

part 'molecularSequence_Quality.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Quality {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  enum: indelsnpunknown type;
  Element _type;
  CodeableConcept standardSequence;
  int start;
  Element _start;
  int end;
  Element _end;
  Quantity score;
  CodeableConcept method;
  double truthTP;
  Element _truthTP;
  double queryTP;
  Element _queryTP;
  double truthFN;
  Element _truthFN;
  double queryFP;
  Element _queryFP;
  double gtFP;
  Element _gtFP;
  double precision;
  Element _precision;
  double recall;
  Element _recall;
  double fScore;
  Element _fScore;
  MolecularSequence_Roc roc;


MolecularSequence_Quality(
      {this.id,
this.extension,
this.modifierExtension,
this.type,
this._type,
this.standardSequence,
this.start,
this._start,
this.end,
this._end,
this.score,
this.method,
this.truthTP,
this._truthTP,
this.queryTP,
this._queryTP,
this.truthFN,
this._truthFN,
this.queryFP,
this._queryFP,
this.gtFP,
this._gtFP,
this.precision,
this._precision,
this.recall,
this._recall,
this.fScore,
this._fScore,
this.roc});

  factory MolecularSequence_Quality.fromJson(Map<String, dynamic> json) => _$MolecularSequence_QualityFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_QualityToJson(this);
}