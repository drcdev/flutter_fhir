

part 'molecularSequence.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence {

  This is a MolecularSequence resource resourceType;
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
  enum: aadnarna type;
  Element _type;
  int coordinateSystem;
  Element _coordinateSystem;
  Reference patient;
  Reference specimen;
  Reference device;
  Reference performer;
  Quantity quantity;
  MolecularSequence_ReferenceSeq referenceSeq;
  List<MolecularSequence_Variant> variant;
  String observedSeq;
  Element _observedSeq;
  List<MolecularSequence_Quality> quality;
  int readCoverage;
  Element _readCoverage;
  List<MolecularSequence_Repository> repository;
  List<Reference> pointer;
  List<MolecularSequence_StructureVariant> structureVariant;


MolecularSequence(
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
this.type,
this._type,
this.coordinateSystem,
this._coordinateSystem,
this.patient,
this.specimen,
this.device,
this.performer,
this.quantity,
this.referenceSeq,
this.variant,
this.observedSeq,
this._observedSeq,
this.quality,
this.readCoverage,
this._readCoverage,
this.repository,
this.pointer,
this.structureVariant});

  factory MolecularSequence.fromJson(Map<String, dynamic> json) => _$MolecularSequenceFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequenceToJson(this);
}