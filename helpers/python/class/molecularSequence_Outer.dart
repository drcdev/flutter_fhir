

part 'molecularSequence_Outer.g.dart';

@JsonSerializable(explicitToJson: true)
class MolecularSequence_Outer {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int start;
  Element _start;
  int end;
  Element _end;


MolecularSequence_Outer(
      {this.id,
this.extension,
this.modifierExtension,
this.start,
this._start,
this.end,
this._end});

  factory MolecularSequence_Outer.fromJson(Map<String, dynamic> json) => _$MolecularSequence_OuterFromJson(json);
  Map<String, dynamic> toJson() => _$MolecularSequence_OuterToJson(this);
}