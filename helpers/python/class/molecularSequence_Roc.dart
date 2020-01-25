

part 'molecularSequence_Roc.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Roc {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> score;
  List<Element> _score;
  List<int> numTP;
  List<Element> _numTP;
  List<int> numFP;
  List<Element> _numFP;
  List<int> numFN;
  List<Element> _numFN;
  List<double> precision;
  List<Element> _precision;
  List<double> sensitivity;
  List<Element> _sensitivity;
  List<double> fMeasure;
  List<Element> _fMeasure;


MolecularSequence_Roc(
      {this.id,
this.extension,
this.modifierExtension,
this.score,
this._score,
this.numTP,
this._numTP,
this.numFP,
this._numFP,
this.numFN,
this._numFN,
this.precision,
this._precision,
this.sensitivity,
this._sensitivity,
this.fMeasure,
this._fMeasure});

  factory MolecularSequence_Roc.fromJson(Map<String, dynamic> json) => _$MolecularSequence_RocFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_RocToJson(this);
}