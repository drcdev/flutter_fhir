

part 'substanceNucleicAcid_Subunit.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceNucleicAcid_Subunit {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int subunit;
  Element _subunit;
  String sequence;
  Element _sequence;
  int length;
  Element _length;
  Attachment sequenceAttachment;
  CodeableConcept fivePrime;
  CodeableConcept threePrime;
  List<SubstanceNucleicAcid_Linkage> linkage;
  List<SubstanceNucleicAcid_Sugar> sugar;


SubstanceNucleicAcid_Subunit(
      {this.id,
this.extension,
this.modifierExtension,
this.subunit,
this._subunit,
this.sequence,
this._sequence,
this.length,
this._length,
this.sequenceAttachment,
this.fivePrime,
this.threePrime,
this.linkage,
this.sugar});

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceNucleicAcid_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceNucleicAcid_SubunitToJson(this);
}