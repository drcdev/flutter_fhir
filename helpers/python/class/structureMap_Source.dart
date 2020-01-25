

part 'structureMap_Source.g.dart';

@JsonSerializable(explicitToJson: true)
class StructureMap_Source {

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String context;
  Element _context;
  int min;
  Element _min;
  String max;
  Element _max;
  String type;
  Element _type;
  String defaultValueBase64Binary;
  Element _defaultValueBase64Binary;
  bool defaultValueBoolean;
  Element _defaultValueBoolean;
  String defaultValueCanonical;
  Element _defaultValueCanonical;
  String defaultValueCode;
  Element _defaultValueCode;
  String defaultValueDate;
  Element _defaultValueDate;
  String defaultValueDateTime;
  Element _defaultValueDateTime;
  number defaultValueDecimal;
  Element _defaultValueDecimal;
  String defaultValueId;
  Element _defaultValueId;
  String defaultValueInstant;
  Element _defaultValueInstant;
  number defaultValueInteger;
  Element _defaultValueInteger;
  String defaultValueMarkdown;
  Element _defaultValueMarkdown;
  String defaultValueOid;
  Element _defaultValueOid;
  number defaultValuePositiveInt;
  Element _defaultValuePositiveInt;
  String defaultValueString;
  Element _defaultValueString;
  String defaultValueTime;
  Element _defaultValueTime;
  number defaultValueUnsignedInt;
  Element _defaultValueUnsignedInt;
  String defaultValueUri;
  Element _defaultValueUri;
  String defaultValueUrl;
  Element _defaultValueUrl;
  String defaultValueUuid;
  Element _defaultValueUuid;
  Address defaultValueAddress;
  Age defaultValueAge;
  Annotation defaultValueAnnotation;
  Attachment defaultValueAttachment;
  CodeableConcept defaultValueCodeableConcept;
  Coding defaultValueCoding;
  ContactPoint defaultValueContactPoint;
  Count defaultValueCount;
  Distance defaultValueDistance;
  Duration defaultValueDuration;
  HumanName defaultValueHumanName;
  Identifier defaultValueIdentifier;
  Money defaultValueMoney;
  Period defaultValuePeriod;
  Quantity defaultValueQuantity;
  Range defaultValueRange;
  Ratio defaultValueRatio;
  Reference defaultValueReference;
  SampledData defaultValueSampledData;
  Signature defaultValueSignature;
  Timing defaultValueTiming;
  ContactDetail defaultValueContactDetail;
  Contributor defaultValueContributor;
  DataRequirement defaultValueDataRequirement;
  Expression defaultValueExpression;
  ParameterDefinition defaultValueParameterDefinition;
  RelatedArtifact defaultValueRelatedArtifact;
  TriggerDefinition defaultValueTriggerDefinition;
  UsageContext defaultValueUsageContext;
  Dosage defaultValueDosage;
  Meta defaultValueMeta;
  String element;
  Element _element;
  enum: firstnot_firstlastnot_lastonly_one listMode;
  Element _listMode;
  String variable;
  Element _variable;
  String condition;
  Element _condition;
  String check;
  Element _check;
  String logMessage;
  Element _logMessage;


StructureMap_Source(
      {this.id,
this.extension,
this.modifierExtension,
this.context,
this._context,
this.min,
this._min,
this.max,
this._max,
this.type,
this._type,
this.defaultValueBase64Binary,
this._defaultValueBase64Binary,
this.defaultValueBoolean,
this._defaultValueBoolean,
this.defaultValueCanonical,
this._defaultValueCanonical,
this.defaultValueCode,
this._defaultValueCode,
this.defaultValueDate,
this._defaultValueDate,
this.defaultValueDateTime,
this._defaultValueDateTime,
this.defaultValueDecimal,
this._defaultValueDecimal,
this.defaultValueId,
this._defaultValueId,
this.defaultValueInstant,
this._defaultValueInstant,
this.defaultValueInteger,
this._defaultValueInteger,
this.defaultValueMarkdown,
this._defaultValueMarkdown,
this.defaultValueOid,
this._defaultValueOid,
this.defaultValuePositiveInt,
this._defaultValuePositiveInt,
this.defaultValueString,
this._defaultValueString,
this.defaultValueTime,
this._defaultValueTime,
this.defaultValueUnsignedInt,
this._defaultValueUnsignedInt,
this.defaultValueUri,
this._defaultValueUri,
this.defaultValueUrl,
this._defaultValueUrl,
this.defaultValueUuid,
this._defaultValueUuid,
this.defaultValueAddress,
this.defaultValueAge,
this.defaultValueAnnotation,
this.defaultValueAttachment,
this.defaultValueCodeableConcept,
this.defaultValueCoding,
this.defaultValueContactPoint,
this.defaultValueCount,
this.defaultValueDistance,
this.defaultValueDuration,
this.defaultValueHumanName,
this.defaultValueIdentifier,
this.defaultValueMoney,
this.defaultValuePeriod,
this.defaultValueQuantity,
this.defaultValueRange,
this.defaultValueRatio,
this.defaultValueReference,
this.defaultValueSampledData,
this.defaultValueSignature,
this.defaultValueTiming,
this.defaultValueContactDetail,
this.defaultValueContributor,
this.defaultValueDataRequirement,
this.defaultValueExpression,
this.defaultValueParameterDefinition,
this.defaultValueRelatedArtifact,
this.defaultValueTriggerDefinition,
this.defaultValueUsageContext,
this.defaultValueDosage,
this.defaultValueMeta,
this.element,
this._element,
this.listMode,
this._listMode,
this.variable,
this._variable,
this.condition,
this._condition,
this.check,
this._check,
this.logMessage,
this._logMessage});

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) => _$StructureMap_SourceFromJson(json);
  Map<String, dynamic> toJson() => _$StructureMap_SourceToJson(this);
}