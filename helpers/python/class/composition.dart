part 'composition.g.dart';

@JsonSerializable(explicitToJson: true)
class Composition {

Composition resourceType;
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
Identifier identifier;
String status; // <code> enum: preliminary/final/amended/entered-in-error;
Element _status;
CodeableConcept type;
List<CodeableConcept> category;
Reference subject;
Reference encounter;
DateTime date;
Element _date;
List<Reference> author;
String title;
Element _title;
String confidentiality;
Element _confidentiality;
List<Composition_Attester> attester;
Reference custodian;
List<Composition_RelatesTo> relatesTo;
List<Composition_Event> event;
List<Composition_Section> section;

Composition(
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
      this.type,
      this.category,
      this.subject,
      this.encounter,
      this.date,
      this._date,
      this.author,
      this.title,
      this._title,
      this.confidentiality,
      this._confidentiality,
      this.attester,
      this.custodian,
      this.relatesTo,
      this.event,
      this.section,
      });

  factory Composition.fromJson(Map<String, dynamic> json) => _$CompositionFromJson(json);
  Map<String, dynamic> toJson() _$CompositionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Attester {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: personal/professional/legal/official;
Element _mode;
DateTime time;
Element _time;
Reference party;

Composition_Attester(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.time,
      this._time,
      this.party,
      });

  factory Composition_Attester.fromJson(Map<String, dynamic> json) => _$Composition_AttesterFromJson(json);
  Map<String, dynamic> toJson() _$Composition_AttesterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_RelatesTo {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
Identifier targetIdentifier;
Reference targetReference;

Composition_RelatesTo(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.targetIdentifier,
      this.targetReference,
      });

  factory Composition_RelatesTo.fromJson(Map<String, dynamic> json) => _$Composition_RelatesToFromJson(json);
  Map<String, dynamic> toJson() _$Composition_RelatesToToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Composition_Event {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
List<CodeableConcept> code;
Period period;
List<Reference> detail;

Composition_Event(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this.period,
      this.detail,
      });

  factory Composition_Event.fromJson(Map<String, dynamic> json) => _$Composition_EventFromJson(json);
  Map<String, dynamic> toJson() _$Composition_EventToJson(this);
}

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
      this.section,
      });

  factory Composition_Section.fromJson(Map<String, dynamic> json) => _$Composition_SectionFromJson(json);
  Map<String, dynamic> toJson() _$Composition_SectionToJson(this);
}

