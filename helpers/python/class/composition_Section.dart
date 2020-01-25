

part 'composition_Section.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition_Section {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String title;
  Element _title;
  CodeableConcept code;
  List<Reference> author;
  Reference focus;
  Narrative text;
  String mode;
  Element _mode;
  CodeableConcept orderedBy;
  List<Reference> entry;
  CodeableConcept emptyReason;
  List<Composition_Section> section;


Composition_Section(
      {this.id,
this.extension,
this.modifierExtension,
this.title,
this._title,
this.code,
this.author,
this.focus,
this.text,
this.mode,
this._mode,
this.orderedBy,
this.entry,
this.emptyReason,
this.section});

  factory Composition_Section.fromJson(Map<String, dynamic> json) => _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() => _$Composition_SectionToJson(this);
}