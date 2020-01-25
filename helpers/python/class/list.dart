

part 'list.g.dart';

@JsonSerializable(explicitToJson: true)
class List {

  This is a List resource resourceType;
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
  enum: currentretiredentered-in-error status;
  Element _status;
  enum: workingsnapshotchanges mode;
  Element _mode;
  String title;
  Element _title;
  CodeableConcept code;
  Reference subject;
  Reference encounter;
  StringTime date;
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
this.emptyReason});

  factory List.fromJson(Map<String, dynamic> json) => _$ListFromJson(json);
  Map<String, dynamic> toJson() => _$ListToJson(this);
}