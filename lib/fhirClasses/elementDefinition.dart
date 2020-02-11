import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/meta.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 55)
class ElementDefinition {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  @HiveField(0)
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  @HiveField(1)
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  @HiveField(2)
  List<Extension> modifierExtension;

  //  The path identifies the element and is expressed as a "."-separated
  // list of ancestor elements, beginning with the name of the resource or
  // extension.
  @HiveField(3)
  String path;

  //  Extensions for path
  @HiveField(4)
  Element elementPath;

  //  Codes that define how this element is represented in instances, when
  // the deviation varies from the normal case.
  @HiveField(5)
  List<String> representation; // <code> enum: xmlAttr/xmlText/typeAttr/cdaText/xhtml> representation;

  //  Extensions for representation
  @HiveField(6)
  List<Element> elementRepresentation;

  //  The name of this element definition slice, when slicing is working.
  // The name must be a token with no dots or spaces. This is a unique name
  // referring to a specific set of constraints applied to this element,
  // used to provide a name to different slices of the same element.
  @HiveField(7)
  String sliceName;

  //  Extensions for sliceName
  @HiveField(8)
  Element elementSliceName;

  //  If true, indicates that this slice definition is constraining a slice
  // definition with the same name in an inherited profile. If false, the
  // slice is not overriding any slice in an inherited profile. If missing,
  // the slice might or might not be overriding a slice in an inherited
  // profile, depending on the sliceName.
  @HiveField(9)
  bool sliceIsConstraining;

  //  Extensions for sliceIsConstraining
  @HiveField(10)
  Element elementSliceIsConstraining;

  //  A single preferred label which is the text to display beside the
  // element indicating its meaning or to use to prompt for the element in a
  // user display or form.
  @HiveField(11)
  String label;

  //  Extensions for label
  @HiveField(12)
  Element elementLabel;

  //  A code that has the same meaning as the element in a particular
  // terminology.
  @HiveField(13)
  List<Coding> code;

  //  Indicates that the element is sliced into a set of alternative
  // definitions (i.e. in a structure definition, there are multiple
  // different constraints on a single element in the base resource).
  // Slicing can be used in any resource that has cardinality ..* on the
  // base resource, or any resource with a choice of types. The set of
  // slices is any elements that come after this in the element sequence
  // that have the same path, until a shorter path occurs (the shorter path
  // terminates the set).
  @HiveField(14)
  ElementDefinition_Slicing slicing;

  //  A concise description of what this element means (e.g. for use in
  // autogenerated summaries).
  @HiveField(15)
  String short;

  //  Extensions for short
  @HiveField(16)
  Element elementShort;

  //  Provides a complete explanation of the meaning of the data element for
  // human readability.  For the case of elements derived from existing
  // elements (e.g. constraints), the definition SHALL be consistent with
  // the base definition, but convey the meaning of the element in the
  // particular context of use of the resource. (Note: The text you are
  // reading is specified in ElementDefinition.definition).
  @HiveField(17)
  String definition;

  //  Extensions for definition
  @HiveField(18)
  Element elementDefinition;

  //  Explanatory notes and implementation guidance about the data element,
  // including notes about how to use the data properly, exceptions to
  // proper use, etc. (Note: The text you are reading is specified in
  // ElementDefinition.comment).
  @HiveField(19)
  String comment;

  //  Extensions for comment
  @HiveField(20)
  Element elementComment;

  //  This element is for traceability of why the element was created and
  // why the constraints exist as they do. This may be used to point to
  // source materials or specifications that drove the structure of this
  // element.
  @HiveField(21)
  String requirements;

  //  Extensions for requirements
  @HiveField(22)
  Element elementRequirements;

  //  Identifies additional names by which this element might also be known.
  @HiveField(23)
  List<String> alias;

  //  Extensions for alias
  @HiveField(24)
  List<Element> elementAlias;

  //  The minimum number of times this element SHALL appear in the instance.
  @HiveField(25)
  int min;

  //  Extensions for min
  @HiveField(26)
  Element elementMin;

  //  The maximum number of times this element is permitted to appear in the
  // instance.
  @HiveField(27)
  String max;

  //  Extensions for max
  @HiveField(28)
  Element elementMax;

  //  Information about the base definition of the element, provided to make
  // it unnecessary for tools to trace the deviation of the element through
  // the derived and related profiles. When the element definition is not
  // the original definition of an element - i.g. either in a constraint on
  // another type, or for elements from a super type in a snap shot - then
  // the information in provided in the element definition may be different
  // to the base definition. On the original definition of the element, it
  // will be same.
  @HiveField(29)
  ElementDefinition_Base base;

  //  Identifies an element defined elsewhere in the definition whose
  // content rules should be applied to the current element.
  // ContentReferences bring across all the rules that are in the
  // ElementDefinition for the element, including definitions, cardinality
  // constraints, bindings, invariants etc.
  @HiveField(30)
  String contentReference;

  //  Extensions for contentReference
  @HiveField(31)
  Element elementContentReference;

  //  The data type or resource that the value of this element is permitted
  // to be.
  @HiveField(32)
  List<ElementDefinition_Type> type;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(33)
  String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for defaultValueBase64Binary
  @HiveField(34)
  Element elementDefaultValueBase64Binary;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(35)
  bool defaultValueBoolean; //  pattern: ^true|false$

  //  Extensions for defaultValueBoolean
  @HiveField(36)
  Element elementDefaultValueBoolean;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(37)
  String defaultValueCanonical; //  pattern: ^\S*$

  //  Extensions for defaultValueCanonical
  @HiveField(38)
  Element elementDefaultValueCanonical;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(39)
  String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for defaultValueCode
  @HiveField(40)
  Element elementDefaultValueCode;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(41)
  String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for defaultValueDate
  @HiveField(42)
  Element elementDefaultValueDate;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(43)
  String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for defaultValueDateTime
  @HiveField(44)
  Element elementDefaultValueDateTime;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for defaultValueDecimal
  @HiveField(46)
  Element elementDefaultValueDecimal;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(47)
  String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for defaultValueId
  @HiveField(48)
  Element elementDefaultValueId;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(49)
  String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for defaultValueInstant
  @HiveField(50)
  Element elementDefaultValueInstant;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for defaultValueInteger
  @HiveField(52)
  Element elementDefaultValueInteger;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(53)
  String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueMarkdown
  @HiveField(54)
  Element elementDefaultValueMarkdown;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(55)
  String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for defaultValueOid
  @HiveField(56)
  Element elementDefaultValueOid;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for defaultValuePositiveInt
  @HiveField(58)
  Element elementDefaultValuePositiveInt;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(59)
  String defaultValueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueString
  @HiveField(60)
  Element elementDefaultValueString;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(61)
  String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for defaultValueTime
  @HiveField(62)
  Element elementDefaultValueTime;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for defaultValueUnsignedInt
  @HiveField(64)
  Element elementDefaultValueUnsignedInt;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(65)
  String defaultValueUri; //  pattern: ^\S*$

  //  Extensions for defaultValueUri
  @HiveField(66)
  Element elementDefaultValueUri;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(67)
  String defaultValueUrl; //  pattern: ^\S*$

  //  Extensions for defaultValueUrl
  @HiveField(68)
  Element elementDefaultValueUrl;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(69)
  String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for defaultValueUuid
  @HiveField(70)
  Element elementDefaultValueUuid;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(71)
  Address defaultValueAddress;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(72)
  Age defaultValueAge;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(73)
  Annotation defaultValueAnnotation;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(74)
  Attachment defaultValueAttachment;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(75)
  CodeableConcept defaultValueCodeableConcept;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(76)
  Coding defaultValueCoding;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(77)
  ContactPoint defaultValueContactPoint;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(78)
  Count defaultValueCount;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(79)
  Distance defaultValueDistance;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(80)
  Duration defaultValueDuration;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(81)
  HumanName defaultValueHumanName;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(82)
  Identifier defaultValueIdentifier;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(83)
  Money defaultValueMoney;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(84)
  Period defaultValuePeriod;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(85)
  Quantity defaultValueQuantity;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(86)
  Range defaultValueRange;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(87)
  Ratio defaultValueRatio;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(88)
  Reference defaultValueReference;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(89)
  SampledData defaultValueSampledData;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(90)
  Signature defaultValueSignature;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(91)
  Timing defaultValueTiming;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(92)
  ContactDetail defaultValueContactDetail;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(93)
  Contributor defaultValueContributor;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(94)
  DataRequirement defaultValueDataRequirement;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(95)
  Expression defaultValueExpression;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(96)
  ParameterDefinition defaultValueParameterDefinition;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(97)
  RelatedArtifact defaultValueRelatedArtifact;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(98)
  TriggerDefinition defaultValueTriggerDefinition;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(99)
  UsageContext defaultValueUsageContext;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(100)
  Dosage defaultValueDosage;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  @HiveField(101)
  Meta defaultValueMeta;

  //  The Implicit meaning that is to be understood when this element is
  // missing (e.g. 'when this element is missing, the period is ongoing').
  @HiveField(102)
  String meaningWhenMissing;

  //  Extensions for meaningWhenMissing
  @HiveField(103)
  Element elementMeaningWhenMissing;

  //  If present, indicates that the order of the repeating element has
  // meaning and describes what that meaning is.  If absent, it means that
  // the order of the element has no meaning.
  @HiveField(104)
  String orderMeaning;

  //  Extensions for orderMeaning
  @HiveField(105)
  Element elementOrderMeaning;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(106)
  String fixedBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for fixedBase64Binary
  @HiveField(107)
  Element elementFixedBase64Binary;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(108)
  bool fixedBoolean; //  pattern: ^true|false$

  //  Extensions for fixedBoolean
  @HiveField(109)
  Element elementFixedBoolean;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(110)
  String fixedCanonical; //  pattern: ^\S*$

  //  Extensions for fixedCanonical
  @HiveField(111)
  Element elementFixedCanonical;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(112)
  String fixedCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for fixedCode
  @HiveField(113)
  Element elementFixedCode;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(114)
  String fixedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for fixedDate
  @HiveField(115)
  Element elementFixedDate;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(116)
  String fixedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for fixedDateTime
  @HiveField(117)
  Element elementFixedDateTime;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  double fixedDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for fixedDecimal
  @HiveField(119)
  Element elementFixedDecimal;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(120)
  String fixedId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for fixedId
  @HiveField(121)
  Element elementFixedId;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(122)
  String fixedInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for fixedInstant
  @HiveField(123)
  Element elementFixedInstant;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  int fixedInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for fixedInteger
  @HiveField(125)
  Element elementFixedInteger;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(126)
  String fixedMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for fixedMarkdown
  @HiveField(127)
  Element elementFixedMarkdown;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(128)
  String fixedOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for fixedOid
  @HiveField(129)
  Element elementFixedOid;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  int fixedPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for fixedPositiveInt
  @HiveField(131)
  Element elementFixedPositiveInt;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(132)
  String fixedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for fixedString
  @HiveField(133)
  Element elementFixedString;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(134)
  String fixedTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for fixedTime
  @HiveField(135)
  Element elementFixedTime;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  int fixedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for fixedUnsignedInt
  @HiveField(137)
  Element elementFixedUnsignedInt;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(138)
  String fixedUri; //  pattern: ^\S*$

  //  Extensions for fixedUri
  @HiveField(139)
  Element elementFixedUri;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(140)
  String fixedUrl; //  pattern: ^\S*$

  //  Extensions for fixedUrl
  @HiveField(141)
  Element elementFixedUrl;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(142)
  String fixedUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for fixedUuid
  @HiveField(143)
  Element elementFixedUuid;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(144)
  Address fixedAddress;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(145)
  Age fixedAge;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(146)
  Annotation fixedAnnotation;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(147)
  Attachment fixedAttachment;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(148)
  CodeableConcept fixedCodeableConcept;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(149)
  Coding fixedCoding;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(150)
  ContactPoint fixedContactPoint;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(151)
  Count fixedCount;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(152)
  Distance fixedDistance;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(153)
  Duration fixedDuration;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(154)
  HumanName fixedHumanName;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(155)
  Identifier fixedIdentifier;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(156)
  Money fixedMoney;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(157)
  Period fixedPeriod;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(158)
  Quantity fixedQuantity;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(159)
  Range fixedRange;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(160)
  Ratio fixedRatio;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(161)
  Reference fixedReference;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(162)
  SampledData fixedSampledData;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(163)
  Signature fixedSignature;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(164)
  Timing fixedTiming;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(165)
  ContactDetail fixedContactDetail;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(166)
  Contributor fixedContributor;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(167)
  DataRequirement fixedDataRequirement;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(168)
  Expression fixedExpression;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(169)
  ParameterDefinition fixedParameterDefinition;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(170)
  RelatedArtifact fixedRelatedArtifact;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(171)
  TriggerDefinition fixedTriggerDefinition;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(172)
  UsageContext fixedUsageContext;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(173)
  Dosage fixedDosage;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  @HiveField(174)
  Meta fixedMeta;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(175)
  String patternBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for patternBase64Binary
  @HiveField(176)
  Element elementPatternBase64Binary;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(177)
  bool patternBoolean; //  pattern: ^true|false$

  //  Extensions for patternBoolean
  @HiveField(178)
  Element elementPatternBoolean;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(179)
  String patternCanonical; //  pattern: ^\S*$

  //  Extensions for patternCanonical
  @HiveField(180)
  Element elementPatternCanonical;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(181)
  String patternCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for patternCode
  @HiveField(182)
  Element elementPatternCode;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(183)
  String patternDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for patternDate
  @HiveField(184)
  Element elementPatternDate;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(185)
  String patternDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for patternDateTime
  @HiveField(186)
  Element elementPatternDateTime;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  double patternDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for patternDecimal
  @HiveField(188)
  Element elementPatternDecimal;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(189)
  String patternId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for patternId
  @HiveField(190)
  Element elementPatternId;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(191)
  String patternInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for patternInstant
  @HiveField(192)
  Element elementPatternInstant;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  int patternInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for patternInteger
  @HiveField(194)
  Element elementPatternInteger;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(195)
  String patternMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for patternMarkdown
  @HiveField(196)
  Element elementPatternMarkdown;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(197)
  String patternOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for patternOid
  @HiveField(198)
  Element elementPatternOid;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  int patternPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for patternPositiveInt
  @HiveField(200)
  Element elementPatternPositiveInt;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(201)
  String patternString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for patternString
  @HiveField(202)
  Element elementPatternString;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(203)
  String patternTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for patternTime
  @HiveField(204)
  Element elementPatternTime;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  int patternUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for patternUnsignedInt
  @HiveField(206)
  Element elementPatternUnsignedInt;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(207)
  String patternUri; //  pattern: ^\S*$

  //  Extensions for patternUri
  @HiveField(208)
  Element elementPatternUri;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(209)
  String patternUrl; //  pattern: ^\S*$

  //  Extensions for patternUrl
  @HiveField(210)
  Element elementPatternUrl;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(211)
  String patternUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for patternUuid
  @HiveField(212)
  Element elementPatternUuid;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(213)
  Address patternAddress;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(214)
  Age patternAge;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(215)
  Annotation patternAnnotation;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(216)
  Attachment patternAttachment;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(217)
  CodeableConcept patternCodeableConcept;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(218)
  Coding patternCoding;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(219)
  ContactPoint patternContactPoint;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(220)
  Count patternCount;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(221)
  Distance patternDistance;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(222)
  Duration patternDuration;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(223)
  HumanName patternHumanName;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(224)
  Identifier patternIdentifier;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(225)
  Money patternMoney;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(226)
  Period patternPeriod;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(227)
  Quantity patternQuantity;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(228)
  Range patternRange;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(229)
  Ratio patternRatio;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(230)
  Reference patternReference;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(231)
  SampledData patternSampledData;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(232)
  Signature patternSignature;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(233)
  Timing patternTiming;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(234)
  ContactDetail patternContactDetail;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(235)
  Contributor patternContributor;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(236)
  DataRequirement patternDataRequirement;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(237)
  Expression patternExpression;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(238)
  ParameterDefinition patternParameterDefinition;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(239)
  RelatedArtifact patternRelatedArtifact;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(240)
  TriggerDefinition patternTriggerDefinition;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(241)
  UsageContext patternUsageContext;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(242)
  Dosage patternDosage;

  //  Specifies a value that the value in the instance SHALL follow - that
  // is, any value in the pattern must be found in the instance. Other
  // additional values may be found too. This is effectively constraint by
  // example.   When pattern[x] is used to constrain a primitive, it means
  // that the value provided in the pattern[x] must match the instance value
  // exactly. When pattern[x] is used to constrain an array, it means that
  // each element provided in the pattern[x] array must (recursively) match
  // at least one element from the instance array. When pattern[x] is used
  // to constrain a complex object, it means that each property in the
  // pattern must be present in the complex object, and its value must
  // recursively match -- i.e., 1. If primitive: it must match exactly the
  // pattern value 2. If a complex object: it must match (recursively) the
  // pattern value 3. If an array: it must match (recursively) the pattern
  // value.
  @HiveField(243)
  Meta patternMeta;

  //  A sample value for this element demonstrating the type of information
  // that would typically be found in the element.
  @HiveField(244)
  List<ElementDefinition_Example> example;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(245)
  String minValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for minValueDate
  @HiveField(246)
  Element elementMinValueDate;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(247)
  String minValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for minValueDateTime
  @HiveField(248)
  Element elementMinValueDateTime;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(249)
  String minValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for minValueInstant
  @HiveField(250)
  Element elementMinValueInstant;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(251)
  String minValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for minValueTime
  @HiveField(252)
  Element elementMinValueTime;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  double minValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for minValueDecimal
  @HiveField(254)
  Element elementMinValueDecimal;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int minValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for minValueInteger
  @HiveField(256)
  Element elementMinValueInteger;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int minValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for minValuePositiveInt
  @HiveField(258)
  Element elementMinValuePositiveInt;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int minValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for minValueUnsignedInt
  @HiveField(260)
  Element elementMinValueUnsignedInt;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(261)
  Quantity minValueQuantity;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(262)
  String maxValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for maxValueDate
  @HiveField(263)
  Element elementMaxValueDate;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(264)
  String maxValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for maxValueDateTime
  @HiveField(265)
  Element elementMaxValueDateTime;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(266)
  String maxValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for maxValueInstant
  @HiveField(267)
  Element elementMaxValueInstant;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(268)
  String maxValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for maxValueTime
  @HiveField(269)
  Element elementMaxValueTime;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  double maxValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for maxValueDecimal
  @HiveField(271)
  Element elementMaxValueDecimal;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int maxValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for maxValueInteger
  @HiveField(273)
  Element elementMaxValueInteger;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int maxValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for maxValuePositiveInt
  @HiveField(275)
  Element elementMaxValuePositiveInt;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int maxValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for maxValueUnsignedInt
  @HiveField(277)
  Element elementMaxValueUnsignedInt;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  @HiveField(278)
  Quantity maxValueQuantity;

  //  Indicates the maximum length in characters that is permitted to be
  // present in conformant instances and which is expected to be supported
  // by conformant consumers that support the element.
  @HiveField(279)
  int maxLength;

  //  Extensions for maxLength
  @HiveField(280)
  Element elementMaxLength;

  //  A reference to an invariant that may make additional statements about
  // the cardinality or value in the instance.
  @HiveField(281)
  List<String> condition;

  //  Extensions for condition
  @HiveField(282)
  List<Element> elementCondition;

  //  Formal constraints such as co-occurrence and other constraints that
  // can be computationally evaluated within the context of the instance.
  @HiveField(283)
  List<ElementDefinition_Constraint> constraint;

  //  If true, implementations that produce or consume resources SHALL
  // provide "support" for the element in some meaningful way.  If false,
  // the element may be ignored and not supported. If false, whether to
  // populate or use the data element in any way is at the discretion of the
  // implementation.
  @HiveField(284)
  bool mustSupport;

  //  Extensions for mustSupport
  @HiveField(285)
  Element elementMustSupport;

  //  If true, the value of this element affects the interpretation of the
  // element or resource that contains it, and the value of the element
  // cannot be ignored. Typically, this is used for status, negation and
  // qualification codes. The effect of this is that the element cannot be
  // ignored by systems: they SHALL either recognize the element and process
  // it, and/or a pre-determination has been made that it is not relevant to
  // their particular system.
  @HiveField(286)
  bool isModifier;

  //  Extensions for isModifier
  @HiveField(287)
  Element elementIsModifier;

  //  Explains how that element affects the interpretation of the resource
  // or element that contains it.
  @HiveField(288)
  String isModifierReason;

  //  Extensions for isModifierReason
  @HiveField(289)
  Element elementIsModifierReason;

  //  Whether the element should be included if a client requests a search
  // with the parameter _summary=true.
  @HiveField(290)
  bool isSummary;

  //  Extensions for isSummary
  @HiveField(291)
  Element elementIsSummary;

  //  Binds to a value set if this element is coded (code, Coding,
  // CodeableConcept, Quantity), or the data types (string, uri).
  @HiveField(292)
  ElementDefinition_Binding binding;

  //  Identifies a concept from an external specification that roughly
  // corresponds to this element.
  @HiveField(293)
  List<ElementDefinition_Mapping> mapping;

ElementDefinition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.representation,
    this.elementRepresentation,
    this.sliceName,
    this.elementSliceName,
    this.sliceIsConstraining,
    this.elementSliceIsConstraining,
    this.label,
    this.elementLabel,
    this.code,
    this.slicing,
    this.short,
    this.elementShort,
    this.definition,
    this.elementDefinition,
    this.comment,
    this.elementComment,
    this.requirements,
    this.elementRequirements,
    this.alias,
    this.elementAlias,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax,
    this.base,
    this.contentReference,
    this.elementContentReference,
    this.type,
    this.defaultValueBase64Binary,
    this.elementDefaultValueBase64Binary,
    this.defaultValueBoolean,
    this.elementDefaultValueBoolean,
    this.defaultValueCanonical,
    this.elementDefaultValueCanonical,
    this.defaultValueCode,
    this.elementDefaultValueCode,
    this.defaultValueDate,
    this.elementDefaultValueDate,
    this.defaultValueDateTime,
    this.elementDefaultValueDateTime,
    this.defaultValueDecimal,
    this.elementDefaultValueDecimal,
    this.defaultValueId,
    this.elementDefaultValueId,
    this.defaultValueInstant,
    this.elementDefaultValueInstant,
    this.defaultValueInteger,
    this.elementDefaultValueInteger,
    this.defaultValueMarkdown,
    this.elementDefaultValueMarkdown,
    this.defaultValueOid,
    this.elementDefaultValueOid,
    this.defaultValuePositiveInt,
    this.elementDefaultValuePositiveInt,
    this.defaultValueString,
    this.elementDefaultValueString,
    this.defaultValueTime,
    this.elementDefaultValueTime,
    this.defaultValueUnsignedInt,
    this.elementDefaultValueUnsignedInt,
    this.defaultValueUri,
    this.elementDefaultValueUri,
    this.defaultValueUrl,
    this.elementDefaultValueUrl,
    this.defaultValueUuid,
    this.elementDefaultValueUuid,
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
    this.meaningWhenMissing,
    this.elementMeaningWhenMissing,
    this.orderMeaning,
    this.elementOrderMeaning,
    this.fixedBase64Binary,
    this.elementFixedBase64Binary,
    this.fixedBoolean,
    this.elementFixedBoolean,
    this.fixedCanonical,
    this.elementFixedCanonical,
    this.fixedCode,
    this.elementFixedCode,
    this.fixedDate,
    this.elementFixedDate,
    this.fixedDateTime,
    this.elementFixedDateTime,
    this.fixedDecimal,
    this.elementFixedDecimal,
    this.fixedId,
    this.elementFixedId,
    this.fixedInstant,
    this.elementFixedInstant,
    this.fixedInteger,
    this.elementFixedInteger,
    this.fixedMarkdown,
    this.elementFixedMarkdown,
    this.fixedOid,
    this.elementFixedOid,
    this.fixedPositiveInt,
    this.elementFixedPositiveInt,
    this.fixedString,
    this.elementFixedString,
    this.fixedTime,
    this.elementFixedTime,
    this.fixedUnsignedInt,
    this.elementFixedUnsignedInt,
    this.fixedUri,
    this.elementFixedUri,
    this.fixedUrl,
    this.elementFixedUrl,
    this.fixedUuid,
    this.elementFixedUuid,
    this.fixedAddress,
    this.fixedAge,
    this.fixedAnnotation,
    this.fixedAttachment,
    this.fixedCodeableConcept,
    this.fixedCoding,
    this.fixedContactPoint,
    this.fixedCount,
    this.fixedDistance,
    this.fixedDuration,
    this.fixedHumanName,
    this.fixedIdentifier,
    this.fixedMoney,
    this.fixedPeriod,
    this.fixedQuantity,
    this.fixedRange,
    this.fixedRatio,
    this.fixedReference,
    this.fixedSampledData,
    this.fixedSignature,
    this.fixedTiming,
    this.fixedContactDetail,
    this.fixedContributor,
    this.fixedDataRequirement,
    this.fixedExpression,
    this.fixedParameterDefinition,
    this.fixedRelatedArtifact,
    this.fixedTriggerDefinition,
    this.fixedUsageContext,
    this.fixedDosage,
    this.fixedMeta,
    this.patternBase64Binary,
    this.elementPatternBase64Binary,
    this.patternBoolean,
    this.elementPatternBoolean,
    this.patternCanonical,
    this.elementPatternCanonical,
    this.patternCode,
    this.elementPatternCode,
    this.patternDate,
    this.elementPatternDate,
    this.patternDateTime,
    this.elementPatternDateTime,
    this.patternDecimal,
    this.elementPatternDecimal,
    this.patternId,
    this.elementPatternId,
    this.patternInstant,
    this.elementPatternInstant,
    this.patternInteger,
    this.elementPatternInteger,
    this.patternMarkdown,
    this.elementPatternMarkdown,
    this.patternOid,
    this.elementPatternOid,
    this.patternPositiveInt,
    this.elementPatternPositiveInt,
    this.patternString,
    this.elementPatternString,
    this.patternTime,
    this.elementPatternTime,
    this.patternUnsignedInt,
    this.elementPatternUnsignedInt,
    this.patternUri,
    this.elementPatternUri,
    this.patternUrl,
    this.elementPatternUrl,
    this.patternUuid,
    this.elementPatternUuid,
    this.patternAddress,
    this.patternAge,
    this.patternAnnotation,
    this.patternAttachment,
    this.patternCodeableConcept,
    this.patternCoding,
    this.patternContactPoint,
    this.patternCount,
    this.patternDistance,
    this.patternDuration,
    this.patternHumanName,
    this.patternIdentifier,
    this.patternMoney,
    this.patternPeriod,
    this.patternQuantity,
    this.patternRange,
    this.patternRatio,
    this.patternReference,
    this.patternSampledData,
    this.patternSignature,
    this.patternTiming,
    this.patternContactDetail,
    this.patternContributor,
    this.patternDataRequirement,
    this.patternExpression,
    this.patternParameterDefinition,
    this.patternRelatedArtifact,
    this.patternTriggerDefinition,
    this.patternUsageContext,
    this.patternDosage,
    this.patternMeta,
    this.example,
    this.minValueDate,
    this.elementMinValueDate,
    this.minValueDateTime,
    this.elementMinValueDateTime,
    this.minValueInstant,
    this.elementMinValueInstant,
    this.minValueTime,
    this.elementMinValueTime,
    this.minValueDecimal,
    this.elementMinValueDecimal,
    this.minValueInteger,
    this.elementMinValueInteger,
    this.minValuePositiveInt,
    this.elementMinValuePositiveInt,
    this.minValueUnsignedInt,
    this.elementMinValueUnsignedInt,
    this.minValueQuantity,
    this.maxValueDate,
    this.elementMaxValueDate,
    this.maxValueDateTime,
    this.elementMaxValueDateTime,
    this.maxValueInstant,
    this.elementMaxValueInstant,
    this.maxValueTime,
    this.elementMaxValueTime,
    this.maxValueDecimal,
    this.elementMaxValueDecimal,
    this.maxValueInteger,
    this.elementMaxValueInteger,
    this.maxValuePositiveInt,
    this.elementMaxValuePositiveInt,
    this.maxValueUnsignedInt,
    this.elementMaxValueUnsignedInt,
    this.maxValueQuantity,
    this.maxLength,
    this.elementMaxLength,
    this.condition,
    this.elementCondition,
    this.constraint,
    this.mustSupport,
    this.elementMustSupport,
    this.isModifier,
    this.elementIsModifier,
    this.isModifierReason,
    this.elementIsModifierReason,
    this.isSummary,
    this.elementIsSummary,
    this.binding,
    this.mapping
    });

  factory ElementDefinition.fromJson(Map<String, dynamic> json) => _$ElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Slicing {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Designates which child elements are used to discriminate between the
  // slices when processing an instance. If one or more discriminators are
  // provided, the value of the child elements in the instance data SHALL
  // completely distinguish which slice the element in the resource matches
  // based on the allowed values for those elements in each of the slices.
  List<ElementDefinition_Discriminator> discriminator;

  //  A human-readable text description of how the slicing works. If there
  // is no discriminator, this is required to be present to provide whatever
  // information is possible about how the slices can be differentiated.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  If the matching elements have to occur in the same order as defined in
  // the profile.
  bool ordered;

  //  Extensions for ordered
  Element elementOrdered;

  //  Whether additional slices are allowed or not. When the slices are
  // ordered, profile authors can also say that additional slices are only
  // allowed at the end.
  String rules; // <code> enum: closed/open/openAtEnd;

  //  Extensions for rules
  Element elementRules;

ElementDefinition_Slicing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.discriminator,
    this.description,
    this.elementDescription,
    this.ordered,
    this.elementOrdered,
    this.rules,
    this.elementRules
    });

  factory ElementDefinition_Slicing.fromJson(Map<String, dynamic> json) => _$ElementDefinition_SlicingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_SlicingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Discriminator {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  How the element value is interpreted when discrimination is evaluated.
  String type; // <code> enum: value/exists/pattern/type/profile;

  //  Extensions for type
  Element elementType;

  //  A FHIRPath expression, using [the simple subset of
  // FHIRPath](fhirpath.html#simple), that is used to identify the element
  // on which discrimination is based.
  String path;

  //  Extensions for path
  Element elementPath;

ElementDefinition_Discriminator(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.elementType,
    this.path,
    this.elementPath
    });

  factory ElementDefinition_Discriminator.fromJson(Map<String, dynamic> json) => _$ElementDefinition_DiscriminatorFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_DiscriminatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Base {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  The Path that identifies the base element - this matches the
  // ElementDefinition.path for that element. Across FHIR, there is only one
  // base definition of any element - that is, an element definition on a
  // [[[StructureDefinition]]] without a StructureDefinition.base.
  String path;

  //  Extensions for path
  Element elementPath;

  //  Minimum cardinality of the base element identified by the path.
  int min;

  //  Extensions for min
  Element elementMin;

  //  Maximum cardinality of the base element identified by the path.
  String max;

  //  Extensions for max
  Element elementMax;

ElementDefinition_Base(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.elementPath,
    this.min,
    this.elementMin,
    this.max,
    this.elementMax
    });

  factory ElementDefinition_Base.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BaseFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BaseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Type {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  URL of Data type or Resource that is a(or the) type used for this
  // element. References are URLs that are relative to
  // http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  // http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  // allowed in logical models.
  String code;

  //  Extensions for code
  Element elementCode;

  //  Identifies a profile structure or implementation Guide that applies to
  // the datatype this element refers to. If any profiles are specified,
  // then the content must conform to at least one of them. The URL can be a
  // local reference - to a contained StructureDefinition, or a reference to
  // another StructureDefinition or Implementation Guide by a canonical URL.
  // When an implementation guide is specified, the type SHALL conform to at
  // least one profile defined in the implementation guide.
  List<String> profile;

  //  Used when the type is "Reference" or "canonical", and identifies a
  // profile structure or implementation Guide that applies to the target of
  // the reference this element refers to. If any profiles are specified,
  // then the content must conform to at least one of them. The URL can be a
  // local reference - to a contained StructureDefinition, or a reference to
  // another StructureDefinition or Implementation Guide by a canonical URL.
  // When an implementation guide is specified, the target resource SHALL
  // conform to at least one profile defined in the implementation guide.
  List<String> targetProfile;

  //  If the type is a reference to another resource, how the resource is or
  // can be aggregated - is it a contained resource, or a reference, and if
  // the context is a bundle, is it included in the bundle.
  List<String> aggregation; // <code> enum: contained/referenced/bundled> aggregation;

  //  Extensions for aggregation
  List<Element> elementAggregation;

  //  Whether this reference needs to be version specific or version
  // independent, or whether either can be used.
  String versioning; // <code> enum: either/independent/specific;

  //  Extensions for versioning
  Element elementVersioning;

ElementDefinition_Type(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.elementCode,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.elementAggregation,
    this.versioning,
    this.elementVersioning
    });

  factory ElementDefinition_Type.fromJson(Map<String, dynamic> json) => _$ElementDefinition_TypeFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Example {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Describes the purpose of this example amoung the set of examples.
  String label;

  //  Extensions for label
  Element elementLabel;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  Element elementValueBase64Binary;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element elementValueBoolean;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  Element elementValueCanonical;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  Element elementValueCode;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element elementValueDate;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element elementValueDateTime;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element elementValueDecimal;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  Element elementValueId;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  Element elementValueInstant;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element elementValueInteger;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  Element elementValueMarkdown;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  Element elementValueOid;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  Element elementValuePositiveInt;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element elementValueString;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element elementValueTime;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  Element elementValueUnsignedInt;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  Element elementValueUri;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  Element elementValueUrl;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  Element elementValueUuid;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Address valueAddress;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Age valueAge;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Annotation valueAnnotation;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Attachment valueAttachment;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  CodeableConcept valueCodeableConcept;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Coding valueCoding;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  ContactPoint valueContactPoint;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Count valueCount;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Distance valueDistance;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Duration valueDuration;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  HumanName valueHumanName;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Identifier valueIdentifier;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Money valueMoney;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Period valuePeriod;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Quantity valueQuantity;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Range valueRange;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Ratio valueRatio;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Reference valueReference;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  SampledData valueSampledData;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Signature valueSignature;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Timing valueTiming;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  ContactDetail valueContactDetail;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Contributor valueContributor;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  DataRequirement valueDataRequirement;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Expression valueExpression;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  ParameterDefinition valueParameterDefinition;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  RelatedArtifact valueRelatedArtifact;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  TriggerDefinition valueTriggerDefinition;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  UsageContext valueUsageContext;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Dosage valueDosage;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  Meta valueMeta;

ElementDefinition_Example(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.label,
    this.elementLabel,
    this.valueBase64Binary,
    this.elementValueBase64Binary,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueCanonical,
    this.elementValueCanonical,
    this.valueCode,
    this.elementValueCode,
    this.valueDate,
    this.elementValueDate,
    this.valueDateTime,
    this.elementValueDateTime,
    this.valueDecimal,
    this.elementValueDecimal,
    this.valueId,
    this.elementValueId,
    this.valueInstant,
    this.elementValueInstant,
    this.valueInteger,
    this.elementValueInteger,
    this.valueMarkdown,
    this.elementValueMarkdown,
    this.valueOid,
    this.elementValueOid,
    this.valuePositiveInt,
    this.elementValuePositiveInt,
    this.valueString,
    this.elementValueString,
    this.valueTime,
    this.elementValueTime,
    this.valueUnsignedInt,
    this.elementValueUnsignedInt,
    this.valueUri,
    this.elementValueUri,
    this.valueUrl,
    this.elementValueUrl,
    this.valueUuid,
    this.elementValueUuid,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    this.valueMeta
    });

  factory ElementDefinition_Example.fromJson(Map<String, dynamic> json) => _$ElementDefinition_ExampleFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_ExampleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Constraint {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Allows identification of which elements have their cardinalities
  // impacted by the constraint.  Will not be referenced for constraints
  // that do not affect cardinality.
  String key;

  //  Extensions for key
  Element elementKey;

  //  Description of why this constraint is necessary or appropriate.
  String requirements;

  //  Extensions for requirements
  Element elementRequirements;

  //  Identifies the impact constraint violation has on the conformance of
  // the instance.
  String severity; // <code> enum: error/warning;

  //  Extensions for severity
  Element elementSeverity;

  //  Text that can be used to describe the constraint in messages
  // identifying that the constraint has been violated.
  String human;

  //  Extensions for human
  Element elementHuman;

  //  A [FHIRPath](fhirpath.html) expression of constraint that can be
  // executed to see if this constraint is met.
  String expression;

  //  Extensions for expression
  Element elementExpression;

  //  An XPath expression of constraint that can be executed to see if this
  // constraint is met.
  String xpath;

  //  Extensions for xpath
  Element elementXpath;

  //  A reference to the original source of the constraint, for traceability
  // purposes.
  String source;

ElementDefinition_Constraint(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.key,
    this.elementKey,
    this.requirements,
    this.elementRequirements,
    this.severity,
    this.elementSeverity,
    this.human,
    this.elementHuman,
    this.expression,
    this.elementExpression,
    this.xpath,
    this.elementXpath,
    this.source
    });

  factory ElementDefinition_Constraint.fromJson(Map<String, dynamic> json) => _$ElementDefinition_ConstraintFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_ConstraintToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Binding {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  Indicates the degree of conformance expectations associated with this
  // binding - that is, the degree to which the provided value set must be
  // adhered to in the instances.
  String strength; // <code> enum: required/extensible/preferred/example;

  //  Extensions for strength
  Element elementStrength;

  //  Describes the intended use of this particular set of codes.
  String description;

  //  Extensions for description
  Element elementDescription;

  //  Refers to the value set that identifies the set of codes the binding
  // refers to.
  String valueSet;

ElementDefinition_Binding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.elementStrength,
    this.description,
    this.elementDescription,
    this.valueSet
    });

  factory ElementDefinition_Binding.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Mapping {

  //  Unique id for the element within a resource (for internal references).
  // This may be any string value that does not contain spaces.
  String id;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element. To make the use of extensions safe
  // and manageable, there is a strict set of governance  applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the element and that modifies the understanding
  // of the element in which it is contained and/or the understanding of the
  // containing element's descendants. Usually modifier elements provide
  // negation or qualification. To make the use of extensions safe and
  // manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer can define an
  // extension, there is a set of requirements that SHALL be met as part of
  // the definition of the extension. Applications processing a resource are
  // required to check for modifier extensions. Modifier extensions SHALL
  // NOT change the meaning of any elements on Resource or DomainResource
  // (including cannot change the meaning of modifierExtension itself).
  List<Extension> modifierExtension;

  //  An internal reference to the definition of a mapping.
  String identity;

  //  Extensions for identity
  Element elementIdentity;

  //  Identifies the computable language in which mapping.map is expressed.
  String language;

  //  Extensions for language
  Element elementLanguage;

  //  Expresses what part of the target specification corresponds to this
  // element.
  String map;

  //  Extensions for map
  Element elementMap;

  //  Comments that provide information about the mapping or its use.
  String comment;

  //  Extensions for comment
  Element elementComment;

ElementDefinition_Mapping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.elementIdentity,
    this.language,
    this.elementLanguage,
    this.map,
    this.elementMap,
    this.comment,
    this.elementComment
    });

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$ElementDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_MappingToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ElementDefinitionAdapter extends TypeAdapter<ElementDefinition> {
  @override
  final typeId = 55;

  @override
  ElementDefinition read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ElementDefinition(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      path: fields[3] as String,
      elementPath: fields[4] as Element,
      representation: (fields[5] as List)?.cast<String>(),
      elementRepresentation: (fields[6] as List)?.cast<Element>(),
      sliceName: fields[7] as String,
      elementSliceName: fields[8] as Element,
      sliceIsConstraining: fields[9] as bool,
      elementSliceIsConstraining: fields[10] as Element,
      label: fields[11] as String,
      elementLabel: fields[12] as Element,
      code: (fields[13] as List)?.cast<Coding>(),
      slicing: fields[14] as ElementDefinition_Slicing,
      short: fields[15] as String,
      elementShort: fields[16] as Element,
      definition: fields[17] as String,
      elementDefinition: fields[18] as Element,
      comment: fields[19] as String,
      elementComment: fields[20] as Element,
      requirements: fields[21] as String,
      elementRequirements: fields[22] as Element,
      alias: (fields[23] as List)?.cast<String>(),
      elementAlias: (fields[24] as List)?.cast<Element>(),
      min: fields[25] as int,
      elementMin: fields[26] as Element,
      max: fields[27] as String,
      elementMax: fields[28] as Element,
      base: fields[29] as ElementDefinition_Base,
      contentReference: fields[30] as String,
      elementContentReference: fields[31] as Element,
      type: (fields[32] as List)?.cast<ElementDefinition_Type>(),
      defaultValueBase64Binary: fields[33] as String,
      elementDefaultValueBase64Binary: fields[34] as Element,
      defaultValueBoolean: fields[35] as bool,
      elementDefaultValueBoolean: fields[36] as Element,
      defaultValueCanonical: fields[37] as String,
      elementDefaultValueCanonical: fields[38] as Element,
      defaultValueCode: fields[39] as String,
      elementDefaultValueCode: fields[40] as Element,
      defaultValueDate: fields[41] as String,
      elementDefaultValueDate: fields[42] as Element,
      defaultValueDateTime: fields[43] as String,
      elementDefaultValueDateTime: fields[44] as Element,
      elementDefaultValueDecimal: fields[46] as Element,
      defaultValueId: fields[47] as String,
      elementDefaultValueId: fields[48] as Element,
      defaultValueInstant: fields[49] as String,
      elementDefaultValueInstant: fields[50] as Element,
      elementDefaultValueInteger: fields[52] as Element,
      defaultValueMarkdown: fields[53] as String,
      elementDefaultValueMarkdown: fields[54] as Element,
      defaultValueOid: fields[55] as String,
      elementDefaultValueOid: fields[56] as Element,
      elementDefaultValuePositiveInt: fields[58] as Element,
      defaultValueString: fields[59] as String,
      elementDefaultValueString: fields[60] as Element,
      defaultValueTime: fields[61] as String,
      elementDefaultValueTime: fields[62] as Element,
      elementDefaultValueUnsignedInt: fields[64] as Element,
      defaultValueUri: fields[65] as String,
      elementDefaultValueUri: fields[66] as Element,
      defaultValueUrl: fields[67] as String,
      elementDefaultValueUrl: fields[68] as Element,
      defaultValueUuid: fields[69] as String,
      elementDefaultValueUuid: fields[70] as Element,
      defaultValueAddress: fields[71] as Address,
      defaultValueAge: fields[72] as Age,
      defaultValueAnnotation: fields[73] as Annotation,
      defaultValueAttachment: fields[74] as Attachment,
      defaultValueCodeableConcept: fields[75] as CodeableConcept,
      defaultValueCoding: fields[76] as Coding,
      defaultValueContactPoint: fields[77] as ContactPoint,
      defaultValueCount: fields[78] as Count,
      defaultValueDistance: fields[79] as Distance,
      defaultValueDuration: fields[80] as Duration,
      defaultValueHumanName: fields[81] as HumanName,
      defaultValueIdentifier: fields[82] as Identifier,
      defaultValueMoney: fields[83] as Money,
      defaultValuePeriod: fields[84] as Period,
      defaultValueQuantity: fields[85] as Quantity,
      defaultValueRange: fields[86] as Range,
      defaultValueRatio: fields[87] as Ratio,
      defaultValueReference: fields[88] as Reference,
      defaultValueSampledData: fields[89] as SampledData,
      defaultValueSignature: fields[90] as Signature,
      defaultValueTiming: fields[91] as Timing,
      defaultValueContactDetail: fields[92] as ContactDetail,
      defaultValueContributor: fields[93] as Contributor,
      defaultValueDataRequirement: fields[94] as DataRequirement,
      defaultValueExpression: fields[95] as Expression,
      defaultValueParameterDefinition: fields[96] as ParameterDefinition,
      defaultValueRelatedArtifact: fields[97] as RelatedArtifact,
      defaultValueTriggerDefinition: fields[98] as TriggerDefinition,
      defaultValueUsageContext: fields[99] as UsageContext,
      defaultValueDosage: fields[100] as Dosage,
      defaultValueMeta: fields[101] as Meta,
      meaningWhenMissing: fields[102] as String,
      elementMeaningWhenMissing: fields[103] as Element,
      orderMeaning: fields[104] as String,
      elementOrderMeaning: fields[105] as Element,
      fixedBase64Binary: fields[106] as String,
      elementFixedBase64Binary: fields[107] as Element,
      fixedBoolean: fields[108] as bool,
      elementFixedBoolean: fields[109] as Element,
      fixedCanonical: fields[110] as String,
      elementFixedCanonical: fields[111] as Element,
      fixedCode: fields[112] as String,
      elementFixedCode: fields[113] as Element,
      fixedDate: fields[114] as String,
      elementFixedDate: fields[115] as Element,
      fixedDateTime: fields[116] as String,
      elementFixedDateTime: fields[117] as Element,
      elementFixedDecimal: fields[119] as Element,
      fixedId: fields[120] as String,
      elementFixedId: fields[121] as Element,
      fixedInstant: fields[122] as String,
      elementFixedInstant: fields[123] as Element,
      elementFixedInteger: fields[125] as Element,
      fixedMarkdown: fields[126] as String,
      elementFixedMarkdown: fields[127] as Element,
      fixedOid: fields[128] as String,
      elementFixedOid: fields[129] as Element,
      elementFixedPositiveInt: fields[131] as Element,
      fixedString: fields[132] as String,
      elementFixedString: fields[133] as Element,
      fixedTime: fields[134] as String,
      elementFixedTime: fields[135] as Element,
      elementFixedUnsignedInt: fields[137] as Element,
      fixedUri: fields[138] as String,
      elementFixedUri: fields[139] as Element,
      fixedUrl: fields[140] as String,
      elementFixedUrl: fields[141] as Element,
      fixedUuid: fields[142] as String,
      elementFixedUuid: fields[143] as Element,
      fixedAddress: fields[144] as Address,
      fixedAge: fields[145] as Age,
      fixedAnnotation: fields[146] as Annotation,
      fixedAttachment: fields[147] as Attachment,
      fixedCodeableConcept: fields[148] as CodeableConcept,
      fixedCoding: fields[149] as Coding,
      fixedContactPoint: fields[150] as ContactPoint,
      fixedCount: fields[151] as Count,
      fixedDistance: fields[152] as Distance,
      fixedDuration: fields[153] as Duration,
      fixedHumanName: fields[154] as HumanName,
      fixedIdentifier: fields[155] as Identifier,
      fixedMoney: fields[156] as Money,
      fixedPeriod: fields[157] as Period,
      fixedQuantity: fields[158] as Quantity,
      fixedRange: fields[159] as Range,
      fixedRatio: fields[160] as Ratio,
      fixedReference: fields[161] as Reference,
      fixedSampledData: fields[162] as SampledData,
      fixedSignature: fields[163] as Signature,
      fixedTiming: fields[164] as Timing,
      fixedContactDetail: fields[165] as ContactDetail,
      fixedContributor: fields[166] as Contributor,
      fixedDataRequirement: fields[167] as DataRequirement,
      fixedExpression: fields[168] as Expression,
      fixedParameterDefinition: fields[169] as ParameterDefinition,
      fixedRelatedArtifact: fields[170] as RelatedArtifact,
      fixedTriggerDefinition: fields[171] as TriggerDefinition,
      fixedUsageContext: fields[172] as UsageContext,
      fixedDosage: fields[173] as Dosage,
      fixedMeta: fields[174] as Meta,
      patternBase64Binary: fields[175] as String,
      elementPatternBase64Binary: fields[176] as Element,
      patternBoolean: fields[177] as bool,
      elementPatternBoolean: fields[178] as Element,
      patternCanonical: fields[179] as String,
      elementPatternCanonical: fields[180] as Element,
      patternCode: fields[181] as String,
      elementPatternCode: fields[182] as Element,
      patternDate: fields[183] as String,
      elementPatternDate: fields[184] as Element,
      patternDateTime: fields[185] as String,
      elementPatternDateTime: fields[186] as Element,
      elementPatternDecimal: fields[188] as Element,
      patternId: fields[189] as String,
      elementPatternId: fields[190] as Element,
      patternInstant: fields[191] as String,
      elementPatternInstant: fields[192] as Element,
      elementPatternInteger: fields[194] as Element,
      patternMarkdown: fields[195] as String,
      elementPatternMarkdown: fields[196] as Element,
      patternOid: fields[197] as String,
      elementPatternOid: fields[198] as Element,
      elementPatternPositiveInt: fields[200] as Element,
      patternString: fields[201] as String,
      elementPatternString: fields[202] as Element,
      patternTime: fields[203] as String,
      elementPatternTime: fields[204] as Element,
      elementPatternUnsignedInt: fields[206] as Element,
      patternUri: fields[207] as String,
      elementPatternUri: fields[208] as Element,
      patternUrl: fields[209] as String,
      elementPatternUrl: fields[210] as Element,
      patternUuid: fields[211] as String,
      elementPatternUuid: fields[212] as Element,
      patternAddress: fields[213] as Address,
      patternAge: fields[214] as Age,
      patternAnnotation: fields[215] as Annotation,
      patternAttachment: fields[216] as Attachment,
      patternCodeableConcept: fields[217] as CodeableConcept,
      patternCoding: fields[218] as Coding,
      patternContactPoint: fields[219] as ContactPoint,
      patternCount: fields[220] as Count,
      patternDistance: fields[221] as Distance,
      patternDuration: fields[222] as Duration,
      patternHumanName: fields[223] as HumanName,
      patternIdentifier: fields[224] as Identifier,
      patternMoney: fields[225] as Money,
      patternPeriod: fields[226] as Period,
      patternQuantity: fields[227] as Quantity,
      patternRange: fields[228] as Range,
      patternRatio: fields[229] as Ratio,
      patternReference: fields[230] as Reference,
      patternSampledData: fields[231] as SampledData,
      patternSignature: fields[232] as Signature,
      patternTiming: fields[233] as Timing,
      patternContactDetail: fields[234] as ContactDetail,
      patternContributor: fields[235] as Contributor,
      patternDataRequirement: fields[236] as DataRequirement,
      patternExpression: fields[237] as Expression,
      patternParameterDefinition: fields[238] as ParameterDefinition,
      patternRelatedArtifact: fields[239] as RelatedArtifact,
      patternTriggerDefinition: fields[240] as TriggerDefinition,
      patternUsageContext: fields[241] as UsageContext,
      patternDosage: fields[242] as Dosage,
      patternMeta: fields[243] as Meta,
      example: (fields[244] as List)?.cast<ElementDefinition_Example>(),
      minValueDate: fields[245] as String,
      elementMinValueDate: fields[246] as Element,
      minValueDateTime: fields[247] as String,
      elementMinValueDateTime: fields[248] as Element,
      minValueInstant: fields[249] as String,
      elementMinValueInstant: fields[250] as Element,
      minValueTime: fields[251] as String,
      elementMinValueTime: fields[252] as Element,
      elementMinValueDecimal: fields[254] as Element,
      elementMinValueInteger: fields[256] as Element,
      elementMinValuePositiveInt: fields[258] as Element,
      elementMinValueUnsignedInt: fields[260] as Element,
      minValueQuantity: fields[261] as Quantity,
      maxValueDate: fields[262] as String,
      elementMaxValueDate: fields[263] as Element,
      maxValueDateTime: fields[264] as String,
      elementMaxValueDateTime: fields[265] as Element,
      maxValueInstant: fields[266] as String,
      elementMaxValueInstant: fields[267] as Element,
      maxValueTime: fields[268] as String,
      elementMaxValueTime: fields[269] as Element,
      elementMaxValueDecimal: fields[271] as Element,
      elementMaxValueInteger: fields[273] as Element,
      elementMaxValuePositiveInt: fields[275] as Element,
      elementMaxValueUnsignedInt: fields[277] as Element,
      maxValueQuantity: fields[278] as Quantity,
      maxLength: fields[279] as int,
      elementMaxLength: fields[280] as Element,
      condition: (fields[281] as List)?.cast<String>(),
      elementCondition: (fields[282] as List)?.cast<Element>(),
      constraint: (fields[283] as List)?.cast<ElementDefinition_Constraint>(),
      mustSupport: fields[284] as bool,
      elementMustSupport: fields[285] as Element,
      isModifier: fields[286] as bool,
      elementIsModifier: fields[287] as Element,
      isModifierReason: fields[288] as String,
      elementIsModifierReason: fields[289] as Element,
      isSummary: fields[290] as bool,
      elementIsSummary: fields[291] as Element,
      binding: fields[292] as ElementDefinition_Binding,
      mapping: (fields[293] as List)?.cast<ElementDefinition_Mapping>(),
    );
  }

  @override
  void write(BinaryWriter writer, ElementDefinition obj) {
    writer
      ..writeByte(274)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.elementPath)
      ..writeByte(5)
      ..write(obj.representation)
      ..writeByte(6)
      ..write(obj.elementRepresentation)
      ..writeByte(7)
      ..write(obj.sliceName)
      ..writeByte(8)
      ..write(obj.elementSliceName)
      ..writeByte(9)
      ..write(obj.sliceIsConstraining)
      ..writeByte(10)
      ..write(obj.elementSliceIsConstraining)
      ..writeByte(11)
      ..write(obj.label)
      ..writeByte(12)
      ..write(obj.elementLabel)
      ..writeByte(13)
      ..write(obj.code)
      ..writeByte(14)
      ..write(obj.slicing)
      ..writeByte(15)
      ..write(obj.short)
      ..writeByte(16)
      ..write(obj.elementShort)
      ..writeByte(17)
      ..write(obj.definition)
      ..writeByte(18)
      ..write(obj.elementDefinition)
      ..writeByte(19)
      ..write(obj.comment)
      ..writeByte(20)
      ..write(obj.elementComment)
      ..writeByte(21)
      ..write(obj.requirements)
      ..writeByte(22)
      ..write(obj.elementRequirements)
      ..writeByte(23)
      ..write(obj.alias)
      ..writeByte(24)
      ..write(obj.elementAlias)
      ..writeByte(25)
      ..write(obj.min)
      ..writeByte(26)
      ..write(obj.elementMin)
      ..writeByte(27)
      ..write(obj.max)
      ..writeByte(28)
      ..write(obj.elementMax)
      ..writeByte(29)
      ..write(obj.base)
      ..writeByte(30)
      ..write(obj.contentReference)
      ..writeByte(31)
      ..write(obj.elementContentReference)
      ..writeByte(32)
      ..write(obj.type)
      ..writeByte(33)
      ..write(obj.defaultValueBase64Binary)
      ..writeByte(34)
      ..write(obj.elementDefaultValueBase64Binary)
      ..writeByte(35)
      ..write(obj.defaultValueBoolean)
      ..writeByte(36)
      ..write(obj.elementDefaultValueBoolean)
      ..writeByte(37)
      ..write(obj.defaultValueCanonical)
      ..writeByte(38)
      ..write(obj.elementDefaultValueCanonical)
      ..writeByte(39)
      ..write(obj.defaultValueCode)
      ..writeByte(40)
      ..write(obj.elementDefaultValueCode)
      ..writeByte(41)
      ..write(obj.defaultValueDate)
      ..writeByte(42)
      ..write(obj.elementDefaultValueDate)
      ..writeByte(43)
      ..write(obj.defaultValueDateTime)
      ..writeByte(44)
      ..write(obj.elementDefaultValueDateTime)
      ..writeByte(46)
      ..write(obj.elementDefaultValueDecimal)
      ..writeByte(47)
      ..write(obj.defaultValueId)
      ..writeByte(48)
      ..write(obj.elementDefaultValueId)
      ..writeByte(49)
      ..write(obj.defaultValueInstant)
      ..writeByte(50)
      ..write(obj.elementDefaultValueInstant)
      ..writeByte(52)
      ..write(obj.elementDefaultValueInteger)
      ..writeByte(53)
      ..write(obj.defaultValueMarkdown)
      ..writeByte(54)
      ..write(obj.elementDefaultValueMarkdown)
      ..writeByte(55)
      ..write(obj.defaultValueOid)
      ..writeByte(56)
      ..write(obj.elementDefaultValueOid)
      ..writeByte(58)
      ..write(obj.elementDefaultValuePositiveInt)
      ..writeByte(59)
      ..write(obj.defaultValueString)
      ..writeByte(60)
      ..write(obj.elementDefaultValueString)
      ..writeByte(61)
      ..write(obj.defaultValueTime)
      ..writeByte(62)
      ..write(obj.elementDefaultValueTime)
      ..writeByte(64)
      ..write(obj.elementDefaultValueUnsignedInt)
      ..writeByte(65)
      ..write(obj.defaultValueUri)
      ..writeByte(66)
      ..write(obj.elementDefaultValueUri)
      ..writeByte(67)
      ..write(obj.defaultValueUrl)
      ..writeByte(68)
      ..write(obj.elementDefaultValueUrl)
      ..writeByte(69)
      ..write(obj.defaultValueUuid)
      ..writeByte(70)
      ..write(obj.elementDefaultValueUuid)
      ..writeByte(71)
      ..write(obj.defaultValueAddress)
      ..writeByte(72)
      ..write(obj.defaultValueAge)
      ..writeByte(73)
      ..write(obj.defaultValueAnnotation)
      ..writeByte(74)
      ..write(obj.defaultValueAttachment)
      ..writeByte(75)
      ..write(obj.defaultValueCodeableConcept)
      ..writeByte(76)
      ..write(obj.defaultValueCoding)
      ..writeByte(77)
      ..write(obj.defaultValueContactPoint)
      ..writeByte(78)
      ..write(obj.defaultValueCount)
      ..writeByte(79)
      ..write(obj.defaultValueDistance)
      ..writeByte(80)
      ..write(obj.defaultValueDuration)
      ..writeByte(81)
      ..write(obj.defaultValueHumanName)
      ..writeByte(82)
      ..write(obj.defaultValueIdentifier)
      ..writeByte(83)
      ..write(obj.defaultValueMoney)
      ..writeByte(84)
      ..write(obj.defaultValuePeriod)
      ..writeByte(85)
      ..write(obj.defaultValueQuantity)
      ..writeByte(86)
      ..write(obj.defaultValueRange)
      ..writeByte(87)
      ..write(obj.defaultValueRatio)
      ..writeByte(88)
      ..write(obj.defaultValueReference)
      ..writeByte(89)
      ..write(obj.defaultValueSampledData)
      ..writeByte(90)
      ..write(obj.defaultValueSignature)
      ..writeByte(91)
      ..write(obj.defaultValueTiming)
      ..writeByte(92)
      ..write(obj.defaultValueContactDetail)
      ..writeByte(93)
      ..write(obj.defaultValueContributor)
      ..writeByte(94)
      ..write(obj.defaultValueDataRequirement)
      ..writeByte(95)
      ..write(obj.defaultValueExpression)
      ..writeByte(96)
      ..write(obj.defaultValueParameterDefinition)
      ..writeByte(97)
      ..write(obj.defaultValueRelatedArtifact)
      ..writeByte(98)
      ..write(obj.defaultValueTriggerDefinition)
      ..writeByte(99)
      ..write(obj.defaultValueUsageContext)
      ..writeByte(100)
      ..write(obj.defaultValueDosage)
      ..writeByte(101)
      ..write(obj.defaultValueMeta)
      ..writeByte(102)
      ..write(obj.meaningWhenMissing)
      ..writeByte(103)
      ..write(obj.elementMeaningWhenMissing)
      ..writeByte(104)
      ..write(obj.orderMeaning)
      ..writeByte(105)
      ..write(obj.elementOrderMeaning)
      ..writeByte(106)
      ..write(obj.fixedBase64Binary)
      ..writeByte(107)
      ..write(obj.elementFixedBase64Binary)
      ..writeByte(108)
      ..write(obj.fixedBoolean)
      ..writeByte(109)
      ..write(obj.elementFixedBoolean)
      ..writeByte(110)
      ..write(obj.fixedCanonical)
      ..writeByte(111)
      ..write(obj.elementFixedCanonical)
      ..writeByte(112)
      ..write(obj.fixedCode)
      ..writeByte(113)
      ..write(obj.elementFixedCode)
      ..writeByte(114)
      ..write(obj.fixedDate)
      ..writeByte(115)
      ..write(obj.elementFixedDate)
      ..writeByte(116)
      ..write(obj.fixedDateTime)
      ..writeByte(117)
      ..write(obj.elementFixedDateTime)
      ..writeByte(119)
      ..write(obj.elementFixedDecimal)
      ..writeByte(120)
      ..write(obj.fixedId)
      ..writeByte(121)
      ..write(obj.elementFixedId)
      ..writeByte(122)
      ..write(obj.fixedInstant)
      ..writeByte(123)
      ..write(obj.elementFixedInstant)
      ..writeByte(125)
      ..write(obj.elementFixedInteger)
      ..writeByte(126)
      ..write(obj.fixedMarkdown)
      ..writeByte(127)
      ..write(obj.elementFixedMarkdown)
      ..writeByte(128)
      ..write(obj.fixedOid)
      ..writeByte(129)
      ..write(obj.elementFixedOid)
      ..writeByte(131)
      ..write(obj.elementFixedPositiveInt)
      ..writeByte(132)
      ..write(obj.fixedString)
      ..writeByte(133)
      ..write(obj.elementFixedString)
      ..writeByte(134)
      ..write(obj.fixedTime)
      ..writeByte(135)
      ..write(obj.elementFixedTime)
      ..writeByte(137)
      ..write(obj.elementFixedUnsignedInt)
      ..writeByte(138)
      ..write(obj.fixedUri)
      ..writeByte(139)
      ..write(obj.elementFixedUri)
      ..writeByte(140)
      ..write(obj.fixedUrl)
      ..writeByte(141)
      ..write(obj.elementFixedUrl)
      ..writeByte(142)
      ..write(obj.fixedUuid)
      ..writeByte(143)
      ..write(obj.elementFixedUuid)
      ..writeByte(144)
      ..write(obj.fixedAddress)
      ..writeByte(145)
      ..write(obj.fixedAge)
      ..writeByte(146)
      ..write(obj.fixedAnnotation)
      ..writeByte(147)
      ..write(obj.fixedAttachment)
      ..writeByte(148)
      ..write(obj.fixedCodeableConcept)
      ..writeByte(149)
      ..write(obj.fixedCoding)
      ..writeByte(150)
      ..write(obj.fixedContactPoint)
      ..writeByte(151)
      ..write(obj.fixedCount)
      ..writeByte(152)
      ..write(obj.fixedDistance)
      ..writeByte(153)
      ..write(obj.fixedDuration)
      ..writeByte(154)
      ..write(obj.fixedHumanName)
      ..writeByte(155)
      ..write(obj.fixedIdentifier)
      ..writeByte(156)
      ..write(obj.fixedMoney)
      ..writeByte(157)
      ..write(obj.fixedPeriod)
      ..writeByte(158)
      ..write(obj.fixedQuantity)
      ..writeByte(159)
      ..write(obj.fixedRange)
      ..writeByte(160)
      ..write(obj.fixedRatio)
      ..writeByte(161)
      ..write(obj.fixedReference)
      ..writeByte(162)
      ..write(obj.fixedSampledData)
      ..writeByte(163)
      ..write(obj.fixedSignature)
      ..writeByte(164)
      ..write(obj.fixedTiming)
      ..writeByte(165)
      ..write(obj.fixedContactDetail)
      ..writeByte(166)
      ..write(obj.fixedContributor)
      ..writeByte(167)
      ..write(obj.fixedDataRequirement)
      ..writeByte(168)
      ..write(obj.fixedExpression)
      ..writeByte(169)
      ..write(obj.fixedParameterDefinition)
      ..writeByte(170)
      ..write(obj.fixedRelatedArtifact)
      ..writeByte(171)
      ..write(obj.fixedTriggerDefinition)
      ..writeByte(172)
      ..write(obj.fixedUsageContext)
      ..writeByte(173)
      ..write(obj.fixedDosage)
      ..writeByte(174)
      ..write(obj.fixedMeta)
      ..writeByte(175)
      ..write(obj.patternBase64Binary)
      ..writeByte(176)
      ..write(obj.elementPatternBase64Binary)
      ..writeByte(177)
      ..write(obj.patternBoolean)
      ..writeByte(178)
      ..write(obj.elementPatternBoolean)
      ..writeByte(179)
      ..write(obj.patternCanonical)
      ..writeByte(180)
      ..write(obj.elementPatternCanonical)
      ..writeByte(181)
      ..write(obj.patternCode)
      ..writeByte(182)
      ..write(obj.elementPatternCode)
      ..writeByte(183)
      ..write(obj.patternDate)
      ..writeByte(184)
      ..write(obj.elementPatternDate)
      ..writeByte(185)
      ..write(obj.patternDateTime)
      ..writeByte(186)
      ..write(obj.elementPatternDateTime)
      ..writeByte(188)
      ..write(obj.elementPatternDecimal)
      ..writeByte(189)
      ..write(obj.patternId)
      ..writeByte(190)
      ..write(obj.elementPatternId)
      ..writeByte(191)
      ..write(obj.patternInstant)
      ..writeByte(192)
      ..write(obj.elementPatternInstant)
      ..writeByte(194)
      ..write(obj.elementPatternInteger)
      ..writeByte(195)
      ..write(obj.patternMarkdown)
      ..writeByte(196)
      ..write(obj.elementPatternMarkdown)
      ..writeByte(197)
      ..write(obj.patternOid)
      ..writeByte(198)
      ..write(obj.elementPatternOid)
      ..writeByte(200)
      ..write(obj.elementPatternPositiveInt)
      ..writeByte(201)
      ..write(obj.patternString)
      ..writeByte(202)
      ..write(obj.elementPatternString)
      ..writeByte(203)
      ..write(obj.patternTime)
      ..writeByte(204)
      ..write(obj.elementPatternTime)
      ..writeByte(206)
      ..write(obj.elementPatternUnsignedInt)
      ..writeByte(207)
      ..write(obj.patternUri)
      ..writeByte(208)
      ..write(obj.elementPatternUri)
      ..writeByte(209)
      ..write(obj.patternUrl)
      ..writeByte(210)
      ..write(obj.elementPatternUrl)
      ..writeByte(211)
      ..write(obj.patternUuid)
      ..writeByte(212)
      ..write(obj.elementPatternUuid)
      ..writeByte(213)
      ..write(obj.patternAddress)
      ..writeByte(214)
      ..write(obj.patternAge)
      ..writeByte(215)
      ..write(obj.patternAnnotation)
      ..writeByte(216)
      ..write(obj.patternAttachment)
      ..writeByte(217)
      ..write(obj.patternCodeableConcept)
      ..writeByte(218)
      ..write(obj.patternCoding)
      ..writeByte(219)
      ..write(obj.patternContactPoint)
      ..writeByte(220)
      ..write(obj.patternCount)
      ..writeByte(221)
      ..write(obj.patternDistance)
      ..writeByte(222)
      ..write(obj.patternDuration)
      ..writeByte(223)
      ..write(obj.patternHumanName)
      ..writeByte(224)
      ..write(obj.patternIdentifier)
      ..writeByte(225)
      ..write(obj.patternMoney)
      ..writeByte(226)
      ..write(obj.patternPeriod)
      ..writeByte(227)
      ..write(obj.patternQuantity)
      ..writeByte(228)
      ..write(obj.patternRange)
      ..writeByte(229)
      ..write(obj.patternRatio)
      ..writeByte(230)
      ..write(obj.patternReference)
      ..writeByte(231)
      ..write(obj.patternSampledData)
      ..writeByte(232)
      ..write(obj.patternSignature)
      ..writeByte(233)
      ..write(obj.patternTiming)
      ..writeByte(234)
      ..write(obj.patternContactDetail)
      ..writeByte(235)
      ..write(obj.patternContributor)
      ..writeByte(236)
      ..write(obj.patternDataRequirement)
      ..writeByte(237)
      ..write(obj.patternExpression)
      ..writeByte(238)
      ..write(obj.patternParameterDefinition)
      ..writeByte(239)
      ..write(obj.patternRelatedArtifact)
      ..writeByte(240)
      ..write(obj.patternTriggerDefinition)
      ..writeByte(241)
      ..write(obj.patternUsageContext)
      ..writeByte(242)
      ..write(obj.patternDosage)
      ..writeByte(243)
      ..write(obj.patternMeta)
      ..writeByte(244)
      ..write(obj.example)
      ..writeByte(245)
      ..write(obj.minValueDate)
      ..writeByte(246)
      ..write(obj.elementMinValueDate)
      ..writeByte(247)
      ..write(obj.minValueDateTime)
      ..writeByte(248)
      ..write(obj.elementMinValueDateTime)
      ..writeByte(249)
      ..write(obj.minValueInstant)
      ..writeByte(250)
      ..write(obj.elementMinValueInstant)
      ..writeByte(251)
      ..write(obj.minValueTime)
      ..writeByte(252)
      ..write(obj.elementMinValueTime)
      ..writeByte(254)
      ..write(obj.elementMinValueDecimal)
      ..writeByte(256)
      ..write(obj.elementMinValueInteger)
      ..writeByte(258)
      ..write(obj.elementMinValuePositiveInt)
      ..writeByte(260)
      ..write(obj.elementMinValueUnsignedInt)
      ..writeByte(261)
      ..write(obj.minValueQuantity)
      ..writeByte(262)
      ..write(obj.maxValueDate)
      ..writeByte(263)
      ..write(obj.elementMaxValueDate)
      ..writeByte(264)
      ..write(obj.maxValueDateTime)
      ..writeByte(265)
      ..write(obj.elementMaxValueDateTime)
      ..writeByte(266)
      ..write(obj.maxValueInstant)
      ..writeByte(267)
      ..write(obj.elementMaxValueInstant)
      ..writeByte(268)
      ..write(obj.maxValueTime)
      ..writeByte(269)
      ..write(obj.elementMaxValueTime)
      ..writeByte(271)
      ..write(obj.elementMaxValueDecimal)
      ..writeByte(273)
      ..write(obj.elementMaxValueInteger)
      ..writeByte(275)
      ..write(obj.elementMaxValuePositiveInt)
      ..writeByte(277)
      ..write(obj.elementMaxValueUnsignedInt)
      ..writeByte(278)
      ..write(obj.maxValueQuantity)
      ..writeByte(279)
      ..write(obj.maxLength)
      ..writeByte(280)
      ..write(obj.elementMaxLength)
      ..writeByte(281)
      ..write(obj.condition)
      ..writeByte(282)
      ..write(obj.elementCondition)
      ..writeByte(283)
      ..write(obj.constraint)
      ..writeByte(284)
      ..write(obj.mustSupport)
      ..writeByte(285)
      ..write(obj.elementMustSupport)
      ..writeByte(286)
      ..write(obj.isModifier)
      ..writeByte(287)
      ..write(obj.elementIsModifier)
      ..writeByte(288)
      ..write(obj.isModifierReason)
      ..writeByte(289)
      ..write(obj.elementIsModifierReason)
      ..writeByte(290)
      ..write(obj.isSummary)
      ..writeByte(291)
      ..write(obj.elementIsSummary)
      ..writeByte(292)
      ..write(obj.binding)
      ..writeByte(293)
      ..write(obj.mapping);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElementDefinition _$ElementDefinitionFromJson(Map<String, dynamic> json) {
  return ElementDefinition(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    representation:
        (json['representation'] as List)?.map((e) => e as String)?.toList(),
    elementRepresentation: (json['elementRepresentation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sliceName: json['sliceName'] as String,
    elementSliceName: json['elementSliceName'] == null
        ? null
        : Element.fromJson(json['elementSliceName'] as Map<String, dynamic>),
    sliceIsConstraining: json['sliceIsConstraining'] as bool,
    elementSliceIsConstraining: json['elementSliceIsConstraining'] == null
        ? null
        : Element.fromJson(
            json['elementSliceIsConstraining'] as Map<String, dynamic>),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    code: (json['code'] as List)
        ?.map((e) =>
            e == null ? null : Coding.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    slicing: json['slicing'] == null
        ? null
        : ElementDefinition_Slicing.fromJson(
            json['slicing'] as Map<String, dynamic>),
    short: json['short'] as String,
    elementShort: json['elementShort'] == null
        ? null
        : Element.fromJson(json['elementShort'] as Map<String, dynamic>),
    definition: json['definition'] as String,
    elementDefinition: json['elementDefinition'] == null
        ? null
        : Element.fromJson(json['elementDefinition'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    elementRequirements: json['elementRequirements'] == null
        ? null
        : Element.fromJson(json['elementRequirements'] as Map<String, dynamic>),
    alias: (json['alias'] as List)?.map((e) => e as String)?.toList(),
    elementAlias: (json['elementAlias'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
    base: json['base'] == null
        ? null
        : ElementDefinition_Base.fromJson(json['base'] as Map<String, dynamic>),
    contentReference: json['contentReference'] as String,
    elementContentReference: json['elementContentReference'] == null
        ? null
        : Element.fromJson(
            json['elementContentReference'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Type.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultValueBase64Binary: json['defaultValueBase64Binary'] as String,
    elementDefaultValueBase64Binary: json['elementDefaultValueBase64Binary'] ==
            null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBase64Binary'] as Map<String, dynamic>),
    defaultValueBoolean: json['defaultValueBoolean'] as bool,
    elementDefaultValueBoolean: json['elementDefaultValueBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueBoolean'] as Map<String, dynamic>),
    defaultValueCanonical: json['defaultValueCanonical'] as String,
    elementDefaultValueCanonical: json['elementDefaultValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCanonical'] as Map<String, dynamic>),
    defaultValueCode: json['defaultValueCode'] as String,
    elementDefaultValueCode: json['elementDefaultValueCode'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueCode'] as Map<String, dynamic>),
    defaultValueDate: json['defaultValueDate'] as String,
    elementDefaultValueDate: json['elementDefaultValueDate'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDate'] as Map<String, dynamic>),
    defaultValueDateTime: json['defaultValueDateTime'] as String,
    elementDefaultValueDateTime: json['elementDefaultValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDateTime'] as Map<String, dynamic>),
    defaultValueDecimal: (json['defaultValueDecimal'] as num)?.toDouble(),
    elementDefaultValueDecimal: json['elementDefaultValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueDecimal'] as Map<String, dynamic>),
    defaultValueId: json['defaultValueId'] as String,
    elementDefaultValueId: json['elementDefaultValueId'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueId'] as Map<String, dynamic>),
    defaultValueInstant: json['defaultValueInstant'] as String,
    elementDefaultValueInstant: json['elementDefaultValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInstant'] as Map<String, dynamic>),
    defaultValueInteger: json['defaultValueInteger'] as int,
    elementDefaultValueInteger: json['elementDefaultValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueInteger'] as Map<String, dynamic>),
    defaultValueMarkdown: json['defaultValueMarkdown'] as String,
    elementDefaultValueMarkdown: json['elementDefaultValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueMarkdown'] as Map<String, dynamic>),
    defaultValueOid: json['defaultValueOid'] as String,
    elementDefaultValueOid: json['elementDefaultValueOid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueOid'] as Map<String, dynamic>),
    defaultValuePositiveInt: json['defaultValuePositiveInt'] as int,
    elementDefaultValuePositiveInt:
        json['elementDefaultValuePositiveInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValuePositiveInt'] as Map<String, dynamic>),
    defaultValueString: json['defaultValueString'] as String,
    elementDefaultValueString: json['elementDefaultValueString'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueString'] as Map<String, dynamic>),
    defaultValueTime: json['defaultValueTime'] as String,
    elementDefaultValueTime: json['elementDefaultValueTime'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueTime'] as Map<String, dynamic>),
    defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int,
    elementDefaultValueUnsignedInt:
        json['elementDefaultValueUnsignedInt'] == null
            ? null
            : Element.fromJson(
                json['elementDefaultValueUnsignedInt'] as Map<String, dynamic>),
    defaultValueUri: json['defaultValueUri'] as String,
    elementDefaultValueUri: json['elementDefaultValueUri'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUri'] as Map<String, dynamic>),
    defaultValueUrl: json['defaultValueUrl'] as String,
    elementDefaultValueUrl: json['elementDefaultValueUrl'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUrl'] as Map<String, dynamic>),
    defaultValueUuid: json['defaultValueUuid'] as String,
    elementDefaultValueUuid: json['elementDefaultValueUuid'] == null
        ? null
        : Element.fromJson(
            json['elementDefaultValueUuid'] as Map<String, dynamic>),
    defaultValueAddress: json['defaultValueAddress'] == null
        ? null
        : Address.fromJson(json['defaultValueAddress'] as Map<String, dynamic>),
    defaultValueAge: json['defaultValueAge'] == null
        ? null
        : Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>),
    defaultValueAnnotation: json['defaultValueAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['defaultValueAnnotation'] as Map<String, dynamic>),
    defaultValueAttachment: json['defaultValueAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['defaultValueAttachment'] as Map<String, dynamic>),
    defaultValueCodeableConcept: json['defaultValueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['defaultValueCodeableConcept'] as Map<String, dynamic>),
    defaultValueCoding: json['defaultValueCoding'] == null
        ? null
        : Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>),
    defaultValueContactPoint: json['defaultValueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['defaultValueContactPoint'] as Map<String, dynamic>),
    defaultValueCount: json['defaultValueCount'] == null
        ? null
        : Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>),
    defaultValueDistance: json['defaultValueDistance'] == null
        ? null
        : Distance.fromJson(
            json['defaultValueDistance'] as Map<String, dynamic>),
    defaultValueDuration: json['defaultValueDuration'] == null
        ? null
        : Duration.fromJson(
            json['defaultValueDuration'] as Map<String, dynamic>),
    defaultValueHumanName: json['defaultValueHumanName'] == null
        ? null
        : HumanName.fromJson(
            json['defaultValueHumanName'] as Map<String, dynamic>),
    defaultValueIdentifier: json['defaultValueIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['defaultValueIdentifier'] as Map<String, dynamic>),
    defaultValueMoney: json['defaultValueMoney'] == null
        ? null
        : Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>),
    defaultValuePeriod: json['defaultValuePeriod'] == null
        ? null
        : Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>),
    defaultValueQuantity: json['defaultValueQuantity'] == null
        ? null
        : Quantity.fromJson(
            json['defaultValueQuantity'] as Map<String, dynamic>),
    defaultValueRange: json['defaultValueRange'] == null
        ? null
        : Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>),
    defaultValueRatio: json['defaultValueRatio'] == null
        ? null
        : Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>),
    defaultValueReference: json['defaultValueReference'] == null
        ? null
        : Reference.fromJson(
            json['defaultValueReference'] as Map<String, dynamic>),
    defaultValueSampledData: json['defaultValueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['defaultValueSampledData'] as Map<String, dynamic>),
    defaultValueSignature: json['defaultValueSignature'] == null
        ? null
        : Signature.fromJson(
            json['defaultValueSignature'] as Map<String, dynamic>),
    defaultValueTiming: json['defaultValueTiming'] == null
        ? null
        : Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>),
    defaultValueContactDetail: json['defaultValueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['defaultValueContactDetail'] as Map<String, dynamic>),
    defaultValueContributor: json['defaultValueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['defaultValueContributor'] as Map<String, dynamic>),
    defaultValueDataRequirement: json['defaultValueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['defaultValueDataRequirement'] as Map<String, dynamic>),
    defaultValueExpression: json['defaultValueExpression'] == null
        ? null
        : Expression.fromJson(
            json['defaultValueExpression'] as Map<String, dynamic>),
    defaultValueParameterDefinition: json['defaultValueParameterDefinition'] ==
            null
        ? null
        : ParameterDefinition.fromJson(
            json['defaultValueParameterDefinition'] as Map<String, dynamic>),
    defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['defaultValueRelatedArtifact'] as Map<String, dynamic>),
    defaultValueTriggerDefinition: json['defaultValueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['defaultValueTriggerDefinition'] as Map<String, dynamic>),
    defaultValueUsageContext: json['defaultValueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['defaultValueUsageContext'] as Map<String, dynamic>),
    defaultValueDosage: json['defaultValueDosage'] == null
        ? null
        : Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>),
    defaultValueMeta: json['defaultValueMeta'] == null
        ? null
        : Meta.fromJson(json['defaultValueMeta'] as Map<String, dynamic>),
    meaningWhenMissing: json['meaningWhenMissing'] as String,
    elementMeaningWhenMissing: json['elementMeaningWhenMissing'] == null
        ? null
        : Element.fromJson(
            json['elementMeaningWhenMissing'] as Map<String, dynamic>),
    orderMeaning: json['orderMeaning'] as String,
    elementOrderMeaning: json['elementOrderMeaning'] == null
        ? null
        : Element.fromJson(json['elementOrderMeaning'] as Map<String, dynamic>),
    fixedBase64Binary: json['fixedBase64Binary'] as String,
    elementFixedBase64Binary: json['elementFixedBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementFixedBase64Binary'] as Map<String, dynamic>),
    fixedBoolean: json['fixedBoolean'] as bool,
    elementFixedBoolean: json['elementFixedBoolean'] == null
        ? null
        : Element.fromJson(json['elementFixedBoolean'] as Map<String, dynamic>),
    fixedCanonical: json['fixedCanonical'] as String,
    elementFixedCanonical: json['elementFixedCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementFixedCanonical'] as Map<String, dynamic>),
    fixedCode: json['fixedCode'] as String,
    elementFixedCode: json['elementFixedCode'] == null
        ? null
        : Element.fromJson(json['elementFixedCode'] as Map<String, dynamic>),
    fixedDate: json['fixedDate'] as String,
    elementFixedDate: json['elementFixedDate'] == null
        ? null
        : Element.fromJson(json['elementFixedDate'] as Map<String, dynamic>),
    fixedDateTime: json['fixedDateTime'] as String,
    elementFixedDateTime: json['elementFixedDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementFixedDateTime'] as Map<String, dynamic>),
    fixedDecimal: (json['fixedDecimal'] as num)?.toDouble(),
    elementFixedDecimal: json['elementFixedDecimal'] == null
        ? null
        : Element.fromJson(json['elementFixedDecimal'] as Map<String, dynamic>),
    fixedId: json['fixedId'] as String,
    elementFixedId: json['elementFixedId'] == null
        ? null
        : Element.fromJson(json['elementFixedId'] as Map<String, dynamic>),
    fixedInstant: json['fixedInstant'] as String,
    elementFixedInstant: json['elementFixedInstant'] == null
        ? null
        : Element.fromJson(json['elementFixedInstant'] as Map<String, dynamic>),
    fixedInteger: json['fixedInteger'] as int,
    elementFixedInteger: json['elementFixedInteger'] == null
        ? null
        : Element.fromJson(json['elementFixedInteger'] as Map<String, dynamic>),
    fixedMarkdown: json['fixedMarkdown'] as String,
    elementFixedMarkdown: json['elementFixedMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementFixedMarkdown'] as Map<String, dynamic>),
    fixedOid: json['fixedOid'] as String,
    elementFixedOid: json['elementFixedOid'] == null
        ? null
        : Element.fromJson(json['elementFixedOid'] as Map<String, dynamic>),
    fixedPositiveInt: json['fixedPositiveInt'] as int,
    elementFixedPositiveInt: json['elementFixedPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementFixedPositiveInt'] as Map<String, dynamic>),
    fixedString: json['fixedString'] as String,
    elementFixedString: json['elementFixedString'] == null
        ? null
        : Element.fromJson(json['elementFixedString'] as Map<String, dynamic>),
    fixedTime: json['fixedTime'] as String,
    elementFixedTime: json['elementFixedTime'] == null
        ? null
        : Element.fromJson(json['elementFixedTime'] as Map<String, dynamic>),
    fixedUnsignedInt: json['fixedUnsignedInt'] as int,
    elementFixedUnsignedInt: json['elementFixedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementFixedUnsignedInt'] as Map<String, dynamic>),
    fixedUri: json['fixedUri'] as String,
    elementFixedUri: json['elementFixedUri'] == null
        ? null
        : Element.fromJson(json['elementFixedUri'] as Map<String, dynamic>),
    fixedUrl: json['fixedUrl'] as String,
    elementFixedUrl: json['elementFixedUrl'] == null
        ? null
        : Element.fromJson(json['elementFixedUrl'] as Map<String, dynamic>),
    fixedUuid: json['fixedUuid'] as String,
    elementFixedUuid: json['elementFixedUuid'] == null
        ? null
        : Element.fromJson(json['elementFixedUuid'] as Map<String, dynamic>),
    fixedAddress: json['fixedAddress'] == null
        ? null
        : Address.fromJson(json['fixedAddress'] as Map<String, dynamic>),
    fixedAge: json['fixedAge'] == null
        ? null
        : Age.fromJson(json['fixedAge'] as Map<String, dynamic>),
    fixedAnnotation: json['fixedAnnotation'] == null
        ? null
        : Annotation.fromJson(json['fixedAnnotation'] as Map<String, dynamic>),
    fixedAttachment: json['fixedAttachment'] == null
        ? null
        : Attachment.fromJson(json['fixedAttachment'] as Map<String, dynamic>),
    fixedCodeableConcept: json['fixedCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fixedCodeableConcept'] as Map<String, dynamic>),
    fixedCoding: json['fixedCoding'] == null
        ? null
        : Coding.fromJson(json['fixedCoding'] as Map<String, dynamic>),
    fixedContactPoint: json['fixedContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['fixedContactPoint'] as Map<String, dynamic>),
    fixedCount: json['fixedCount'] == null
        ? null
        : Count.fromJson(json['fixedCount'] as Map<String, dynamic>),
    fixedDistance: json['fixedDistance'] == null
        ? null
        : Distance.fromJson(json['fixedDistance'] as Map<String, dynamic>),
    fixedDuration: json['fixedDuration'] == null
        ? null
        : Duration.fromJson(json['fixedDuration'] as Map<String, dynamic>),
    fixedHumanName: json['fixedHumanName'] == null
        ? null
        : HumanName.fromJson(json['fixedHumanName'] as Map<String, dynamic>),
    fixedIdentifier: json['fixedIdentifier'] == null
        ? null
        : Identifier.fromJson(json['fixedIdentifier'] as Map<String, dynamic>),
    fixedMoney: json['fixedMoney'] == null
        ? null
        : Money.fromJson(json['fixedMoney'] as Map<String, dynamic>),
    fixedPeriod: json['fixedPeriod'] == null
        ? null
        : Period.fromJson(json['fixedPeriod'] as Map<String, dynamic>),
    fixedQuantity: json['fixedQuantity'] == null
        ? null
        : Quantity.fromJson(json['fixedQuantity'] as Map<String, dynamic>),
    fixedRange: json['fixedRange'] == null
        ? null
        : Range.fromJson(json['fixedRange'] as Map<String, dynamic>),
    fixedRatio: json['fixedRatio'] == null
        ? null
        : Ratio.fromJson(json['fixedRatio'] as Map<String, dynamic>),
    fixedReference: json['fixedReference'] == null
        ? null
        : Reference.fromJson(json['fixedReference'] as Map<String, dynamic>),
    fixedSampledData: json['fixedSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['fixedSampledData'] as Map<String, dynamic>),
    fixedSignature: json['fixedSignature'] == null
        ? null
        : Signature.fromJson(json['fixedSignature'] as Map<String, dynamic>),
    fixedTiming: json['fixedTiming'] == null
        ? null
        : Timing.fromJson(json['fixedTiming'] as Map<String, dynamic>),
    fixedContactDetail: json['fixedContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['fixedContactDetail'] as Map<String, dynamic>),
    fixedContributor: json['fixedContributor'] == null
        ? null
        : Contributor.fromJson(
            json['fixedContributor'] as Map<String, dynamic>),
    fixedDataRequirement: json['fixedDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['fixedDataRequirement'] as Map<String, dynamic>),
    fixedExpression: json['fixedExpression'] == null
        ? null
        : Expression.fromJson(json['fixedExpression'] as Map<String, dynamic>),
    fixedParameterDefinition: json['fixedParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['fixedParameterDefinition'] as Map<String, dynamic>),
    fixedRelatedArtifact: json['fixedRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['fixedRelatedArtifact'] as Map<String, dynamic>),
    fixedTriggerDefinition: json['fixedTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['fixedTriggerDefinition'] as Map<String, dynamic>),
    fixedUsageContext: json['fixedUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['fixedUsageContext'] as Map<String, dynamic>),
    fixedDosage: json['fixedDosage'] == null
        ? null
        : Dosage.fromJson(json['fixedDosage'] as Map<String, dynamic>),
    fixedMeta: json['fixedMeta'] == null
        ? null
        : Meta.fromJson(json['fixedMeta'] as Map<String, dynamic>),
    patternBase64Binary: json['patternBase64Binary'] as String,
    elementPatternBase64Binary: json['elementPatternBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementPatternBase64Binary'] as Map<String, dynamic>),
    patternBoolean: json['patternBoolean'] as bool,
    elementPatternBoolean: json['elementPatternBoolean'] == null
        ? null
        : Element.fromJson(
            json['elementPatternBoolean'] as Map<String, dynamic>),
    patternCanonical: json['patternCanonical'] as String,
    elementPatternCanonical: json['elementPatternCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementPatternCanonical'] as Map<String, dynamic>),
    patternCode: json['patternCode'] as String,
    elementPatternCode: json['elementPatternCode'] == null
        ? null
        : Element.fromJson(json['elementPatternCode'] as Map<String, dynamic>),
    patternDate: json['patternDate'] as String,
    elementPatternDate: json['elementPatternDate'] == null
        ? null
        : Element.fromJson(json['elementPatternDate'] as Map<String, dynamic>),
    patternDateTime: json['patternDateTime'] as String,
    elementPatternDateTime: json['elementPatternDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementPatternDateTime'] as Map<String, dynamic>),
    patternDecimal: (json['patternDecimal'] as num)?.toDouble(),
    elementPatternDecimal: json['elementPatternDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementPatternDecimal'] as Map<String, dynamic>),
    patternId: json['patternId'] as String,
    elementPatternId: json['elementPatternId'] == null
        ? null
        : Element.fromJson(json['elementPatternId'] as Map<String, dynamic>),
    patternInstant: json['patternInstant'] as String,
    elementPatternInstant: json['elementPatternInstant'] == null
        ? null
        : Element.fromJson(
            json['elementPatternInstant'] as Map<String, dynamic>),
    patternInteger: json['patternInteger'] as int,
    elementPatternInteger: json['elementPatternInteger'] == null
        ? null
        : Element.fromJson(
            json['elementPatternInteger'] as Map<String, dynamic>),
    patternMarkdown: json['patternMarkdown'] as String,
    elementPatternMarkdown: json['elementPatternMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementPatternMarkdown'] as Map<String, dynamic>),
    patternOid: json['patternOid'] as String,
    elementPatternOid: json['elementPatternOid'] == null
        ? null
        : Element.fromJson(json['elementPatternOid'] as Map<String, dynamic>),
    patternPositiveInt: json['patternPositiveInt'] as int,
    elementPatternPositiveInt: json['elementPatternPositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementPatternPositiveInt'] as Map<String, dynamic>),
    patternString: json['patternString'] as String,
    elementPatternString: json['elementPatternString'] == null
        ? null
        : Element.fromJson(
            json['elementPatternString'] as Map<String, dynamic>),
    patternTime: json['patternTime'] as String,
    elementPatternTime: json['elementPatternTime'] == null
        ? null
        : Element.fromJson(json['elementPatternTime'] as Map<String, dynamic>),
    patternUnsignedInt: json['patternUnsignedInt'] as int,
    elementPatternUnsignedInt: json['elementPatternUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementPatternUnsignedInt'] as Map<String, dynamic>),
    patternUri: json['patternUri'] as String,
    elementPatternUri: json['elementPatternUri'] == null
        ? null
        : Element.fromJson(json['elementPatternUri'] as Map<String, dynamic>),
    patternUrl: json['patternUrl'] as String,
    elementPatternUrl: json['elementPatternUrl'] == null
        ? null
        : Element.fromJson(json['elementPatternUrl'] as Map<String, dynamic>),
    patternUuid: json['patternUuid'] as String,
    elementPatternUuid: json['elementPatternUuid'] == null
        ? null
        : Element.fromJson(json['elementPatternUuid'] as Map<String, dynamic>),
    patternAddress: json['patternAddress'] == null
        ? null
        : Address.fromJson(json['patternAddress'] as Map<String, dynamic>),
    patternAge: json['patternAge'] == null
        ? null
        : Age.fromJson(json['patternAge'] as Map<String, dynamic>),
    patternAnnotation: json['patternAnnotation'] == null
        ? null
        : Annotation.fromJson(
            json['patternAnnotation'] as Map<String, dynamic>),
    patternAttachment: json['patternAttachment'] == null
        ? null
        : Attachment.fromJson(
            json['patternAttachment'] as Map<String, dynamic>),
    patternCodeableConcept: json['patternCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['patternCodeableConcept'] as Map<String, dynamic>),
    patternCoding: json['patternCoding'] == null
        ? null
        : Coding.fromJson(json['patternCoding'] as Map<String, dynamic>),
    patternContactPoint: json['patternContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['patternContactPoint'] as Map<String, dynamic>),
    patternCount: json['patternCount'] == null
        ? null
        : Count.fromJson(json['patternCount'] as Map<String, dynamic>),
    patternDistance: json['patternDistance'] == null
        ? null
        : Distance.fromJson(json['patternDistance'] as Map<String, dynamic>),
    patternDuration: json['patternDuration'] == null
        ? null
        : Duration.fromJson(json['patternDuration'] as Map<String, dynamic>),
    patternHumanName: json['patternHumanName'] == null
        ? null
        : HumanName.fromJson(json['patternHumanName'] as Map<String, dynamic>),
    patternIdentifier: json['patternIdentifier'] == null
        ? null
        : Identifier.fromJson(
            json['patternIdentifier'] as Map<String, dynamic>),
    patternMoney: json['patternMoney'] == null
        ? null
        : Money.fromJson(json['patternMoney'] as Map<String, dynamic>),
    patternPeriod: json['patternPeriod'] == null
        ? null
        : Period.fromJson(json['patternPeriod'] as Map<String, dynamic>),
    patternQuantity: json['patternQuantity'] == null
        ? null
        : Quantity.fromJson(json['patternQuantity'] as Map<String, dynamic>),
    patternRange: json['patternRange'] == null
        ? null
        : Range.fromJson(json['patternRange'] as Map<String, dynamic>),
    patternRatio: json['patternRatio'] == null
        ? null
        : Ratio.fromJson(json['patternRatio'] as Map<String, dynamic>),
    patternReference: json['patternReference'] == null
        ? null
        : Reference.fromJson(json['patternReference'] as Map<String, dynamic>),
    patternSampledData: json['patternSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['patternSampledData'] as Map<String, dynamic>),
    patternSignature: json['patternSignature'] == null
        ? null
        : Signature.fromJson(json['patternSignature'] as Map<String, dynamic>),
    patternTiming: json['patternTiming'] == null
        ? null
        : Timing.fromJson(json['patternTiming'] as Map<String, dynamic>),
    patternContactDetail: json['patternContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['patternContactDetail'] as Map<String, dynamic>),
    patternContributor: json['patternContributor'] == null
        ? null
        : Contributor.fromJson(
            json['patternContributor'] as Map<String, dynamic>),
    patternDataRequirement: json['patternDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['patternDataRequirement'] as Map<String, dynamic>),
    patternExpression: json['patternExpression'] == null
        ? null
        : Expression.fromJson(
            json['patternExpression'] as Map<String, dynamic>),
    patternParameterDefinition: json['patternParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['patternParameterDefinition'] as Map<String, dynamic>),
    patternRelatedArtifact: json['patternRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['patternRelatedArtifact'] as Map<String, dynamic>),
    patternTriggerDefinition: json['patternTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['patternTriggerDefinition'] as Map<String, dynamic>),
    patternUsageContext: json['patternUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['patternUsageContext'] as Map<String, dynamic>),
    patternDosage: json['patternDosage'] == null
        ? null
        : Dosage.fromJson(json['patternDosage'] as Map<String, dynamic>),
    patternMeta: json['patternMeta'] == null
        ? null
        : Meta.fromJson(json['patternMeta'] as Map<String, dynamic>),
    example: (json['example'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Example.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    minValueDate: json['minValueDate'] as String,
    elementMinValueDate: json['elementMinValueDate'] == null
        ? null
        : Element.fromJson(json['elementMinValueDate'] as Map<String, dynamic>),
    minValueDateTime: json['minValueDateTime'] as String,
    elementMinValueDateTime: json['elementMinValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueDateTime'] as Map<String, dynamic>),
    minValueInstant: json['minValueInstant'] as String,
    elementMinValueInstant: json['elementMinValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueInstant'] as Map<String, dynamic>),
    minValueTime: json['minValueTime'] as String,
    elementMinValueTime: json['elementMinValueTime'] == null
        ? null
        : Element.fromJson(json['elementMinValueTime'] as Map<String, dynamic>),
    minValueDecimal: (json['minValueDecimal'] as num)?.toDouble(),
    elementMinValueDecimal: json['elementMinValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueDecimal'] as Map<String, dynamic>),
    minValueInteger: json['minValueInteger'] as int,
    elementMinValueInteger: json['elementMinValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueInteger'] as Map<String, dynamic>),
    minValuePositiveInt: json['minValuePositiveInt'] as int,
    elementMinValuePositiveInt: json['elementMinValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementMinValuePositiveInt'] as Map<String, dynamic>),
    minValueUnsignedInt: json['minValueUnsignedInt'] as int,
    elementMinValueUnsignedInt: json['elementMinValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementMinValueUnsignedInt'] as Map<String, dynamic>),
    minValueQuantity: json['minValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['minValueQuantity'] as Map<String, dynamic>),
    maxValueDate: json['maxValueDate'] as String,
    elementMaxValueDate: json['elementMaxValueDate'] == null
        ? null
        : Element.fromJson(json['elementMaxValueDate'] as Map<String, dynamic>),
    maxValueDateTime: json['maxValueDateTime'] as String,
    elementMaxValueDateTime: json['elementMaxValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueDateTime'] as Map<String, dynamic>),
    maxValueInstant: json['maxValueInstant'] as String,
    elementMaxValueInstant: json['elementMaxValueInstant'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueInstant'] as Map<String, dynamic>),
    maxValueTime: json['maxValueTime'] as String,
    elementMaxValueTime: json['elementMaxValueTime'] == null
        ? null
        : Element.fromJson(json['elementMaxValueTime'] as Map<String, dynamic>),
    maxValueDecimal: (json['maxValueDecimal'] as num)?.toDouble(),
    elementMaxValueDecimal: json['elementMaxValueDecimal'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueDecimal'] as Map<String, dynamic>),
    maxValueInteger: json['maxValueInteger'] as int,
    elementMaxValueInteger: json['elementMaxValueInteger'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueInteger'] as Map<String, dynamic>),
    maxValuePositiveInt: json['maxValuePositiveInt'] as int,
    elementMaxValuePositiveInt: json['elementMaxValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValuePositiveInt'] as Map<String, dynamic>),
    maxValueUnsignedInt: json['maxValueUnsignedInt'] as int,
    elementMaxValueUnsignedInt: json['elementMaxValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementMaxValueUnsignedInt'] as Map<String, dynamic>),
    maxValueQuantity: json['maxValueQuantity'] == null
        ? null
        : Quantity.fromJson(json['maxValueQuantity'] as Map<String, dynamic>),
    maxLength: json['maxLength'] as int,
    elementMaxLength: json['elementMaxLength'] == null
        ? null
        : Element.fromJson(json['elementMaxLength'] as Map<String, dynamic>),
    condition: (json['condition'] as List)?.map((e) => e as String)?.toList(),
    elementCondition: (json['elementCondition'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    constraint: (json['constraint'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Constraint.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mustSupport: json['mustSupport'] as bool,
    elementMustSupport: json['elementMustSupport'] == null
        ? null
        : Element.fromJson(json['elementMustSupport'] as Map<String, dynamic>),
    isModifier: json['isModifier'] as bool,
    elementIsModifier: json['elementIsModifier'] == null
        ? null
        : Element.fromJson(json['elementIsModifier'] as Map<String, dynamic>),
    isModifierReason: json['isModifierReason'] as String,
    elementIsModifierReason: json['elementIsModifierReason'] == null
        ? null
        : Element.fromJson(
            json['elementIsModifierReason'] as Map<String, dynamic>),
    isSummary: json['isSummary'] as bool,
    elementIsSummary: json['elementIsSummary'] == null
        ? null
        : Element.fromJson(json['elementIsSummary'] as Map<String, dynamic>),
    binding: json['binding'] == null
        ? null
        : ElementDefinition_Binding.fromJson(
            json['binding'] as Map<String, dynamic>),
    mapping: (json['mapping'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Mapping.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ElementDefinitionToJson(ElementDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'representation': instance.representation,
      'elementRepresentation':
          instance.elementRepresentation?.map((e) => e?.toJson())?.toList(),
      'sliceName': instance.sliceName,
      'elementSliceName': instance.elementSliceName?.toJson(),
      'sliceIsConstraining': instance.sliceIsConstraining,
      'elementSliceIsConstraining':
          instance.elementSliceIsConstraining?.toJson(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'code': instance.code?.map((e) => e?.toJson())?.toList(),
      'slicing': instance.slicing?.toJson(),
      'short': instance.short,
      'elementShort': instance.elementShort?.toJson(),
      'definition': instance.definition,
      'elementDefinition': instance.elementDefinition?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
      'requirements': instance.requirements,
      'elementRequirements': instance.elementRequirements?.toJson(),
      'alias': instance.alias,
      'elementAlias': instance.elementAlias?.map((e) => e?.toJson())?.toList(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
      'base': instance.base?.toJson(),
      'contentReference': instance.contentReference,
      'elementContentReference': instance.elementContentReference?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'defaultValueBase64Binary': instance.defaultValueBase64Binary,
      'elementDefaultValueBase64Binary':
          instance.elementDefaultValueBase64Binary?.toJson(),
      'defaultValueBoolean': instance.defaultValueBoolean,
      'elementDefaultValueBoolean':
          instance.elementDefaultValueBoolean?.toJson(),
      'defaultValueCanonical': instance.defaultValueCanonical,
      'elementDefaultValueCanonical':
          instance.elementDefaultValueCanonical?.toJson(),
      'defaultValueCode': instance.defaultValueCode,
      'elementDefaultValueCode': instance.elementDefaultValueCode?.toJson(),
      'defaultValueDate': instance.defaultValueDate,
      'elementDefaultValueDate': instance.elementDefaultValueDate?.toJson(),
      'defaultValueDateTime': instance.defaultValueDateTime,
      'elementDefaultValueDateTime':
          instance.elementDefaultValueDateTime?.toJson(),
      'defaultValueDecimal': instance.defaultValueDecimal,
      'elementDefaultValueDecimal':
          instance.elementDefaultValueDecimal?.toJson(),
      'defaultValueId': instance.defaultValueId,
      'elementDefaultValueId': instance.elementDefaultValueId?.toJson(),
      'defaultValueInstant': instance.defaultValueInstant,
      'elementDefaultValueInstant':
          instance.elementDefaultValueInstant?.toJson(),
      'defaultValueInteger': instance.defaultValueInteger,
      'elementDefaultValueInteger':
          instance.elementDefaultValueInteger?.toJson(),
      'defaultValueMarkdown': instance.defaultValueMarkdown,
      'elementDefaultValueMarkdown':
          instance.elementDefaultValueMarkdown?.toJson(),
      'defaultValueOid': instance.defaultValueOid,
      'elementDefaultValueOid': instance.elementDefaultValueOid?.toJson(),
      'defaultValuePositiveInt': instance.defaultValuePositiveInt,
      'elementDefaultValuePositiveInt':
          instance.elementDefaultValuePositiveInt?.toJson(),
      'defaultValueString': instance.defaultValueString,
      'elementDefaultValueString': instance.elementDefaultValueString?.toJson(),
      'defaultValueTime': instance.defaultValueTime,
      'elementDefaultValueTime': instance.elementDefaultValueTime?.toJson(),
      'defaultValueUnsignedInt': instance.defaultValueUnsignedInt,
      'elementDefaultValueUnsignedInt':
          instance.elementDefaultValueUnsignedInt?.toJson(),
      'defaultValueUri': instance.defaultValueUri,
      'elementDefaultValueUri': instance.elementDefaultValueUri?.toJson(),
      'defaultValueUrl': instance.defaultValueUrl,
      'elementDefaultValueUrl': instance.elementDefaultValueUrl?.toJson(),
      'defaultValueUuid': instance.defaultValueUuid,
      'elementDefaultValueUuid': instance.elementDefaultValueUuid?.toJson(),
      'defaultValueAddress': instance.defaultValueAddress?.toJson(),
      'defaultValueAge': instance.defaultValueAge?.toJson(),
      'defaultValueAnnotation': instance.defaultValueAnnotation?.toJson(),
      'defaultValueAttachment': instance.defaultValueAttachment?.toJson(),
      'defaultValueCodeableConcept':
          instance.defaultValueCodeableConcept?.toJson(),
      'defaultValueCoding': instance.defaultValueCoding?.toJson(),
      'defaultValueContactPoint': instance.defaultValueContactPoint?.toJson(),
      'defaultValueCount': instance.defaultValueCount?.toJson(),
      'defaultValueDistance': instance.defaultValueDistance?.toJson(),
      'defaultValueDuration': instance.defaultValueDuration?.toJson(),
      'defaultValueHumanName': instance.defaultValueHumanName?.toJson(),
      'defaultValueIdentifier': instance.defaultValueIdentifier?.toJson(),
      'defaultValueMoney': instance.defaultValueMoney?.toJson(),
      'defaultValuePeriod': instance.defaultValuePeriod?.toJson(),
      'defaultValueQuantity': instance.defaultValueQuantity?.toJson(),
      'defaultValueRange': instance.defaultValueRange?.toJson(),
      'defaultValueRatio': instance.defaultValueRatio?.toJson(),
      'defaultValueReference': instance.defaultValueReference?.toJson(),
      'defaultValueSampledData': instance.defaultValueSampledData?.toJson(),
      'defaultValueSignature': instance.defaultValueSignature?.toJson(),
      'defaultValueTiming': instance.defaultValueTiming?.toJson(),
      'defaultValueContactDetail': instance.defaultValueContactDetail?.toJson(),
      'defaultValueContributor': instance.defaultValueContributor?.toJson(),
      'defaultValueDataRequirement':
          instance.defaultValueDataRequirement?.toJson(),
      'defaultValueExpression': instance.defaultValueExpression?.toJson(),
      'defaultValueParameterDefinition':
          instance.defaultValueParameterDefinition?.toJson(),
      'defaultValueRelatedArtifact':
          instance.defaultValueRelatedArtifact?.toJson(),
      'defaultValueTriggerDefinition':
          instance.defaultValueTriggerDefinition?.toJson(),
      'defaultValueUsageContext': instance.defaultValueUsageContext?.toJson(),
      'defaultValueDosage': instance.defaultValueDosage?.toJson(),
      'defaultValueMeta': instance.defaultValueMeta?.toJson(),
      'meaningWhenMissing': instance.meaningWhenMissing,
      'elementMeaningWhenMissing': instance.elementMeaningWhenMissing?.toJson(),
      'orderMeaning': instance.orderMeaning,
      'elementOrderMeaning': instance.elementOrderMeaning?.toJson(),
      'fixedBase64Binary': instance.fixedBase64Binary,
      'elementFixedBase64Binary': instance.elementFixedBase64Binary?.toJson(),
      'fixedBoolean': instance.fixedBoolean,
      'elementFixedBoolean': instance.elementFixedBoolean?.toJson(),
      'fixedCanonical': instance.fixedCanonical,
      'elementFixedCanonical': instance.elementFixedCanonical?.toJson(),
      'fixedCode': instance.fixedCode,
      'elementFixedCode': instance.elementFixedCode?.toJson(),
      'fixedDate': instance.fixedDate,
      'elementFixedDate': instance.elementFixedDate?.toJson(),
      'fixedDateTime': instance.fixedDateTime,
      'elementFixedDateTime': instance.elementFixedDateTime?.toJson(),
      'fixedDecimal': instance.fixedDecimal,
      'elementFixedDecimal': instance.elementFixedDecimal?.toJson(),
      'fixedId': instance.fixedId,
      'elementFixedId': instance.elementFixedId?.toJson(),
      'fixedInstant': instance.fixedInstant,
      'elementFixedInstant': instance.elementFixedInstant?.toJson(),
      'fixedInteger': instance.fixedInteger,
      'elementFixedInteger': instance.elementFixedInteger?.toJson(),
      'fixedMarkdown': instance.fixedMarkdown,
      'elementFixedMarkdown': instance.elementFixedMarkdown?.toJson(),
      'fixedOid': instance.fixedOid,
      'elementFixedOid': instance.elementFixedOid?.toJson(),
      'fixedPositiveInt': instance.fixedPositiveInt,
      'elementFixedPositiveInt': instance.elementFixedPositiveInt?.toJson(),
      'fixedString': instance.fixedString,
      'elementFixedString': instance.elementFixedString?.toJson(),
      'fixedTime': instance.fixedTime,
      'elementFixedTime': instance.elementFixedTime?.toJson(),
      'fixedUnsignedInt': instance.fixedUnsignedInt,
      'elementFixedUnsignedInt': instance.elementFixedUnsignedInt?.toJson(),
      'fixedUri': instance.fixedUri,
      'elementFixedUri': instance.elementFixedUri?.toJson(),
      'fixedUrl': instance.fixedUrl,
      'elementFixedUrl': instance.elementFixedUrl?.toJson(),
      'fixedUuid': instance.fixedUuid,
      'elementFixedUuid': instance.elementFixedUuid?.toJson(),
      'fixedAddress': instance.fixedAddress?.toJson(),
      'fixedAge': instance.fixedAge?.toJson(),
      'fixedAnnotation': instance.fixedAnnotation?.toJson(),
      'fixedAttachment': instance.fixedAttachment?.toJson(),
      'fixedCodeableConcept': instance.fixedCodeableConcept?.toJson(),
      'fixedCoding': instance.fixedCoding?.toJson(),
      'fixedContactPoint': instance.fixedContactPoint?.toJson(),
      'fixedCount': instance.fixedCount?.toJson(),
      'fixedDistance': instance.fixedDistance?.toJson(),
      'fixedDuration': instance.fixedDuration?.toJson(),
      'fixedHumanName': instance.fixedHumanName?.toJson(),
      'fixedIdentifier': instance.fixedIdentifier?.toJson(),
      'fixedMoney': instance.fixedMoney?.toJson(),
      'fixedPeriod': instance.fixedPeriod?.toJson(),
      'fixedQuantity': instance.fixedQuantity?.toJson(),
      'fixedRange': instance.fixedRange?.toJson(),
      'fixedRatio': instance.fixedRatio?.toJson(),
      'fixedReference': instance.fixedReference?.toJson(),
      'fixedSampledData': instance.fixedSampledData?.toJson(),
      'fixedSignature': instance.fixedSignature?.toJson(),
      'fixedTiming': instance.fixedTiming?.toJson(),
      'fixedContactDetail': instance.fixedContactDetail?.toJson(),
      'fixedContributor': instance.fixedContributor?.toJson(),
      'fixedDataRequirement': instance.fixedDataRequirement?.toJson(),
      'fixedExpression': instance.fixedExpression?.toJson(),
      'fixedParameterDefinition': instance.fixedParameterDefinition?.toJson(),
      'fixedRelatedArtifact': instance.fixedRelatedArtifact?.toJson(),
      'fixedTriggerDefinition': instance.fixedTriggerDefinition?.toJson(),
      'fixedUsageContext': instance.fixedUsageContext?.toJson(),
      'fixedDosage': instance.fixedDosage?.toJson(),
      'fixedMeta': instance.fixedMeta?.toJson(),
      'patternBase64Binary': instance.patternBase64Binary,
      'elementPatternBase64Binary':
          instance.elementPatternBase64Binary?.toJson(),
      'patternBoolean': instance.patternBoolean,
      'elementPatternBoolean': instance.elementPatternBoolean?.toJson(),
      'patternCanonical': instance.patternCanonical,
      'elementPatternCanonical': instance.elementPatternCanonical?.toJson(),
      'patternCode': instance.patternCode,
      'elementPatternCode': instance.elementPatternCode?.toJson(),
      'patternDate': instance.patternDate,
      'elementPatternDate': instance.elementPatternDate?.toJson(),
      'patternDateTime': instance.patternDateTime,
      'elementPatternDateTime': instance.elementPatternDateTime?.toJson(),
      'patternDecimal': instance.patternDecimal,
      'elementPatternDecimal': instance.elementPatternDecimal?.toJson(),
      'patternId': instance.patternId,
      'elementPatternId': instance.elementPatternId?.toJson(),
      'patternInstant': instance.patternInstant,
      'elementPatternInstant': instance.elementPatternInstant?.toJson(),
      'patternInteger': instance.patternInteger,
      'elementPatternInteger': instance.elementPatternInteger?.toJson(),
      'patternMarkdown': instance.patternMarkdown,
      'elementPatternMarkdown': instance.elementPatternMarkdown?.toJson(),
      'patternOid': instance.patternOid,
      'elementPatternOid': instance.elementPatternOid?.toJson(),
      'patternPositiveInt': instance.patternPositiveInt,
      'elementPatternPositiveInt': instance.elementPatternPositiveInt?.toJson(),
      'patternString': instance.patternString,
      'elementPatternString': instance.elementPatternString?.toJson(),
      'patternTime': instance.patternTime,
      'elementPatternTime': instance.elementPatternTime?.toJson(),
      'patternUnsignedInt': instance.patternUnsignedInt,
      'elementPatternUnsignedInt': instance.elementPatternUnsignedInt?.toJson(),
      'patternUri': instance.patternUri,
      'elementPatternUri': instance.elementPatternUri?.toJson(),
      'patternUrl': instance.patternUrl,
      'elementPatternUrl': instance.elementPatternUrl?.toJson(),
      'patternUuid': instance.patternUuid,
      'elementPatternUuid': instance.elementPatternUuid?.toJson(),
      'patternAddress': instance.patternAddress?.toJson(),
      'patternAge': instance.patternAge?.toJson(),
      'patternAnnotation': instance.patternAnnotation?.toJson(),
      'patternAttachment': instance.patternAttachment?.toJson(),
      'patternCodeableConcept': instance.patternCodeableConcept?.toJson(),
      'patternCoding': instance.patternCoding?.toJson(),
      'patternContactPoint': instance.patternContactPoint?.toJson(),
      'patternCount': instance.patternCount?.toJson(),
      'patternDistance': instance.patternDistance?.toJson(),
      'patternDuration': instance.patternDuration?.toJson(),
      'patternHumanName': instance.patternHumanName?.toJson(),
      'patternIdentifier': instance.patternIdentifier?.toJson(),
      'patternMoney': instance.patternMoney?.toJson(),
      'patternPeriod': instance.patternPeriod?.toJson(),
      'patternQuantity': instance.patternQuantity?.toJson(),
      'patternRange': instance.patternRange?.toJson(),
      'patternRatio': instance.patternRatio?.toJson(),
      'patternReference': instance.patternReference?.toJson(),
      'patternSampledData': instance.patternSampledData?.toJson(),
      'patternSignature': instance.patternSignature?.toJson(),
      'patternTiming': instance.patternTiming?.toJson(),
      'patternContactDetail': instance.patternContactDetail?.toJson(),
      'patternContributor': instance.patternContributor?.toJson(),
      'patternDataRequirement': instance.patternDataRequirement?.toJson(),
      'patternExpression': instance.patternExpression?.toJson(),
      'patternParameterDefinition':
          instance.patternParameterDefinition?.toJson(),
      'patternRelatedArtifact': instance.patternRelatedArtifact?.toJson(),
      'patternTriggerDefinition': instance.patternTriggerDefinition?.toJson(),
      'patternUsageContext': instance.patternUsageContext?.toJson(),
      'patternDosage': instance.patternDosage?.toJson(),
      'patternMeta': instance.patternMeta?.toJson(),
      'example': instance.example?.map((e) => e?.toJson())?.toList(),
      'minValueDate': instance.minValueDate,
      'elementMinValueDate': instance.elementMinValueDate?.toJson(),
      'minValueDateTime': instance.minValueDateTime,
      'elementMinValueDateTime': instance.elementMinValueDateTime?.toJson(),
      'minValueInstant': instance.minValueInstant,
      'elementMinValueInstant': instance.elementMinValueInstant?.toJson(),
      'minValueTime': instance.minValueTime,
      'elementMinValueTime': instance.elementMinValueTime?.toJson(),
      'minValueDecimal': instance.minValueDecimal,
      'elementMinValueDecimal': instance.elementMinValueDecimal?.toJson(),
      'minValueInteger': instance.minValueInteger,
      'elementMinValueInteger': instance.elementMinValueInteger?.toJson(),
      'minValuePositiveInt': instance.minValuePositiveInt,
      'elementMinValuePositiveInt':
          instance.elementMinValuePositiveInt?.toJson(),
      'minValueUnsignedInt': instance.minValueUnsignedInt,
      'elementMinValueUnsignedInt':
          instance.elementMinValueUnsignedInt?.toJson(),
      'minValueQuantity': instance.minValueQuantity?.toJson(),
      'maxValueDate': instance.maxValueDate,
      'elementMaxValueDate': instance.elementMaxValueDate?.toJson(),
      'maxValueDateTime': instance.maxValueDateTime,
      'elementMaxValueDateTime': instance.elementMaxValueDateTime?.toJson(),
      'maxValueInstant': instance.maxValueInstant,
      'elementMaxValueInstant': instance.elementMaxValueInstant?.toJson(),
      'maxValueTime': instance.maxValueTime,
      'elementMaxValueTime': instance.elementMaxValueTime?.toJson(),
      'maxValueDecimal': instance.maxValueDecimal,
      'elementMaxValueDecimal': instance.elementMaxValueDecimal?.toJson(),
      'maxValueInteger': instance.maxValueInteger,
      'elementMaxValueInteger': instance.elementMaxValueInteger?.toJson(),
      'maxValuePositiveInt': instance.maxValuePositiveInt,
      'elementMaxValuePositiveInt':
          instance.elementMaxValuePositiveInt?.toJson(),
      'maxValueUnsignedInt': instance.maxValueUnsignedInt,
      'elementMaxValueUnsignedInt':
          instance.elementMaxValueUnsignedInt?.toJson(),
      'maxValueQuantity': instance.maxValueQuantity?.toJson(),
      'maxLength': instance.maxLength,
      'elementMaxLength': instance.elementMaxLength?.toJson(),
      'condition': instance.condition,
      'elementCondition':
          instance.elementCondition?.map((e) => e?.toJson())?.toList(),
      'constraint': instance.constraint?.map((e) => e?.toJson())?.toList(),
      'mustSupport': instance.mustSupport,
      'elementMustSupport': instance.elementMustSupport?.toJson(),
      'isModifier': instance.isModifier,
      'elementIsModifier': instance.elementIsModifier?.toJson(),
      'isModifierReason': instance.isModifierReason,
      'elementIsModifierReason': instance.elementIsModifierReason?.toJson(),
      'isSummary': instance.isSummary,
      'elementIsSummary': instance.elementIsSummary?.toJson(),
      'binding': instance.binding?.toJson(),
      'mapping': instance.mapping?.map((e) => e?.toJson())?.toList(),
    };

ElementDefinition_Slicing _$ElementDefinition_SlicingFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Slicing(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    discriminator: (json['discriminator'] as List)
        ?.map((e) => e == null
            ? null
            : ElementDefinition_Discriminator.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    ordered: json['ordered'] as bool,
    elementOrdered: json['elementOrdered'] == null
        ? null
        : Element.fromJson(json['elementOrdered'] as Map<String, dynamic>),
    rules: json['rules'] as String,
    elementRules: json['elementRules'] == null
        ? null
        : Element.fromJson(json['elementRules'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_SlicingToJson(
        ElementDefinition_Slicing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'discriminator':
          instance.discriminator?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'ordered': instance.ordered,
      'elementOrdered': instance.elementOrdered?.toJson(),
      'rules': instance.rules,
      'elementRules': instance.elementRules?.toJson(),
    };

ElementDefinition_Discriminator _$ElementDefinition_DiscriminatorFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Discriminator(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_DiscriminatorToJson(
        ElementDefinition_Discriminator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
    };

ElementDefinition_Base _$ElementDefinition_BaseFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Base(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    elementPath: json['elementPath'] == null
        ? null
        : Element.fromJson(json['elementPath'] as Map<String, dynamic>),
    min: json['min'] as int,
    elementMin: json['elementMin'] == null
        ? null
        : Element.fromJson(json['elementMin'] as Map<String, dynamic>),
    max: json['max'] as String,
    elementMax: json['elementMax'] == null
        ? null
        : Element.fromJson(json['elementMax'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_BaseToJson(
        ElementDefinition_Base instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'path': instance.path,
      'elementPath': instance.elementPath?.toJson(),
      'min': instance.min,
      'elementMin': instance.elementMin?.toJson(),
      'max': instance.max,
      'elementMax': instance.elementMax?.toJson(),
    };

ElementDefinition_Type _$ElementDefinition_TypeFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Type(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    elementCode: json['elementCode'] == null
        ? null
        : Element.fromJson(json['elementCode'] as Map<String, dynamic>),
    profile: (json['profile'] as List)?.map((e) => e as String)?.toList(),
    targetProfile:
        (json['targetProfile'] as List)?.map((e) => e as String)?.toList(),
    aggregation:
        (json['aggregation'] as List)?.map((e) => e as String)?.toList(),
    elementAggregation: (json['elementAggregation'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    versioning: json['versioning'] as String,
    elementVersioning: json['elementVersioning'] == null
        ? null
        : Element.fromJson(json['elementVersioning'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_TypeToJson(
        ElementDefinition_Type instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'elementCode': instance.elementCode?.toJson(),
      'profile': instance.profile,
      'targetProfile': instance.targetProfile,
      'aggregation': instance.aggregation,
      'elementAggregation':
          instance.elementAggregation?.map((e) => e?.toJson())?.toList(),
      'versioning': instance.versioning,
      'elementVersioning': instance.elementVersioning?.toJson(),
    };

ElementDefinition_Example _$ElementDefinition_ExampleFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Example(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    label: json['label'] as String,
    elementLabel: json['elementLabel'] == null
        ? null
        : Element.fromJson(json['elementLabel'] as Map<String, dynamic>),
    valueBase64Binary: json['valueBase64Binary'] as String,
    elementValueBase64Binary: json['elementValueBase64Binary'] == null
        ? null
        : Element.fromJson(
            json['elementValueBase64Binary'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueCanonical: json['valueCanonical'] as String,
    elementValueCanonical: json['elementValueCanonical'] == null
        ? null
        : Element.fromJson(
            json['elementValueCanonical'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    elementValueCode: json['elementValueCode'] == null
        ? null
        : Element.fromJson(json['elementValueCode'] as Map<String, dynamic>),
    valueDate: json['valueDate'] as String,
    elementValueDate: json['elementValueDate'] == null
        ? null
        : Element.fromJson(json['elementValueDate'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    elementValueDateTime: json['elementValueDateTime'] == null
        ? null
        : Element.fromJson(
            json['elementValueDateTime'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    elementValueDecimal: json['elementValueDecimal'] == null
        ? null
        : Element.fromJson(json['elementValueDecimal'] as Map<String, dynamic>),
    valueId: json['valueId'] as String,
    elementValueId: json['elementValueId'] == null
        ? null
        : Element.fromJson(json['elementValueId'] as Map<String, dynamic>),
    valueInstant: json['valueInstant'] as String,
    elementValueInstant: json['elementValueInstant'] == null
        ? null
        : Element.fromJson(json['elementValueInstant'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    elementValueInteger: json['elementValueInteger'] == null
        ? null
        : Element.fromJson(json['elementValueInteger'] as Map<String, dynamic>),
    valueMarkdown: json['valueMarkdown'] as String,
    elementValueMarkdown: json['elementValueMarkdown'] == null
        ? null
        : Element.fromJson(
            json['elementValueMarkdown'] as Map<String, dynamic>),
    valueOid: json['valueOid'] as String,
    elementValueOid: json['elementValueOid'] == null
        ? null
        : Element.fromJson(json['elementValueOid'] as Map<String, dynamic>),
    valuePositiveInt: json['valuePositiveInt'] as int,
    elementValuePositiveInt: json['elementValuePositiveInt'] == null
        ? null
        : Element.fromJson(
            json['elementValuePositiveInt'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueTime: json['valueTime'] as String,
    elementValueTime: json['elementValueTime'] == null
        ? null
        : Element.fromJson(json['elementValueTime'] as Map<String, dynamic>),
    valueUnsignedInt: json['valueUnsignedInt'] as int,
    elementValueUnsignedInt: json['elementValueUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementValueUnsignedInt'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    elementValueUri: json['elementValueUri'] == null
        ? null
        : Element.fromJson(json['elementValueUri'] as Map<String, dynamic>),
    valueUrl: json['valueUrl'] as String,
    elementValueUrl: json['elementValueUrl'] == null
        ? null
        : Element.fromJson(json['elementValueUrl'] as Map<String, dynamic>),
    valueUuid: json['valueUuid'] as String,
    elementValueUuid: json['elementValueUuid'] == null
        ? null
        : Element.fromJson(json['elementValueUuid'] as Map<String, dynamic>),
    valueAddress: json['valueAddress'] == null
        ? null
        : Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
    valueAge: json['valueAge'] == null
        ? null
        : Age.fromJson(json['valueAge'] as Map<String, dynamic>),
    valueAnnotation: json['valueAnnotation'] == null
        ? null
        : Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueCodeableConcept: json['valueCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['valueCodeableConcept'] as Map<String, dynamic>),
    valueCoding: json['valueCoding'] == null
        ? null
        : Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
    valueContactPoint: json['valueContactPoint'] == null
        ? null
        : ContactPoint.fromJson(
            json['valueContactPoint'] as Map<String, dynamic>),
    valueCount: json['valueCount'] == null
        ? null
        : Count.fromJson(json['valueCount'] as Map<String, dynamic>),
    valueDistance: json['valueDistance'] == null
        ? null
        : Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
    valueDuration: json['valueDuration'] == null
        ? null
        : Duration.fromJson(json['valueDuration'] as Map<String, dynamic>),
    valueHumanName: json['valueHumanName'] == null
        ? null
        : HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
    valueIdentifier: json['valueIdentifier'] == null
        ? null
        : Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
    valueMoney: json['valueMoney'] == null
        ? null
        : Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
    valuePeriod: json['valuePeriod'] == null
        ? null
        : Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueRange: json['valueRange'] == null
        ? null
        : Range.fromJson(json['valueRange'] as Map<String, dynamic>),
    valueRatio: json['valueRatio'] == null
        ? null
        : Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    valueSampledData: json['valueSampledData'] == null
        ? null
        : SampledData.fromJson(
            json['valueSampledData'] as Map<String, dynamic>),
    valueSignature: json['valueSignature'] == null
        ? null
        : Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
    valueTiming: json['valueTiming'] == null
        ? null
        : Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
    valueContactDetail: json['valueContactDetail'] == null
        ? null
        : ContactDetail.fromJson(
            json['valueContactDetail'] as Map<String, dynamic>),
    valueContributor: json['valueContributor'] == null
        ? null
        : Contributor.fromJson(
            json['valueContributor'] as Map<String, dynamic>),
    valueDataRequirement: json['valueDataRequirement'] == null
        ? null
        : DataRequirement.fromJson(
            json['valueDataRequirement'] as Map<String, dynamic>),
    valueExpression: json['valueExpression'] == null
        ? null
        : Expression.fromJson(json['valueExpression'] as Map<String, dynamic>),
    valueParameterDefinition: json['valueParameterDefinition'] == null
        ? null
        : ParameterDefinition.fromJson(
            json['valueParameterDefinition'] as Map<String, dynamic>),
    valueRelatedArtifact: json['valueRelatedArtifact'] == null
        ? null
        : RelatedArtifact.fromJson(
            json['valueRelatedArtifact'] as Map<String, dynamic>),
    valueTriggerDefinition: json['valueTriggerDefinition'] == null
        ? null
        : TriggerDefinition.fromJson(
            json['valueTriggerDefinition'] as Map<String, dynamic>),
    valueUsageContext: json['valueUsageContext'] == null
        ? null
        : UsageContext.fromJson(
            json['valueUsageContext'] as Map<String, dynamic>),
    valueDosage: json['valueDosage'] == null
        ? null
        : Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
    valueMeta: json['valueMeta'] == null
        ? null
        : Meta.fromJson(json['valueMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_ExampleToJson(
        ElementDefinition_Example instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'label': instance.label,
      'elementLabel': instance.elementLabel?.toJson(),
      'valueBase64Binary': instance.valueBase64Binary,
      'elementValueBase64Binary': instance.elementValueBase64Binary?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueCanonical': instance.valueCanonical,
      'elementValueCanonical': instance.elementValueCanonical?.toJson(),
      'valueCode': instance.valueCode,
      'elementValueCode': instance.elementValueCode?.toJson(),
      'valueDate': instance.valueDate,
      'elementValueDate': instance.elementValueDate?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'elementValueDateTime': instance.elementValueDateTime?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'elementValueDecimal': instance.elementValueDecimal?.toJson(),
      'valueId': instance.valueId,
      'elementValueId': instance.elementValueId?.toJson(),
      'valueInstant': instance.valueInstant,
      'elementValueInstant': instance.elementValueInstant?.toJson(),
      'valueInteger': instance.valueInteger,
      'elementValueInteger': instance.elementValueInteger?.toJson(),
      'valueMarkdown': instance.valueMarkdown,
      'elementValueMarkdown': instance.elementValueMarkdown?.toJson(),
      'valueOid': instance.valueOid,
      'elementValueOid': instance.elementValueOid?.toJson(),
      'valuePositiveInt': instance.valuePositiveInt,
      'elementValuePositiveInt': instance.elementValuePositiveInt?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueTime': instance.valueTime,
      'elementValueTime': instance.elementValueTime?.toJson(),
      'valueUnsignedInt': instance.valueUnsignedInt,
      'elementValueUnsignedInt': instance.elementValueUnsignedInt?.toJson(),
      'valueUri': instance.valueUri,
      'elementValueUri': instance.elementValueUri?.toJson(),
      'valueUrl': instance.valueUrl,
      'elementValueUrl': instance.elementValueUrl?.toJson(),
      'valueUuid': instance.valueUuid,
      'elementValueUuid': instance.elementValueUuid?.toJson(),
      'valueAddress': instance.valueAddress?.toJson(),
      'valueAge': instance.valueAge?.toJson(),
      'valueAnnotation': instance.valueAnnotation?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueCodeableConcept': instance.valueCodeableConcept?.toJson(),
      'valueCoding': instance.valueCoding?.toJson(),
      'valueContactPoint': instance.valueContactPoint?.toJson(),
      'valueCount': instance.valueCount?.toJson(),
      'valueDistance': instance.valueDistance?.toJson(),
      'valueDuration': instance.valueDuration?.toJson(),
      'valueHumanName': instance.valueHumanName?.toJson(),
      'valueIdentifier': instance.valueIdentifier?.toJson(),
      'valueMoney': instance.valueMoney?.toJson(),
      'valuePeriod': instance.valuePeriod?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueRange': instance.valueRange?.toJson(),
      'valueRatio': instance.valueRatio?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'valueSampledData': instance.valueSampledData?.toJson(),
      'valueSignature': instance.valueSignature?.toJson(),
      'valueTiming': instance.valueTiming?.toJson(),
      'valueContactDetail': instance.valueContactDetail?.toJson(),
      'valueContributor': instance.valueContributor?.toJson(),
      'valueDataRequirement': instance.valueDataRequirement?.toJson(),
      'valueExpression': instance.valueExpression?.toJson(),
      'valueParameterDefinition': instance.valueParameterDefinition?.toJson(),
      'valueRelatedArtifact': instance.valueRelatedArtifact?.toJson(),
      'valueTriggerDefinition': instance.valueTriggerDefinition?.toJson(),
      'valueUsageContext': instance.valueUsageContext?.toJson(),
      'valueDosage': instance.valueDosage?.toJson(),
      'valueMeta': instance.valueMeta?.toJson(),
    };

ElementDefinition_Constraint _$ElementDefinition_ConstraintFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Constraint(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    key: json['key'] as String,
    elementKey: json['elementKey'] == null
        ? null
        : Element.fromJson(json['elementKey'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    elementRequirements: json['elementRequirements'] == null
        ? null
        : Element.fromJson(json['elementRequirements'] as Map<String, dynamic>),
    severity: json['severity'] as String,
    elementSeverity: json['elementSeverity'] == null
        ? null
        : Element.fromJson(json['elementSeverity'] as Map<String, dynamic>),
    human: json['human'] as String,
    elementHuman: json['elementHuman'] == null
        ? null
        : Element.fromJson(json['elementHuman'] as Map<String, dynamic>),
    expression: json['expression'] as String,
    elementExpression: json['elementExpression'] == null
        ? null
        : Element.fromJson(json['elementExpression'] as Map<String, dynamic>),
    xpath: json['xpath'] as String,
    elementXpath: json['elementXpath'] == null
        ? null
        : Element.fromJson(json['elementXpath'] as Map<String, dynamic>),
    source: json['source'] as String,
  );
}

Map<String, dynamic> _$ElementDefinition_ConstraintToJson(
        ElementDefinition_Constraint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'key': instance.key,
      'elementKey': instance.elementKey?.toJson(),
      'requirements': instance.requirements,
      'elementRequirements': instance.elementRequirements?.toJson(),
      'severity': instance.severity,
      'elementSeverity': instance.elementSeverity?.toJson(),
      'human': instance.human,
      'elementHuman': instance.elementHuman?.toJson(),
      'expression': instance.expression,
      'elementExpression': instance.elementExpression?.toJson(),
      'xpath': instance.xpath,
      'elementXpath': instance.elementXpath?.toJson(),
      'source': instance.source,
    };

ElementDefinition_Binding _$ElementDefinition_BindingFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Binding(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    strength: json['strength'] as String,
    elementStrength: json['elementStrength'] == null
        ? null
        : Element.fromJson(json['elementStrength'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    valueSet: json['valueSet'] as String,
  );
}

Map<String, dynamic> _$ElementDefinition_BindingToJson(
        ElementDefinition_Binding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'strength': instance.strength,
      'elementStrength': instance.elementStrength?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'valueSet': instance.valueSet,
    };

ElementDefinition_Mapping _$ElementDefinition_MappingFromJson(
    Map<String, dynamic> json) {
  return ElementDefinition_Mapping(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identity: json['identity'] as String,
    elementIdentity: json['elementIdentity'] == null
        ? null
        : Element.fromJson(json['elementIdentity'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    map: json['map'] as String,
    elementMap: json['elementMap'] == null
        ? null
        : Element.fromJson(json['elementMap'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    elementComment: json['elementComment'] == null
        ? null
        : Element.fromJson(json['elementComment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ElementDefinition_MappingToJson(
        ElementDefinition_Mapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identity': instance.identity,
      'elementIdentity': instance.elementIdentity?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'map': instance.map,
      'elementMap': instance.elementMap?.toJson(),
      'comment': instance.comment,
      'elementComment': instance.elementComment?.toJson(),
    };
