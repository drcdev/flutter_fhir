part 'conceptMap.g.dart';

@JsonSerializable(explicitToJson: true)
class ConceptMap {

ConceptMap resourceType;
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
String url;
Element _url;
Identifier identifier;
String version;
Element _version;
String name;
Element _name;
String title;
Element _title;
String status; // <code> enum: draft/active/retired/unknown;
Element _status;
bool experimental;
Element _experimental;
DateTime date;
Element _date;
String publisher;
Element _publisher;
List<ContactDetail> contact;
String description;
Element _description;
List<UsageContext> useContext;
List<CodeableConcept> jurisdiction;
String purpose;
Element _purpose;
String copyright;
Element _copyright;
String sourceUri; //  pattern: ^\S*$
Element _sourceUri;
String sourceCanonical; //  pattern: ^\S*$
Element _sourceCanonical;
String targetUri; //  pattern: ^\S*$
Element _targetUri;
String targetCanonical; //  pattern: ^\S*$
Element _targetCanonical;
List<ConceptMap_Group> group;

ConceptMap(
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
      this.url,
      this._url,
      this.identifier,
      this.version,
      this._version,
      this.name,
      this._name,
      this.title,
      this._title,
      this.status,
      this._status,
      this.experimental,
      this._experimental,
      this.date,
      this._date,
      this.publisher,
      this._publisher,
      this.contact,
      this.description,
      this._description,
      this.useContext,
      this.jurisdiction,
      this.purpose,
      this._purpose,
      this.copyright,
      this._copyright,
      this.sourceUri,
      this._sourceUri,
      this.sourceCanonical,
      this._sourceCanonical,
      this.targetUri,
      this._targetUri,
      this.targetCanonical,
      this._targetCanonical,
      this.group,
      });

  factory ConceptMap.fromJson(Map<String, dynamic> json) => _$ConceptMapFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMapToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Group {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String source;
Element _source;
String sourceVersion;
Element _sourceVersion;
String target;
Element _target;
String targetVersion;
Element _targetVersion;
List<ConceptMap_Element> element;
ConceptMap_Unmapped unmapped;

ConceptMap_Group(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.source,
      this._source,
      this.sourceVersion,
      this._sourceVersion,
      this.target,
      this._target,
      this.targetVersion,
      this._targetVersion,
      this.element,
      this.unmapped,
      });

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) => _$ConceptMap_GroupFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Element {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
List<ConceptMap_Target> target;

ConceptMap_Element(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.target,
      });

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) => _$ConceptMap_ElementFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_ElementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Target {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String code;
Element _code;
String display;
Element _display;
String equivalence; // <code> enum: relatedto/equivalent/equal/wider/subsumes/narrower/specializes/inexact/unmatched/disjoint;
Element _equivalence;
String comment;
Element _comment;
List<ConceptMap_DependsOn> dependsOn;
List<ConceptMap_DependsOn> product;

ConceptMap_Target(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.code,
      this._code,
      this.display,
      this._display,
      this.equivalence,
      this._equivalence,
      this.comment,
      this._comment,
      this.dependsOn,
      this.product,
      });

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) => _$ConceptMap_TargetFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_TargetToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_DependsOn {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String property;
Element _property;
String system;
String value;
Element _value;
String display;
Element _display;

ConceptMap_DependsOn(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.property,
      this._property,
      this.system,
      this.value,
      this._value,
      this.display,
      this._display,
      });

  factory ConceptMap_DependsOn.fromJson(Map<String, dynamic> json) => _$ConceptMap_DependsOnFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_DependsOnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConceptMap_Unmapped {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
String mode; // <code> enum: provided/fixed/other-map;
Element _mode;
String code;
Element _code;
String display;
Element _display;
String url;

ConceptMap_Unmapped(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.mode,
      this._mode,
      this.code,
      this._code,
      this.display,
      this._display,
      this.url,
      });

  factory ConceptMap_Unmapped.fromJson(Map<String, dynamic> json) => _$ConceptMap_UnmappedFromJson(json);
  Map<String, dynamic> toJson() _$ConceptMap_UnmappedToJson(this);
}

