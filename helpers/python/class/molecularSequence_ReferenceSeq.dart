

part 'molecularSequence_ReferenceSeq.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_ReferenceSeq {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept chromosome;
  String genomeBuild;
  Element _genomeBuild;
  enum: senseantisense orientation;
  Element _orientation;
  CodeableConcept referenceSeqId;
  Reference referenceSeqPointer;
  String referenceSeqString;
  Element _referenceSeqString;
  enum: watsoncrick strand;
  Element _strand;
  int windowStart;
  Element _windowStart;
  int windowEnd;
  Element _windowEnd;


MolecularSequence_ReferenceSeq(
      {this.id,
this.extension,
this.modifierExtension,
this.chromosome,
this.genomeBuild,
this._genomeBuild,
this.orientation,
this._orientation,
this.referenceSeqId,
this.referenceSeqPointer,
this.referenceSeqString,
this._referenceSeqString,
this.strand,
this._strand,
this.windowStart,
this._windowStart,
this.windowEnd,
this._windowEnd});

  factory MolecularSequence_ReferenceSeq.fromJson(Map<String, dynamic> json) => _$MolecularSequence_ReferenceSeqFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_ReferenceSeqToJson(this);
}