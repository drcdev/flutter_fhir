part 'specimenDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition {

SpecimenDefinition resourceType;
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
CodeableConcept typeCollected;
List<CodeableConcept> patientPreparation;
String timeAspect;
Element _timeAspect;
List<CodeableConcept> collection;
List<SpecimenDefinition_TypeTested> typeTested;

SpecimenDefinition(
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
      this.typeCollected,
      this.patientPreparation,
      this.timeAspect,
      this._timeAspect,
      this.collection,
      this.typeTested,
      });

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) => _$SpecimenDefinitionFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_TypeTested {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
bool isDerived;
Element _isDerived;
CodeableConcept type;
String preference; // <code> enum: preferred/alternate;
Element _preference;
SpecimenDefinition_Container container;
String requirement;
Element _requirement;
Duration retentionTime;
List<CodeableConcept> rejectionCriterion;
List<SpecimenDefinition_Handling> handling;

SpecimenDefinition_TypeTested(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.isDerived,
      this._isDerived,
      this.type,
      this.preference,
      this._preference,
      this.container,
      this.requirement,
      this._requirement,
      this.retentionTime,
      this.rejectionCriterion,
      this.handling,
      });

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_TypeTestedFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_TypeTestedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Container {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept material;
CodeableConcept type;
CodeableConcept cap;
String description;
Element _description;
Quantity capacity;
Quantity minimumVolumeQuantity;
String minimumVolumeString; //  pattern: ^[ \r\n\t\S]+$
Element _minimumVolumeString;
List<SpecimenDefinition_Additive> additive;
String preparation;
Element _preparation;

SpecimenDefinition_Container(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.material,
      this.type,
      this.cap,
      this.description,
      this._description,
      this.capacity,
      this.minimumVolumeQuantity,
      this.minimumVolumeString,
      this._minimumVolumeString,
      this.additive,
      this.preparation,
      this._preparation,
      });

  factory SpecimenDefinition_Container.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_ContainerFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_ContainerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Additive {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept additiveCodeableConcept;
Reference additiveReference;

SpecimenDefinition_Additive(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.additiveCodeableConcept,
      this.additiveReference,
      });

  factory SpecimenDefinition_Additive.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_AdditiveFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_AdditiveToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SpecimenDefinition_Handling {

String id;
List<Extension> extension;
List<Extension> modifierExtension;
CodeableConcept temperatureQualifier;
Range temperatureRange;
Duration maxDuration;
String instruction;
Element _instruction;

SpecimenDefinition_Handling(
  {this.id,
      this.extension,
      this.modifierExtension,
      this.temperatureQualifier,
      this.temperatureRange,
      this.maxDuration,
      this.instruction,
      this._instruction,
      });

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) => _$SpecimenDefinition_HandlingFromJson(json);
  Map<String, dynamic> toJson() _$SpecimenDefinition_HandlingToJson(this);
}

