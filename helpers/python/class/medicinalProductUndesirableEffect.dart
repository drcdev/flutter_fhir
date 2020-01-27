
part 'medicinalProductUndesirableEffect.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicinalProductUndesirableEffect {
  
  // This is a MedicinalProductUndesirableEffect 
  String resourcetype;

  // The logical id of the resource, as used in the URL for the resource. Once
  //  assigned, this value never changes.
  String id;

  // The metadata about the resource. This is content that is maintained by the
  //  infrastructure. Changes to the content might not always be associated with
  //  version changes to the resource.
  Meta meta;

  // A reference to a set of rules that were followed when the resource was
  //  constructed, and which must be understood when processing the content. Often,
  //  this is a reference to an implementation guide that defines the special rules
  //  along with other profiles etc.
  String implicitRules;

  // Extensions for implicitRules
  Element _implicitRules;

  // The base language in which the resource is written.
  String language;

  // Extensions for language
  Element _language;

  // A human-readable narrative that contains a summary of the resource and can
  //  be used to represent the content of the resource to a human. The narrative need
  //  not encode all the structured data, but is required to contain sufficient
  //  detail to make it "clinically safe" for a human to just read the narrative.
  //  Resource definitions may define what content should be represented in the
  //  narrative to ensure clinical safety.
  Narrative text;

  // These resources do not have an independent existence apart from the
  //  resource that contains them - they cannot be identified independently, and nor
  //  can they have their own independent transaction scope.
  List<ResourceList contained;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the resource and that modifies the understanding of the
  //  element that contains it and/or the understanding of the containing element's
  //  descendants. Usually modifier elements provide negation or qualification. To
  //  make the use of extensions safe and manageable, there is a strict set of
  //  governance applied to the definition and use of extensions. Though any
  //  implementer is allowed to define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The medication for which this is an indication.
  List<Reference subject;

  // The symptom, condition or undesirable effect.
  CodeableConcept symptomConditionEffect;

  // Classification of the effect.
  CodeableConcept classification;

  // The frequency of occurrence of the effect.
  CodeableConcept frequencyOfOccurrence;

  // The population group to which this applies.
  List<Population population
MedicinalProductUndesirableEffect(
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
this.subject,
this.symptomConditionEffect,
this.classification,
this.frequencyOfOccurrence,
this.population});

  factory MedicinalProductUndesirableEffect.fromJson(Map<String, dynamic> json) => _$MedicinalProductUndesirableEffectFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProductUndesirableEffectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_CountryLanguage {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Country code for where this name applies.
  CodeableConcept country;

  // Jurisdiction code for where this name applies.
  CodeableConcept jurisdiction;

  // Language code for this name.
  CodeableConcept language
MedicinalProduct_CountryLanguage(
      {this.id,
this.extension,
this.modifierExtension,
this.country,
this.jurisdiction,
this.language});

  factory MedicinalProduct_CountryLanguage.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_CountryLanguageFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_CountryLanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_ManufacturingBusinessOperation {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The type of manufacturing operation.
  CodeableConcept operationType;

  // Regulatory authorization reference number.
  Identifier authorisationReferenceNumber;

  // Regulatory authorization date.
  StringTime effectiveDate;

  // Extensions for effectiveDate
  Element _effectiveDate;

  // To indicate if this proces is commercially confidential.
  CodeableConcept confidentialityIndicator;

  // The manufacturer or establishment associated with the process.
  List<Reference manufacturer;

  // A regulator which oversees the operation.
  Reference regulator
MedicinalProduct_ManufacturingBusinessOperation(
      {this.id,
this.extension,
this.modifierExtension,
this.operationType,
this.authorisationReferenceNumber,
this.effectiveDate,
this._effectiveDate,
this.confidentialityIndicator,
this.manufacturer,
this.regulator});

  factory MedicinalProduct_ManufacturingBusinessOperation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_ManufacturingBusinessOperationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_ManufacturingBusinessOperationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_Name {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // The full product name.
  String productName;

  // Extensions for productName
  Element _productName;

  // Coding words or phrases of the name.
  List<MedicinalProduct_NamePart namePart;

  // Country where the name applies.
  List<MedicinalProduct_CountryLanguage countryLanguage
MedicinalProduct_Name(
      {this.id,
this.extension,
this.modifierExtension,
this.productName,
this._productName,
this.namePart,
this.countryLanguage});

  factory MedicinalProduct_Name.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NameFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_NamePart {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // A fragment of a product name.
  String part;

  // Extensions for 

  // Idenifying type for this part of the name (e.g. strength part).
  Coding type
MedicinalProduct_NamePart(
      {this.id,
this.extension,
this.modifierExtension,
this.part,
this._part,
this.type});

  factory MedicinalProduct_NamePart.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_NamePartFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_NamePartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedicinalProduct_SpecialDesignation {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element and that modifies the understanding of the
  //  element in which it is contained and/or the understanding of the containing
  //  element's descendants. Usually modifier elements provide negation or
  //  qualification. To make the use of extensions safe and manageable, there is a
  //  strict set of governance applied to the definition and use of extensions.
  //  Though any implementer can define an extension, there is a set of requirements
  //  that SHALL be met as part of the definition of the extension. Applications
  //  processing a resource are required to check for modifier extensions.;

  // Modifier extensions SHALL NOT change the meaning of any elements on
  //  Resource or DomainResource (including cannot change the meaning of
  //  modifierExtension itself).
  List<Extension modifierExtension;

  // Identifier for the designation, or procedure number.
  List<Identifier identifier;

  // The type of special designation, e.g. orphan drug, minor use.
  CodeableConcept type;

  // The intended use of the product, e.g. prevention, treatment.
  CodeableConcept intendedUse;

  // Condition for which the medicinal use applies.
  CodeableConcept indicationCodeableConcept;

  // Condition for which the medicinal use applies.
  Reference indicationReference;

  // For example granted, pending, expired or withdrawn.
  CodeableConcept status;

  // Date when the designation was granted.
  StringTime date;

  // Extensions for date
  Element _date;

  // Animal species for which this applies.
  CodeableConcept species
MedicinalProduct_SpecialDesignation(
      {this.id,
this.extension,
this.modifierExtension,
this.identifier,
this.type,
this.intendedUse,
this.indicationCodeableConcept,
this.indicationReference,
this.status,
this.date,
this._date,
this.species});

  factory MedicinalProduct_SpecialDesignation.fromJson(Map<String, dynamic> json) => _$MedicinalProduct_SpecialDesignationFromJson(json);
  Map<String, dynamic> toJson() => _$MedicinalProduct_SpecialDesignationToJson(this);
}
