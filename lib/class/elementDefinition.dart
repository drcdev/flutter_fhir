import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/meta.dart';
import 'package:flutter_fhir/class/dosage.dart';
import 'package:flutter_fhir/class/usageContext.dart';
import 'package:flutter_fhir/class/triggerDefinition.dart';
import 'package:flutter_fhir/class/relatedArtifact.dart';
import 'package:flutter_fhir/class/parameterDefinition.dart';
import 'package:flutter_fhir/class/expression.dart';
import 'package:flutter_fhir/class/dataRequirement.dart';
import 'package:flutter_fhir/class/contributor.dart';
import 'package:flutter_fhir/class/contactDetail.dart';
import 'package:flutter_fhir/class/timing.dart';
import 'package:flutter_fhir/class/signature.dart';
import 'package:flutter_fhir/class/sampledData.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/ratio.dart';
import 'package:flutter_fhir/class/range.dart';
import 'package:flutter_fhir/class/quantity.dart';
import 'package:flutter_fhir/class/period.dart';
import 'package:flutter_fhir/class/money.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/humanName.dart';
import 'package:flutter_fhir/class/duration.dart';
import 'package:flutter_fhir/class/distance.dart';
import 'package:flutter_fhir/class/count.dart';
import 'package:flutter_fhir/class/contactPoint.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/attachment.dart';
import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/age.dart';
import 'package:flutter_fhir/class/address.dart';
import 'package:flutter_fhir/class/coding.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'elementDefinition.g.dart';

@JsonSerializable(explicitToJson: true)
class ElementDefinition {

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

  //  The path identifies the element and is expressed as a "."-separated
  // list of ancestor elements, beginning with the name of the resource or
  // extension.
  String path;

  //  Extensions for path
  Element element_path;

  //  Codes that define how this element is represented in instances, when
  // the deviation varies from the normal case.
  List<String> representation; // <code> enum: xmlAttr/xmlText/typeAttr/cdaText/xhtml> representation;

  //  Extensions for representation
  List<Element> element_representation;

  //  The name of this element definition slice, when slicing is working.
  // The name must be a token with no dots or spaces. This is a unique name
  // referring to a specific set of constraints applied to this element,
  // used to provide a name to different slices of the same element.
  String sliceName;

  //  Extensions for sliceName
  Element element_sliceName;

  //  If true, indicates that this slice definition is constraining a slice
  // definition with the same name in an inherited profile. If false, the
  // slice is not overriding any slice in an inherited profile. If missing,
  // the slice might or might not be overriding a slice in an inherited
  // profile, depending on the sliceName.
  bool sliceIsConstraining;

  //  Extensions for sliceIsConstraining
  Element element_sliceIsConstraining;

  //  A single preferred label which is the text to display beside the
  // element indicating its meaning or to use to prompt for the element in a
  // user display or form.
  String label;

  //  Extensions for label
  Element element_label;

  //  A code that has the same meaning as the element in a particular
  // terminology.
  List<Coding> code;

  //  Indicates that the element is sliced into a set of alternative
  // definitions (i.e. in a structure definition, there are multiple
  // different constraints on a single element in the base resource).
  // Slicing can be used in any resource that has cardinality ..* on the
  // base resource, or any resource with a choice of types. The set of
  // slices is any elements that come after this in the element sequence
  // that have the same path, until a shorter path occurs (the shorter path
  // terminates the set).
  ElementDefinition_Slicing slicing;

  //  A concise description of what this element means (e.g. for use in
  // autogenerated summaries).
  String short;

  //  Extensions for short
  Element element_short;

  //  Provides a complete explanation of the meaning of the data element for
  // human readability.  For the case of elements derived from existing
  // elements (e.g. constraints), the definition SHALL be consistent with
  // the base definition, but convey the meaning of the element in the
  // particular context of use of the resource. (Note: The text you are
  // reading is specified in ElementDefinition.definition).
  String definition;

  //  Extensions for definition
  Element element_definition;

  //  Explanatory notes and implementation guidance about the data element,
  // including notes about how to use the data properly, exceptions to
  // proper use, etc. (Note: The text you are reading is specified in
  // ElementDefinition.comment).
  String comment;

  //  Extensions for comment
  Element element_comment;

  //  This element is for traceability of why the element was created and
  // why the constraints exist as they do. This may be used to point to
  // source materials or specifications that drove the structure of this
  // element.
  String requirements;

  //  Extensions for requirements
  Element element_requirements;

  //  Identifies additional names by which this element might also be known.
  List<String> alias;

  //  Extensions for alias
  List<Element> element_alias;

  //  The minimum number of times this element SHALL appear in the instance.
  int min;

  //  Extensions for min
  Element element_min;

  //  The maximum number of times this element is permitted to appear in the
  // instance.
  String max;

  //  Extensions for max
  Element element_max;

  //  Information about the base definition of the element, provided to make
  // it unnecessary for tools to trace the deviation of the element through
  // the derived and related profiles. When the element definition is not
  // the original definition of an element - i.g. either in a constraint on
  // another type, or for elements from a super type in a snap shot - then
  // the information in provided in the element definition may be different
  // to the base definition. On the original definition of the element, it
  // will be same.
  ElementDefinition_Base base;

  //  Identifies an element defined elsewhere in the definition whose
  // content rules should be applied to the current element.
  // ContentReferences bring across all the rules that are in the
  // ElementDefinition for the element, including definitions, cardinality
  // constraints, bindings, invariants etc.
  String contentReference;

  //  Extensions for contentReference
  Element element_contentReference;

  //  The data type or resource that the value of this element is permitted
  // to be.
  List<ElementDefinition_Type> type;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for defaultValueBase64Binary
  Element element_defaultValueBase64Binary;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  bool defaultValueBoolean; //  pattern: ^true|false$

  //  Extensions for defaultValueBoolean
  Element element_defaultValueBoolean;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueCanonical; //  pattern: ^\S*$

  //  Extensions for defaultValueCanonical
  Element element_defaultValueCanonical;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for defaultValueCode
  Element element_defaultValueCode;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for defaultValueDate
  Element element_defaultValueDate;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for defaultValueDateTime
  Element element_defaultValueDateTime;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for defaultValueDecimal
  Element element_defaultValueDecimal;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for defaultValueId
  Element element_defaultValueId;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for defaultValueInstant
  Element element_defaultValueInstant;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for defaultValueInteger
  Element element_defaultValueInteger;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueMarkdown
  Element element_defaultValueMarkdown;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for defaultValueOid
  Element element_defaultValueOid;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for defaultValuePositiveInt
  Element element_defaultValuePositiveInt;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for defaultValueString
  Element element_defaultValueString;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for defaultValueTime
  Element element_defaultValueTime;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for defaultValueUnsignedInt
  Element element_defaultValueUnsignedInt;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueUri; //  pattern: ^\S*$

  //  Extensions for defaultValueUri
  Element element_defaultValueUri;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueUrl; //  pattern: ^\S*$

  //  Extensions for defaultValueUrl
  Element element_defaultValueUrl;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for defaultValueUuid
  Element element_defaultValueUuid;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Address defaultValueAddress;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Age defaultValueAge;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Annotation defaultValueAnnotation;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Attachment defaultValueAttachment;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  CodeableConcept defaultValueCodeableConcept;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Coding defaultValueCoding;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  ContactPoint defaultValueContactPoint;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Count defaultValueCount;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Distance defaultValueDistance;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Duration defaultValueDuration;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  HumanName defaultValueHumanName;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Identifier defaultValueIdentifier;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Money defaultValueMoney;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Period defaultValuePeriod;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Quantity defaultValueQuantity;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Range defaultValueRange;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Ratio defaultValueRatio;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Reference defaultValueReference;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  SampledData defaultValueSampledData;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Signature defaultValueSignature;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Timing defaultValueTiming;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  ContactDetail defaultValueContactDetail;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Contributor defaultValueContributor;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  DataRequirement defaultValueDataRequirement;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Expression defaultValueExpression;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  ParameterDefinition defaultValueParameterDefinition;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  RelatedArtifact defaultValueRelatedArtifact;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  TriggerDefinition defaultValueTriggerDefinition;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  UsageContext defaultValueUsageContext;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Dosage defaultValueDosage;

  //  The value that should be used if there is no value stated in the
  // instance (e.g. 'if not otherwise specified, the abstract is false').
  Meta defaultValueMeta;

  //  The Implicit meaning that is to be understood when this element is
  // missing (e.g. 'when this element is missing, the period is ongoing').
  String meaningWhenMissing;

  //  Extensions for meaningWhenMissing
  Element element_meaningWhenMissing;

  //  If present, indicates that the order of the repeating element has
  // meaning and describes what that meaning is.  If absent, it means that
  // the order of the element has no meaning.
  String orderMeaning;

  //  Extensions for orderMeaning
  Element element_orderMeaning;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for fixedBase64Binary
  Element element_fixedBase64Binary;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  bool fixedBoolean; //  pattern: ^true|false$

  //  Extensions for fixedBoolean
  Element element_fixedBoolean;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedCanonical; //  pattern: ^\S*$

  //  Extensions for fixedCanonical
  Element element_fixedCanonical;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for fixedCode
  Element element_fixedCode;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for fixedDate
  Element element_fixedDate;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for fixedDateTime
  Element element_fixedDateTime;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  double fixedDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for fixedDecimal
  Element element_fixedDecimal;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for fixedId
  Element element_fixedId;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for fixedInstant
  Element element_fixedInstant;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  int fixedInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for fixedInteger
  Element element_fixedInteger;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for fixedMarkdown
  Element element_fixedMarkdown;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for fixedOid
  Element element_fixedOid;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  int fixedPositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for fixedPositiveInt
  Element element_fixedPositiveInt;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for fixedString
  Element element_fixedString;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for fixedTime
  Element element_fixedTime;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  int fixedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for fixedUnsignedInt
  Element element_fixedUnsignedInt;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedUri; //  pattern: ^\S*$

  //  Extensions for fixedUri
  Element element_fixedUri;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedUrl; //  pattern: ^\S*$

  //  Extensions for fixedUrl
  Element element_fixedUrl;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  String fixedUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for fixedUuid
  Element element_fixedUuid;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Address fixedAddress;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Age fixedAge;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Annotation fixedAnnotation;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Attachment fixedAttachment;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  CodeableConcept fixedCodeableConcept;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Coding fixedCoding;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  ContactPoint fixedContactPoint;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Count fixedCount;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Distance fixedDistance;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Duration fixedDuration;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  HumanName fixedHumanName;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Identifier fixedIdentifier;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Money fixedMoney;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Period fixedPeriod;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Quantity fixedQuantity;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Range fixedRange;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Ratio fixedRatio;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Reference fixedReference;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  SampledData fixedSampledData;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Signature fixedSignature;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Timing fixedTiming;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  ContactDetail fixedContactDetail;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Contributor fixedContributor;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  DataRequirement fixedDataRequirement;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Expression fixedExpression;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  ParameterDefinition fixedParameterDefinition;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  RelatedArtifact fixedRelatedArtifact;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  TriggerDefinition fixedTriggerDefinition;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  UsageContext fixedUsageContext;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
  Dosage fixedDosage;

  //  Specifies a value that SHALL be exactly the value  for this element in
  // the instance. For purposes of comparison, non-significant whitespace is
  // ignored, and all values must be an exact match (case and accent
  // sensitive). Missing elements/attributes must also be missing.
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
  String patternBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for patternBase64Binary
  Element element_patternBase64Binary;

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
  bool patternBoolean; //  pattern: ^true|false$

  //  Extensions for patternBoolean
  Element element_patternBoolean;

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
  String patternCanonical; //  pattern: ^\S*$

  //  Extensions for patternCanonical
  Element element_patternCanonical;

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
  String patternCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for patternCode
  Element element_patternCode;

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
  String patternDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for patternDate
  Element element_patternDate;

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
  String patternDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for patternDateTime
  Element element_patternDateTime;

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
  Element element_patternDecimal;

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
  String patternId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for patternId
  Element element_patternId;

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
  String patternInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for patternInstant
  Element element_patternInstant;

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
  Element element_patternInteger;

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
  String patternMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for patternMarkdown
  Element element_patternMarkdown;

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
  String patternOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for patternOid
  Element element_patternOid;

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
  Element element_patternPositiveInt;

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
  String patternString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for patternString
  Element element_patternString;

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
  String patternTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for patternTime
  Element element_patternTime;

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
  Element element_patternUnsignedInt;

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
  String patternUri; //  pattern: ^\S*$

  //  Extensions for patternUri
  Element element_patternUri;

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
  String patternUrl; //  pattern: ^\S*$

  //  Extensions for patternUrl
  Element element_patternUrl;

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
  String patternUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for patternUuid
  Element element_patternUuid;

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
  Meta patternMeta;

  //  A sample value for this element demonstrating the type of information
  // that would typically be found in the element.
  List<ElementDefinition_Example> example;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String minValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for minValueDate
  Element element_minValueDate;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String minValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for minValueDateTime
  Element element_minValueDateTime;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String minValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for minValueInstant
  Element element_minValueInstant;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String minValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for minValueTime
  Element element_minValueTime;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  double minValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for minValueDecimal
  Element element_minValueDecimal;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int minValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for minValueInteger
  Element element_minValueInteger;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int minValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for minValuePositiveInt
  Element element_minValuePositiveInt;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int minValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for minValueUnsignedInt
  Element element_minValueUnsignedInt;

  //  The minimum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  Quantity minValueQuantity;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String maxValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for maxValueDate
  Element element_maxValueDate;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String maxValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for maxValueDateTime
  Element element_maxValueDateTime;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String maxValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for maxValueInstant
  Element element_maxValueInstant;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  String maxValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for maxValueTime
  Element element_maxValueTime;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  double maxValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for maxValueDecimal
  Element element_maxValueDecimal;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int maxValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for maxValueInteger
  Element element_maxValueInteger;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int maxValuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for maxValuePositiveInt
  Element element_maxValuePositiveInt;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  int maxValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for maxValueUnsignedInt
  Element element_maxValueUnsignedInt;

  //  The maximum allowed value for the element. The value is inclusive.
  // This is allowed for the types date, dateTime, instant, time, decimal,
  // integer, and Quantity.
  Quantity maxValueQuantity;

  //  Indicates the maximum length in characters that is permitted to be
  // present in conformant instances and which is expected to be supported
  // by conformant consumers that support the element.
  int maxLength;

  //  Extensions for maxLength
  Element element_maxLength;

  //  A reference to an invariant that may make additional statements about
  // the cardinality or value in the instance.
  List<String> condition;

  //  Extensions for condition
  List<Element> element_condition;

  //  Formal constraints such as co-occurrence and other constraints that
  // can be computationally evaluated within the context of the instance.
  List<ElementDefinition_Constraint> constraint;

  //  If true, implementations that produce or consume resources SHALL
  // provide "support" for the element in some meaningful way.  If false,
  // the element may be ignored and not supported. If false, whether to
  // populate or use the data element in any way is at the discretion of the
  // implementation.
  bool mustSupport;

  //  Extensions for mustSupport
  Element element_mustSupport;

  //  If true, the value of this element affects the interpretation of the
  // element or resource that contains it, and the value of the element
  // cannot be ignored. Typically, this is used for status, negation and
  // qualification codes. The effect of this is that the element cannot be
  // ignored by systems: they SHALL either recognize the element and process
  // it, and/or a pre-determination has been made that it is not relevant to
  // their particular system.
  bool isModifier;

  //  Extensions for isModifier
  Element element_isModifier;

  //  Explains how that element affects the interpretation of the resource
  // or element that contains it.
  String isModifierReason;

  //  Extensions for isModifierReason
  Element element_isModifierReason;

  //  Whether the element should be included if a client requests a search
  // with the parameter _summary=true.
  bool isSummary;

  //  Extensions for isSummary
  Element element_isSummary;

  //  Binds to a value set if this element is coded (code, Coding,
  // CodeableConcept, Quantity), or the data types (string, uri).
  ElementDefinition_Binding binding;

  //  Identifies a concept from an external specification that roughly
  // corresponds to this element.
  List<ElementDefinition_Mapping> mapping;

ElementDefinition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.element_path,
    this.representation,
    this.element_representation,
    this.sliceName,
    this.element_sliceName,
    this.sliceIsConstraining,
    this.element_sliceIsConstraining,
    this.label,
    this.element_label,
    this.code,
    this.slicing,
    this.short,
    this.element_short,
    this.definition,
    this.element_definition,
    this.comment,
    this.element_comment,
    this.requirements,
    this.element_requirements,
    this.alias,
    this.element_alias,
    this.min,
    this.element_min,
    this.max,
    this.element_max,
    this.base,
    this.contentReference,
    this.element_contentReference,
    this.type,
    this.defaultValueBase64Binary,
    this.element_defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.element_defaultValueBoolean,
    this.defaultValueCanonical,
    this.element_defaultValueCanonical,
    this.defaultValueCode,
    this.element_defaultValueCode,
    this.defaultValueDate,
    this.element_defaultValueDate,
    this.defaultValueDateTime,
    this.element_defaultValueDateTime,
    this.defaultValueDecimal,
    this.element_defaultValueDecimal,
    this.defaultValueId,
    this.element_defaultValueId,
    this.defaultValueInstant,
    this.element_defaultValueInstant,
    this.defaultValueInteger,
    this.element_defaultValueInteger,
    this.defaultValueMarkdown,
    this.element_defaultValueMarkdown,
    this.defaultValueOid,
    this.element_defaultValueOid,
    this.defaultValuePositiveInt,
    this.element_defaultValuePositiveInt,
    this.defaultValueString,
    this.element_defaultValueString,
    this.defaultValueTime,
    this.element_defaultValueTime,
    this.defaultValueUnsignedInt,
    this.element_defaultValueUnsignedInt,
    this.defaultValueUri,
    this.element_defaultValueUri,
    this.defaultValueUrl,
    this.element_defaultValueUrl,
    this.defaultValueUuid,
    this.element_defaultValueUuid,
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
    this.element_meaningWhenMissing,
    this.orderMeaning,
    this.element_orderMeaning,
    this.fixedBase64Binary,
    this.element_fixedBase64Binary,
    this.fixedBoolean,
    this.element_fixedBoolean,
    this.fixedCanonical,
    this.element_fixedCanonical,
    this.fixedCode,
    this.element_fixedCode,
    this.fixedDate,
    this.element_fixedDate,
    this.fixedDateTime,
    this.element_fixedDateTime,
    this.fixedDecimal,
    this.element_fixedDecimal,
    this.fixedId,
    this.element_fixedId,
    this.fixedInstant,
    this.element_fixedInstant,
    this.fixedInteger,
    this.element_fixedInteger,
    this.fixedMarkdown,
    this.element_fixedMarkdown,
    this.fixedOid,
    this.element_fixedOid,
    this.fixedPositiveInt,
    this.element_fixedPositiveInt,
    this.fixedString,
    this.element_fixedString,
    this.fixedTime,
    this.element_fixedTime,
    this.fixedUnsignedInt,
    this.element_fixedUnsignedInt,
    this.fixedUri,
    this.element_fixedUri,
    this.fixedUrl,
    this.element_fixedUrl,
    this.fixedUuid,
    this.element_fixedUuid,
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
    this.element_patternBase64Binary,
    this.patternBoolean,
    this.element_patternBoolean,
    this.patternCanonical,
    this.element_patternCanonical,
    this.patternCode,
    this.element_patternCode,
    this.patternDate,
    this.element_patternDate,
    this.patternDateTime,
    this.element_patternDateTime,
    this.patternDecimal,
    this.element_patternDecimal,
    this.patternId,
    this.element_patternId,
    this.patternInstant,
    this.element_patternInstant,
    this.patternInteger,
    this.element_patternInteger,
    this.patternMarkdown,
    this.element_patternMarkdown,
    this.patternOid,
    this.element_patternOid,
    this.patternPositiveInt,
    this.element_patternPositiveInt,
    this.patternString,
    this.element_patternString,
    this.patternTime,
    this.element_patternTime,
    this.patternUnsignedInt,
    this.element_patternUnsignedInt,
    this.patternUri,
    this.element_patternUri,
    this.patternUrl,
    this.element_patternUrl,
    this.patternUuid,
    this.element_patternUuid,
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
    this.element_minValueDate,
    this.minValueDateTime,
    this.element_minValueDateTime,
    this.minValueInstant,
    this.element_minValueInstant,
    this.minValueTime,
    this.element_minValueTime,
    this.minValueDecimal,
    this.element_minValueDecimal,
    this.minValueInteger,
    this.element_minValueInteger,
    this.minValuePositiveInt,
    this.element_minValuePositiveInt,
    this.minValueUnsignedInt,
    this.element_minValueUnsignedInt,
    this.minValueQuantity,
    this.maxValueDate,
    this.element_maxValueDate,
    this.maxValueDateTime,
    this.element_maxValueDateTime,
    this.maxValueInstant,
    this.element_maxValueInstant,
    this.maxValueTime,
    this.element_maxValueTime,
    this.maxValueDecimal,
    this.element_maxValueDecimal,
    this.maxValueInteger,
    this.element_maxValueInteger,
    this.maxValuePositiveInt,
    this.element_maxValuePositiveInt,
    this.maxValueUnsignedInt,
    this.element_maxValueUnsignedInt,
    this.maxValueQuantity,
    this.maxLength,
    this.element_maxLength,
    this.condition,
    this.element_condition,
    this.constraint,
    this.mustSupport,
    this.element_mustSupport,
    this.isModifier,
    this.element_isModifier,
    this.isModifierReason,
    this.element_isModifierReason,
    this.isSummary,
    this.element_isSummary,
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
  Element element_description;

  //  If the matching elements have to occur in the same order as defined in
  // the profile.
  bool ordered;

  //  Extensions for ordered
  Element element_ordered;

  //  Whether additional slices are allowed or not. When the slices are
  // ordered, profile authors can also say that additional slices are only
  // allowed at the end.
  String rules; // <code> enum: closed/open/openAtEnd;

  //  Extensions for rules
  Element element_rules;

ElementDefinition_Slicing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.discriminator,
    this.description,
    this.element_description,
    this.ordered,
    this.element_ordered,
    this.rules,
    this.element_rules
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
  Element element_type;

  //  A FHIRPath expression, using [the simple subset of
  // FHIRPath](fhirpath.html#simple), that is used to identify the element
  // on which discrimination is based.
  String path;

  //  Extensions for path
  Element element_path;

ElementDefinition_Discriminator(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.element_type,
    this.path,
    this.element_path
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
  Element element_path;

  //  Minimum cardinality of the base element identified by the path.
  int min;

  //  Extensions for min
  Element element_min;

  //  Maximum cardinality of the base element identified by the path.
  String max;

  //  Extensions for max
  Element element_max;

ElementDefinition_Base(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.element_path,
    this.min,
    this.element_min,
    this.max,
    this.element_max
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
  Element element_code;

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
  List<Element> element_aggregation;

  //  Whether this reference needs to be version specific or version
  // independent, or whether either can be used.
  String versioning; // <code> enum: either/independent/specific;

  //  Extensions for versioning
  Element element_versioning;

ElementDefinition_Type(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.element_code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.element_aggregation,
    this.versioning,
    this.element_versioning
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
  Element element_label;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

  //  Extensions for valueBase64Binary
  Element element_valueBase64Binary;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  bool valueBoolean; //  pattern: ^true|false$

  //  Extensions for valueBoolean
  Element element_valueBoolean;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueCanonical; //  pattern: ^\S*$

  //  Extensions for valueCanonical
  Element element_valueCanonical;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

  //  Extensions for valueCode
  Element element_valueCode;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

  //  Extensions for valueDate
  Element element_valueDate;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

  //  Extensions for valueDateTime
  Element element_valueDateTime;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

  //  Extensions for valueDecimal
  Element element_valueDecimal;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

  //  Extensions for valueId
  Element element_valueId;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

  //  Extensions for valueInstant
  Element element_valueInstant;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

  //  Extensions for valueInteger
  Element element_valueInteger;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueMarkdown
  Element element_valueMarkdown;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

  //  Extensions for valueOid
  Element element_valueOid;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

  //  Extensions for valuePositiveInt
  Element element_valuePositiveInt;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueString; //  pattern: ^[ \r\n\t\S]+$

  //  Extensions for valueString
  Element element_valueString;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

  //  Extensions for valueTime
  Element element_valueTime;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

  //  Extensions for valueUnsignedInt
  Element element_valueUnsignedInt;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueUri; //  pattern: ^\S*$

  //  Extensions for valueUri
  Element element_valueUri;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueUrl; //  pattern: ^\S*$

  //  Extensions for valueUrl
  Element element_valueUrl;

  //  The actual value for the element, which must be one of the types
  // allowed for this element.
  String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

  //  Extensions for valueUuid
  Element element_valueUuid;

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
    this.element_label,
    this.valueBase64Binary,
    this.element_valueBase64Binary,
    this.valueBoolean,
    this.element_valueBoolean,
    this.valueCanonical,
    this.element_valueCanonical,
    this.valueCode,
    this.element_valueCode,
    this.valueDate,
    this.element_valueDate,
    this.valueDateTime,
    this.element_valueDateTime,
    this.valueDecimal,
    this.element_valueDecimal,
    this.valueId,
    this.element_valueId,
    this.valueInstant,
    this.element_valueInstant,
    this.valueInteger,
    this.element_valueInteger,
    this.valueMarkdown,
    this.element_valueMarkdown,
    this.valueOid,
    this.element_valueOid,
    this.valuePositiveInt,
    this.element_valuePositiveInt,
    this.valueString,
    this.element_valueString,
    this.valueTime,
    this.element_valueTime,
    this.valueUnsignedInt,
    this.element_valueUnsignedInt,
    this.valueUri,
    this.element_valueUri,
    this.valueUrl,
    this.element_valueUrl,
    this.valueUuid,
    this.element_valueUuid,
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
  Element element_key;

  //  Description of why this constraint is necessary or appropriate.
  String requirements;

  //  Extensions for requirements
  Element element_requirements;

  //  Identifies the impact constraint violation has on the conformance of
  // the instance.
  String severity; // <code> enum: error/warning;

  //  Extensions for severity
  Element element_severity;

  //  Text that can be used to describe the constraint in messages
  // identifying that the constraint has been violated.
  String human;

  //  Extensions for human
  Element element_human;

  //  A [FHIRPath](fhirpath.html) expression of constraint that can be
  // executed to see if this constraint is met.
  String expression;

  //  Extensions for expression
  Element element_expression;

  //  An XPath expression of constraint that can be executed to see if this
  // constraint is met.
  String xpath;

  //  Extensions for xpath
  Element element_xpath;

  //  A reference to the original source of the constraint, for traceability
  // purposes.
  String source;

ElementDefinition_Constraint(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.key,
    this.element_key,
    this.requirements,
    this.element_requirements,
    this.severity,
    this.element_severity,
    this.human,
    this.element_human,
    this.expression,
    this.element_expression,
    this.xpath,
    this.element_xpath,
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
  Element element_strength;

  //  Describes the intended use of this particular set of codes.
  String description;

  //  Extensions for description
  Element element_description;

  //  Refers to the value set that identifies the set of codes the binding
  // refers to.
  String valueSet;

ElementDefinition_Binding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.element_strength,
    this.description,
    this.element_description,
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
  Element element_identity;

  //  Identifies the computable language in which mapping.map is expressed.
  String language;

  //  Extensions for language
  Element element_language;

  //  Expresses what part of the target specification corresponds to this
  // element.
  String map;

  //  Extensions for map
  Element element_map;

  //  Comments that provide information about the mapping or its use.
  String comment;

  //  Extensions for comment
  Element element_comment;

ElementDefinition_Mapping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.element_identity,
    this.language,
    this.element_language,
    this.map,
    this.element_map,
    this.comment,
    this.element_comment
    });

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$ElementDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_MappingToJson(this);
}

