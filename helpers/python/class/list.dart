part 'list.g.dart';

@JsonSerializable(explicitToJson: true)
class List {

List resourceType;
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
String status; // <code> enum: current/retired/entered-in-error;
Element _status;
String mode; // <code> enum: working/snapshot/changes;
Element _mode;
String title;
Element _title;
CodeableConcept code;
Reference subject;
Reference encounter;
DateTime date;
Element _date;
Reference source;
CodeableConcept orderedBy;
List<Annotation> note;
List<List_Entry> entry;
CodeableConcept emptyReason;

List(
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
      this.status,
      this._status,
      this.mode,
      this._mode,
      this.title,
      this._title,
      this.code,
      this.subject,
      this.encounter,
      this.date,
      this._date,
      this.source,
      this.orderedBy,
      this.note,
      this.entry,
      this.emptyReason,
      });

  factory List.fromJson(Map<String, dynamic> json) => _$ListFromJson(json);
  Map<String, dynamic> toJson() _$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class List_Entry {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept flag;
bool deleted;
Element _deleted;
DateTime date;
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
      this.item,
      });

  factory List_Entry.fromJson(Map<String, dynamic> json) => _$List_EntryFromJson(json);
  Map<String, dynamic> toJson() _$List_EntryToJson(this);
}

