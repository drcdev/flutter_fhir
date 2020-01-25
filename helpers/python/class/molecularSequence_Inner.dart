

part 'molecularSequence_Inner.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Inner {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int start;
  Element _start;
  int end;
  Element _end;


MolecularSequence_Inner(
      {this.id,
this.extension,
this.modifierExtension,
this.start,
this._start,
this.end,
this._end});

  factory MolecularSequence_Inner.fromJson(Map<String, dynamic> json) => _$MolecularSequence_InnerFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_InnerToJson(this);
}