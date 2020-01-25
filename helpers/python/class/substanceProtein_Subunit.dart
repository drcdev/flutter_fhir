

part 'substanceProtein_Subunit.g.dart';

@JsonSerializable(explicitToJson: true)
class SubstanceProtein_Subunit {

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
  Identifier nTerminalModificationId;
  String nTerminalModification;
  Element _nTerminalModification;
  Identifier cTerminalModificationId;
  String cTerminalModification;
  Element _cTerminalModification;


SubstanceProtein_Subunit(
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
this.nTerminalModificationId,
this.nTerminalModification,
this._nTerminalModification,
this.cTerminalModificationId,
this.cTerminalModification,
this._cTerminalModification});

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) => _$SubstanceProtein_SubunitFromJson(json);
  Map<String, dynamic> toJson() => _$SubstanceProtein_SubunitToJson(this);
}