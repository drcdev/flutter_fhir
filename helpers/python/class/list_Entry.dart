

part 'list_Entry.g.dart';

@JsonSerializable(explicitToJson: true)
class List_Entry {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept flag;
  bool deleted;
  Element _deleted;
  StringTime date;
  Element _date;
  Reference item;


List_Entry(
      {this.id,
this.extension,
this.modifierExtension,
this.flag,
this.deleted,
this._deleted,
this.date,
this._date,
this.item});

  factory List_Entry.fromJson(Map<String, dynamic> json) => _$List_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$List_EntryToJson(this);
}