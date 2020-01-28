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


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The path identifies the element and is expressed as a "."-separated list of
//  ancestor elements, beginning with the name of the resource or extension.
String path;

// Extensions for path
Element _path;

// Codes that define how this element is represented in instances, when the
//  deviation varies from the normal case.

// Extensions for representation
List<Element> _representation;

// The name of this element definition slice, when slicing is working. The name
//  must be a token with no dots or spaces. This is a unique name referring to a
//  specific set of constraints applied to this element, used to provide a name to
//  different slices of the same element.
String sliceName;

// Extensions for sliceName
Element _sliceName;

// If true, indicates that this slice definition is constraining a slice definition
//  with the same name in an inherited profile. If false, the slice is not
//  overriding any slice in an inherited profile. If missing, the slice might or
//  might not be overriding a slice in an inherited profile, depending on the sliceName.
bool sliceIsConstraining;

// Extensions for sliceIsConstraining
Element _sliceIsConstraining;

// A single preferred label which is the text to display beside the element
//  indicating its meaning or to use to prompt for the element in a user display or form.
String label;

// Extensions for label
Element _label;

// A code that has the same meaning as the element in a particular terminology.
List<Coding> code;

// Indicates that the element is sliced into a set of alternative definitions (i.e.
//  in a structure definition, there are multiple different constraints on a single
//  element in the base resource). Slicing can be used in any resource that has
//  cardinality ..* on the base resource, or any resource with a choice of types.
//  The set of slices is any elements that come after this in the element sequence
//  that have the same path, until a shorter path occurs (the shorter path
//  terminates the set).
ElementDefinition_Slicing slicing;

// A concise description of what this element means (e.g. for use in autogenerated
//  summaries).
String short;

// Extensions for short
Element _short;

// Provides a complete explanation of the meaning of the data element for human
//  readability.  For the case of elements derived from existing elements (e.g.
//  constraints), the definition SHALL be consistent with the base definition, but
//  convey the meaning of the element in the particular context of use of the
//  resource. (Note: The text you are reading is specified in ElementDefinition.definition).
String definition;

// Extensions for definition
Element _definition;

// Explanatory notes and implementation guidance about the data element, including
//  notes about how to use the data properly, exceptions to proper use, etc. (Note:
//  The text you are reading is specified in ElementDefinition.comment).
String comment;

// Extensions for comment
Element _comment;

// This element is for traceability of why the element was created and why the
//  constraints exist as they do. This may be used to point to source materials or
//  specifications that drove the structure of this element.
String requirements;

// Extensions for requirements
Element _requirements;

// Identifies additional names by which this element might also be known.
List<String> alias;

// Extensions for alias
List<Element> _alias;

// The minimum number of times this element SHALL appear in the instance.
int min;

// Extensions for min
Element _min;

// The maximum number of times this element is permitted to appear in the instance.
String max;

// Extensions for max
Element _max;

// Information about the base definition of the element, provided to make it
//  unnecessary for tools to trace the deviation of the element through the derived
//  and related profiles. When the element definition is not the original
//  definition of an element - i.g. either in a constraint on another type, or for
//  elements from a super type in a snap shot - then the information in provided in
//  the element definition may be different to the base definition. On the original
//  definition of the element, it will be same.
ElementDefinition_Base base;

// Identifies an element defined elsewhere in the definition whose content rules
//  should be applied to the current element. ContentReferences bring across all
//  the rules that are in the ElementDefinition for the element, including
//  definitions, cardinality constraints, bindings, invariants etc.
String contentReference;

// Extensions for contentReference
Element _contentReference;

// The data type or resource that the value of this element is permitted to be.
List<ElementDefinition_Type> type;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

// Extensions for defaultValueBase64Binary
Element _defaultValueBase64Binary;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
bool defaultValueBoolean; //  pattern: ^true|false$

// Extensions for defaultValueBoolean
Element _defaultValueBoolean;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueCanonical; //  pattern: ^\S*$

// Extensions for defaultValueCanonical
Element _defaultValueCanonical;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

// Extensions for defaultValueCode
Element _defaultValueCode;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for defaultValueDate
Element _defaultValueDate;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for defaultValueDateTime
Element _defaultValueDateTime;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
double defaultValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for defaultValueDecimal
Element _defaultValueDecimal;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

// Extensions for defaultValueId
Element _defaultValueId;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

// Extensions for defaultValueInstant
Element _defaultValueInstant;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
int defaultValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for defaultValueInteger
Element _defaultValueInteger;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueMarkdown; //  pattern: ^[ \r\n\t\S]+$

// Extensions for defaultValueMarkdown
Element _defaultValueMarkdown;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

// Extensions for defaultValueOid
Element _defaultValueOid;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
int defaultValuePositiveInt; //  pattern: ^[1-9][0-9]*$

// Extensions for defaultValuePositiveInt
Element _defaultValuePositiveInt;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for defaultValueString
Element _defaultValueString;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

// Extensions for defaultValueTime
Element _defaultValueTime;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
int defaultValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

// Extensions for defaultValueUnsignedInt
Element _defaultValueUnsignedInt;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueUri; //  pattern: ^\S*$

// Extensions for defaultValueUri
Element _defaultValueUri;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueUrl; //  pattern: ^\S*$

// Extensions for defaultValueUrl
Element _defaultValueUrl;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
String defaultValueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

// Extensions for defaultValueUuid
Element _defaultValueUuid;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Address defaultValueAddress;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Age defaultValueAge;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Annotation defaultValueAnnotation;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Attachment defaultValueAttachment;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
CodeableConcept defaultValueCodeableConcept;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Coding defaultValueCoding;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
ContactPoint defaultValueContactPoint;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Count defaultValueCount;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Distance defaultValueDistance;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Duration defaultValueDuration;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
HumanName defaultValueHumanName;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Identifier defaultValueIdentifier;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Money defaultValueMoney;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Period defaultValuePeriod;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Quantity defaultValueQuantity;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Range defaultValueRange;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Ratio defaultValueRatio;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Reference defaultValueReference;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
SampledData defaultValueSampledData;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Signature defaultValueSignature;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Timing defaultValueTiming;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
ContactDetail defaultValueContactDetail;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Contributor defaultValueContributor;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
DataRequirement defaultValueDataRequirement;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Expression defaultValueExpression;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
ParameterDefinition defaultValueParameterDefinition;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
RelatedArtifact defaultValueRelatedArtifact;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
TriggerDefinition defaultValueTriggerDefinition;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
UsageContext defaultValueUsageContext;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Dosage defaultValueDosage;

// The value that should be used if there is no value stated in the instance (e.g.
//  'if not otherwise specified, the abstract is false').
Meta defaultValueMeta;

// The Implicit meaning that is to be understood when this element is missing (e.g.
//  'when this element is missing, the period is ongoing').
String meaningWhenMissing;

// Extensions for meaningWhenMissing
Element _meaningWhenMissing;

// If present, indicates that the order of the repeating element has meaning and
//  describes what that meaning is.  If absent, it means that the order of the
//  element has no meaning.
String orderMeaning;

// Extensions for orderMeaning
Element _orderMeaning;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

// Extensions for fixedBase64Binary
Element _fixedBase64Binary;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
bool fixedBoolean; //  pattern: ^true|false$

// Extensions for fixedBoolean
Element _fixedBoolean;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedCanonical; //  pattern: ^\S*$

// Extensions for fixedCanonical
Element _fixedCanonical;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

// Extensions for fixedCode
Element _fixedCode;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for fixedDate
Element _fixedDate;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for fixedDateTime
Element _fixedDateTime;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
double fixedDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for fixedDecimal
Element _fixedDecimal;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

// Extensions for fixedId
Element _fixedId;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

// Extensions for fixedInstant
Element _fixedInstant;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
int fixedInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for fixedInteger
Element _fixedInteger;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedMarkdown; //  pattern: ^[ \r\n\t\S]+$

// Extensions for fixedMarkdown
Element _fixedMarkdown;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

// Extensions for fixedOid
Element _fixedOid;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
int fixedPositiveInt; //  pattern: ^[1-9][0-9]*$

// Extensions for fixedPositiveInt
Element _fixedPositiveInt;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for fixedString
Element _fixedString;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

// Extensions for fixedTime
Element _fixedTime;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
int fixedUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

// Extensions for fixedUnsignedInt
Element _fixedUnsignedInt;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedUri; //  pattern: ^\S*$

// Extensions for fixedUri
Element _fixedUri;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedUrl; //  pattern: ^\S*$

// Extensions for fixedUrl
Element _fixedUrl;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
String fixedUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

// Extensions for fixedUuid
Element _fixedUuid;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Address fixedAddress;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Age fixedAge;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Annotation fixedAnnotation;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Attachment fixedAttachment;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
CodeableConcept fixedCodeableConcept;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Coding fixedCoding;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
ContactPoint fixedContactPoint;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Count fixedCount;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Distance fixedDistance;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Duration fixedDuration;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
HumanName fixedHumanName;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Identifier fixedIdentifier;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Money fixedMoney;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Period fixedPeriod;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Quantity fixedQuantity;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Range fixedRange;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Ratio fixedRatio;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Reference fixedReference;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
SampledData fixedSampledData;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Signature fixedSignature;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Timing fixedTiming;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
ContactDetail fixedContactDetail;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Contributor fixedContributor;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
DataRequirement fixedDataRequirement;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Expression fixedExpression;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
ParameterDefinition fixedParameterDefinition;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
RelatedArtifact fixedRelatedArtifact;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
TriggerDefinition fixedTriggerDefinition;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
UsageContext fixedUsageContext;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Dosage fixedDosage;

// Specifies a value that SHALL be exactly the value  for this element in the
//  instance. For purposes of comparison, non-significant whitespace is ignored,
//  and all values must be an exact match (case and accent sensitive). Missing
//  elements/attributes must also be missing.
Meta fixedMeta;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

// Extensions for patternBase64Binary
Element _patternBase64Binary;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
bool patternBoolean; //  pattern: ^true|false$

// Extensions for patternBoolean
Element _patternBoolean;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternCanonical; //  pattern: ^\S*$

// Extensions for patternCanonical
Element _patternCanonical;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

// Extensions for patternCode
Element _patternCode;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for patternDate
Element _patternDate;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for patternDateTime
Element _patternDateTime;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
double patternDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for patternDecimal
Element _patternDecimal;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

// Extensions for patternId
Element _patternId;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

// Extensions for patternInstant
Element _patternInstant;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
int patternInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for patternInteger
Element _patternInteger;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternMarkdown; //  pattern: ^[ \r\n\t\S]+$

// Extensions for patternMarkdown
Element _patternMarkdown;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

// Extensions for patternOid
Element _patternOid;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
int patternPositiveInt; //  pattern: ^[1-9][0-9]*$

// Extensions for patternPositiveInt
Element _patternPositiveInt;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for patternString
Element _patternString;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

// Extensions for patternTime
Element _patternTime;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
int patternUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

// Extensions for patternUnsignedInt
Element _patternUnsignedInt;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternUri; //  pattern: ^\S*$

// Extensions for patternUri
Element _patternUri;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternUrl; //  pattern: ^\S*$

// Extensions for patternUrl
Element _patternUrl;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
String patternUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

// Extensions for patternUuid
Element _patternUuid;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Address patternAddress;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Age patternAge;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Annotation patternAnnotation;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Attachment patternAttachment;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
CodeableConcept patternCodeableConcept;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Coding patternCoding;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
ContactPoint patternContactPoint;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Count patternCount;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Distance patternDistance;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Duration patternDuration;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
HumanName patternHumanName;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Identifier patternIdentifier;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Money patternMoney;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Period patternPeriod;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Quantity patternQuantity;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Range patternRange;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Ratio patternRatio;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Reference patternReference;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
SampledData patternSampledData;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Signature patternSignature;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Timing patternTiming;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
ContactDetail patternContactDetail;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Contributor patternContributor;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
DataRequirement patternDataRequirement;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Expression patternExpression;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
ParameterDefinition patternParameterDefinition;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
RelatedArtifact patternRelatedArtifact;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
TriggerDefinition patternTriggerDefinition;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
UsageContext patternUsageContext;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Dosage patternDosage;

// Specifies a value that the value in the instance SHALL follow - that is, any
//  value in the pattern must be found in the instance. Other additional values may
//  be found too. This is effectively constraint by example.
// When pattern[x] is used to constrain a primitive, it means that the value
//  provided in the pattern[x] must match the instance value exactly.
// When pattern[x] is used to constrain an array, it means that each element
//  provided in the pattern[x] array must (recursively) match at least one
//  element from the instance array.
// When pattern[x] is used to constrain a complex object, it means that each property
//  in the pattern must be present in the complex object, and its value must
//  recursively match -- i.e.,
// 1. If primitive: it must match exactly the pattern value
// 2. If a complex object: it must match (recursively) the pattern value
// 3. If an array: it must match (recursively) the pattern value.
Meta patternMeta;

// A sample value for this element demonstrating the type of information that would
//  typically be found in the element.
List<ElementDefinition_Example> example;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String minValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for minValueDate
Element _minValueDate;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String minValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for minValueDateTime
Element _minValueDateTime;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String minValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

// Extensions for minValueInstant
Element _minValueInstant;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String minValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

// Extensions for minValueTime
Element _minValueTime;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
double minValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for minValueDecimal
Element _minValueDecimal;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
int minValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for minValueInteger
Element _minValueInteger;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
int minValuePositiveInt; //  pattern: ^[1-9][0-9]*$

// Extensions for minValuePositiveInt
Element _minValuePositiveInt;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
int minValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

// Extensions for minValueUnsignedInt
Element _minValueUnsignedInt;

// The minimum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
Quantity minValueQuantity;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String maxValueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for maxValueDate
Element _maxValueDate;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String maxValueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for maxValueDateTime
Element _maxValueDateTime;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String maxValueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

// Extensions for maxValueInstant
Element _maxValueInstant;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
String maxValueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

// Extensions for maxValueTime
Element _maxValueTime;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
double maxValueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for maxValueDecimal
Element _maxValueDecimal;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
int maxValueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for maxValueInteger
Element _maxValueInteger;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
int maxValuePositiveInt; //  pattern: ^[1-9][0-9]*$

// Extensions for maxValuePositiveInt
Element _maxValuePositiveInt;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
int maxValueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

// Extensions for maxValueUnsignedInt
Element _maxValueUnsignedInt;

// The maximum allowed value for the element. The value is inclusive. This is
//  allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
Quantity maxValueQuantity;

// Indicates the maximum length in characters that is permitted to be present in
//  conformant instances and which is expected to be supported by conformant
//  consumers that support the element.
int maxLength;

// Extensions for maxLength
Element _maxLength;

// A reference to an invariant that may make additional statements about the
//  cardinality or value in the instance.
List<String> condition;

// Extensions for condition
List<Element> _condition;

// Formal constraints such as co-occurrence and other constraints that can be
//  computationally evaluated within the context of the instance.
List<ElementDefinition_Constraint> constraint;

// If true, implementations that produce or consume resources SHALL provide
//  "support" for the element in some meaningful way.  If false, the element may be
//  ignored and not supported. If false, whether to populate or use the data
//  element in any way is at the discretion of the implementation.
bool mustSupport;

// Extensions for mustSupport
Element _mustSupport;

// If true, the value of this element affects the interpretation of the element or
//  resource that contains it, and the value of the element cannot be ignored.
//  Typically, this is used for status, negation and qualification codes. The
//  effect of this is that the element cannot be ignored by systems: they SHALL
//  either recognize the element and process it, and/or a pre-determination has
//  been made that it is not relevant to their particular system.
bool isModifier;

// Extensions for isModifier
Element _isModifier;

// Explains how that element affects the interpretation of the resource or element
//  that contains it.
String isModifierReason;

// Extensions for isModifierReason
Element _isModifierReason;

// Whether the element should be included if a client requests a search with the
//  parameter _summary=true.
bool isSummary;

// Extensions for isSummary
Element _isSummary;

// Binds to a value set if this element is coded (code, Coding, CodeableConcept,
//  Quantity), or the data types (string, uri).
ElementDefinition_Binding binding;

// Identifies a concept from an external specification that roughly corresponds to
//  this element.
List<ElementDefinition_Mapping> mapping;

ElementDefinition(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this._path,
    this.representation,
    this._representation,
    this.sliceName,
    this._sliceName,
    this.sliceIsConstraining,
    this._sliceIsConstraining,
    this.label,
    this._label,
    this.code,
    this.slicing,
    this.short,
    this._short,
    this.definition,
    this._definition,
    this.comment,
    this._comment,
    this.requirements,
    this._requirements,
    this.alias,
    this._alias,
    this.min,
    this._min,
    this.max,
    this._max,
    this.base,
    this.contentReference,
    this._contentReference,
    this.type,
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
    this.meaningWhenMissing,
    this._meaningWhenMissing,
    this.orderMeaning,
    this._orderMeaning,
    this.fixedBase64Binary,
    this._fixedBase64Binary,
    this.fixedBoolean,
    this._fixedBoolean,
    this.fixedCanonical,
    this._fixedCanonical,
    this.fixedCode,
    this._fixedCode,
    this.fixedDate,
    this._fixedDate,
    this.fixedDateTime,
    this._fixedDateTime,
    this.fixedDecimal,
    this._fixedDecimal,
    this.fixedId,
    this._fixedId,
    this.fixedInstant,
    this._fixedInstant,
    this.fixedInteger,
    this._fixedInteger,
    this.fixedMarkdown,
    this._fixedMarkdown,
    this.fixedOid,
    this._fixedOid,
    this.fixedPositiveInt,
    this._fixedPositiveInt,
    this.fixedString,
    this._fixedString,
    this.fixedTime,
    this._fixedTime,
    this.fixedUnsignedInt,
    this._fixedUnsignedInt,
    this.fixedUri,
    this._fixedUri,
    this.fixedUrl,
    this._fixedUrl,
    this.fixedUuid,
    this._fixedUuid,
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
    this._patternBase64Binary,
    this.patternBoolean,
    this._patternBoolean,
    this.patternCanonical,
    this._patternCanonical,
    this.patternCode,
    this._patternCode,
    this.patternDate,
    this._patternDate,
    this.patternDateTime,
    this._patternDateTime,
    this.patternDecimal,
    this._patternDecimal,
    this.patternId,
    this._patternId,
    this.patternInstant,
    this._patternInstant,
    this.patternInteger,
    this._patternInteger,
    this.patternMarkdown,
    this._patternMarkdown,
    this.patternOid,
    this._patternOid,
    this.patternPositiveInt,
    this._patternPositiveInt,
    this.patternString,
    this._patternString,
    this.patternTime,
    this._patternTime,
    this.patternUnsignedInt,
    this._patternUnsignedInt,
    this.patternUri,
    this._patternUri,
    this.patternUrl,
    this._patternUrl,
    this.patternUuid,
    this._patternUuid,
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
    this._minValueDate,
    this.minValueDateTime,
    this._minValueDateTime,
    this.minValueInstant,
    this._minValueInstant,
    this.minValueTime,
    this._minValueTime,
    this.minValueDecimal,
    this._minValueDecimal,
    this.minValueInteger,
    this._minValueInteger,
    this.minValuePositiveInt,
    this._minValuePositiveInt,
    this.minValueUnsignedInt,
    this._minValueUnsignedInt,
    this.minValueQuantity,
    this.maxValueDate,
    this._maxValueDate,
    this.maxValueDateTime,
    this._maxValueDateTime,
    this.maxValueInstant,
    this._maxValueInstant,
    this.maxValueTime,
    this._maxValueTime,
    this.maxValueDecimal,
    this._maxValueDecimal,
    this.maxValueInteger,
    this._maxValueInteger,
    this.maxValuePositiveInt,
    this._maxValuePositiveInt,
    this.maxValueUnsignedInt,
    this._maxValueUnsignedInt,
    this.maxValueQuantity,
    this.maxLength,
    this._maxLength,
    this.condition,
    this._condition,
    this.constraint,
    this.mustSupport,
    this._mustSupport,
    this.isModifier,
    this._isModifier,
    this.isModifierReason,
    this._isModifierReason,
    this.isSummary,
    this._isSummary,
    this.binding,
    this.mapping
    });

  factory ElementDefinition.fromJson(Map<String, dynamic> json) => _$ElementDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinitionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Slicing {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Designates which child elements are used to discriminate between the slices when
//  processing an instance. If one or more discriminators are provided, the value
//  of the child elements in the instance data SHALL completely distinguish which
//  slice the element in the resource matches based on the allowed values for those
//  elements in each of the slices.
List<ElementDefinition_Discriminator> discriminator;

// A human-readable text description of how the slicing works. If there is no
//  discriminator, this is required to be present to provide whatever information
//  is possible about how the slices can be differentiated.
String description;

// Extensions for description
Element _description;

// If the matching elements have to occur in the same order as defined in the
//  profile.
bool ordered;

// Extensions for ordered
Element _ordered;

// Whether additional slices are allowed or not. When the slices are ordered,
//  profile authors can also say that additional slices are only allowed at the end.
String rules; // <code> enum: closed/open/openAtEnd;

// Extensions for rules
Element _rules;

ElementDefinition_Slicing(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.discriminator,
    this.description,
    this._description,
    this.ordered,
    this._ordered,
    this.rules,
    this._rules
    });

  factory ElementDefinition_Slicing.fromJson(Map<String, dynamic> json) => _$ElementDefinition_SlicingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_SlicingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Discriminator {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// How the element value is interpreted when discrimination is evaluated.
String type; // <code> enum: value/exists/pattern/type/profile;

// Extensions for type
Element _type;

// A FHIRPath expression, using [the simple subset of
//  FHIRPath](fhirpath.html#simple), that is used to identify the element on which discrimination is based.
String path;

// Extensions for path
Element _path;

ElementDefinition_Discriminator(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this._type,
    this.path,
    this._path
    });

  factory ElementDefinition_Discriminator.fromJson(Map<String, dynamic> json) => _$ElementDefinition_DiscriminatorFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_DiscriminatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Base {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// The Path that identifies the base element - this matches the
//  ElementDefinition.path for that element. Across FHIR, there is only one base
//  definition of any element - that is, an element definition on a
//  [[[StructureDefinition]]] without a StructureDefinition.base.
String path;

// Extensions for path
Element _path;

// Minimum cardinality of the base element identified by the path.
int min;

// Extensions for min
Element _min;

// Maximum cardinality of the base element identified by the path.
String max;

// Extensions for max
Element _max;

ElementDefinition_Base(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this._path,
    this.min,
    this._min,
    this.max,
    this._max
    });

  factory ElementDefinition_Base.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BaseFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BaseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Type {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// URL of Data type or Resource that is a(or the) type used for this element.
//  References are URLs that are relative to
//  http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
//  http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only allowed in logical models.
String code;

// Extensions for code
Element _code;

// Identifies a profile structure or implementation Guide that applies to the
//  datatype this element refers to. If any profiles are specified, then the
//  content must conform to at least one of them. The URL can be a local reference
//  - to a contained StructureDefinition, or a reference to another
//  StructureDefinition or Implementation Guide by a canonical URL. When an
//  implementation guide is specified, the type SHALL conform to at least one
//  profile defined in the implementation guide.
List<String> profile;

// Used when the type is "Reference" or "canonical", and identifies a profile
//  structure or implementation Guide that applies to the target of the reference
//  this element refers to. If any profiles are specified, then the content must
//  conform to at least one of them. The URL can be a local reference - to a
//  contained StructureDefinition, or a reference to another StructureDefinition or
//  Implementation Guide by a canonical URL. When an implementation guide is
//  specified, the target resource SHALL conform to at least one profile defined in
//  the implementation guide.
List<String> targetProfile;

// If the type is a reference to another resource, how the resource is or can be
//  aggregated - is it a contained resource, or a reference, and if the context is
//  a bundle, is it included in the bundle.

// Extensions for aggregation
List<Element> _aggregation;

// Whether this reference needs to be version specific or version independent, or
//  whether either can be used.
String versioning; // <code> enum: either/independent/specific;

// Extensions for versioning
Element _versioning;

ElementDefinition_Type(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this._code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this._aggregation,
    this.versioning,
    this._versioning
    });

  factory ElementDefinition_Type.fromJson(Map<String, dynamic> json) => _$ElementDefinition_TypeFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Example {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Describes the purpose of this example amoung the set of examples.
String label;

// Extensions for label
Element _label;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueBase64Binary; //  pattern: ^(\s*([0-9a-zA-Z\+/=]){4}\s*)+$

// Extensions for valueBase64Binary
Element _valueBase64Binary;

// The actual value for the element, which must be one of the types allowed for
//  this element.
bool valueBoolean; //  pattern: ^true|false$

// Extensions for valueBoolean
Element _valueBoolean;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueCanonical; //  pattern: ^\S*$

// Extensions for valueCanonical
Element _valueCanonical;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueCode; //  pattern: ^[^\s]+(\s[^\s]+)*$

// Extensions for valueCode
Element _valueCode;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$

// Extensions for valueDate
Element _valueDate;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueDateTime; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?$

// Extensions for valueDateTime
Element _valueDateTime;

// The actual value for the element, which must be one of the types allowed for
//  this element.
double valueDecimal; //  pattern: ^-?(0|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)?$

// Extensions for valueDecimal
Element _valueDecimal;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueId; //  pattern: ^[A-Za-z0-9\-\.]{1,64}$

// Extensions for valueId
Element _valueId;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueInstant; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$

// Extensions for valueInstant
Element _valueInstant;

// The actual value for the element, which must be one of the types allowed for
//  this element.
int valueInteger; //  pattern: ^-?([0]|([1-9][0-9]*))$

// Extensions for valueInteger
Element _valueInteger;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueMarkdown; //  pattern: ^[ \r\n\t\S]+$

// Extensions for valueMarkdown
Element _valueMarkdown;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueOid; //  pattern: ^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$

// Extensions for valueOid
Element _valueOid;

// The actual value for the element, which must be one of the types allowed for
//  this element.
int valuePositiveInt; //  pattern: ^[1-9][0-9]*$

// Extensions for valuePositiveInt
Element _valuePositiveInt;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueString; //  pattern: ^[ \r\n\t\S]+$

// Extensions for valueString
Element _valueString;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueTime; //  pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?$

// Extensions for valueTime
Element _valueTime;

// The actual value for the element, which must be one of the types allowed for
//  this element.
int valueUnsignedInt; //  pattern: ^[0]|([1-9][0-9]*)$

// Extensions for valueUnsignedInt
Element _valueUnsignedInt;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueUri; //  pattern: ^\S*$

// Extensions for valueUri
Element _valueUri;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueUrl; //  pattern: ^\S*$

// Extensions for valueUrl
Element _valueUrl;

// The actual value for the element, which must be one of the types allowed for
//  this element.
String valueUuid; //  pattern: ^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$

// Extensions for valueUuid
Element _valueUuid;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Address valueAddress;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Age valueAge;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Annotation valueAnnotation;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Attachment valueAttachment;

// The actual value for the element, which must be one of the types allowed for
//  this element.
CodeableConcept valueCodeableConcept;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Coding valueCoding;

// The actual value for the element, which must be one of the types allowed for
//  this element.
ContactPoint valueContactPoint;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Count valueCount;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Distance valueDistance;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Duration valueDuration;

// The actual value for the element, which must be one of the types allowed for
//  this element.
HumanName valueHumanName;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Identifier valueIdentifier;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Money valueMoney;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Period valuePeriod;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Quantity valueQuantity;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Range valueRange;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Ratio valueRatio;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Reference valueReference;

// The actual value for the element, which must be one of the types allowed for
//  this element.
SampledData valueSampledData;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Signature valueSignature;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Timing valueTiming;

// The actual value for the element, which must be one of the types allowed for
//  this element.
ContactDetail valueContactDetail;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Contributor valueContributor;

// The actual value for the element, which must be one of the types allowed for
//  this element.
DataRequirement valueDataRequirement;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Expression valueExpression;

// The actual value for the element, which must be one of the types allowed for
//  this element.
ParameterDefinition valueParameterDefinition;

// The actual value for the element, which must be one of the types allowed for
//  this element.
RelatedArtifact valueRelatedArtifact;

// The actual value for the element, which must be one of the types allowed for
//  this element.
TriggerDefinition valueTriggerDefinition;

// The actual value for the element, which must be one of the types allowed for
//  this element.
UsageContext valueUsageContext;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Dosage valueDosage;

// The actual value for the element, which must be one of the types allowed for
//  this element.
Meta valueMeta;

ElementDefinition_Example(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.label,
    this._label,
    this.valueBase64Binary,
    this._valueBase64Binary,
    this.valueBoolean,
    this._valueBoolean,
    this.valueCanonical,
    this._valueCanonical,
    this.valueCode,
    this._valueCode,
    this.valueDate,
    this._valueDate,
    this.valueDateTime,
    this._valueDateTime,
    this.valueDecimal,
    this._valueDecimal,
    this.valueId,
    this._valueId,
    this.valueInstant,
    this._valueInstant,
    this.valueInteger,
    this._valueInteger,
    this.valueMarkdown,
    this._valueMarkdown,
    this.valueOid,
    this._valueOid,
    this.valuePositiveInt,
    this._valuePositiveInt,
    this.valueString,
    this._valueString,
    this.valueTime,
    this._valueTime,
    this.valueUnsignedInt,
    this._valueUnsignedInt,
    this.valueUri,
    this._valueUri,
    this.valueUrl,
    this._valueUrl,
    this.valueUuid,
    this._valueUuid,
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


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Allows identification of which elements have their cardinalities impacted by the
//  constraint.  Will not be referenced for constraints that do not affect
//  cardinality.
String key;

// Extensions for key
Element _key;

// Description of why this constraint is necessary or appropriate.
String requirements;

// Extensions for requirements
Element _requirements;

// Identifies the impact constraint violation has on the conformance of the
//  instance.
String severity; // <code> enum: error/warning;

// Extensions for severity
Element _severity;

// Text that can be used to describe the constraint in messages identifying that
//  the constraint has been violated.
String human;

// Extensions for human
Element _human;

// A [FHIRPath](fhirpath.html) expression of constraint that can be executed to see
//  if this constraint is met.
String expression;

// Extensions for expression
Element _expression;

// An XPath expression of constraint that can be executed to see if this constraint
//  is met.
String xpath;

// Extensions for xpath
Element _xpath;

// A reference to the original source of the constraint, for traceability purposes.
String source;

ElementDefinition_Constraint(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.key,
    this._key,
    this.requirements,
    this._requirements,
    this.severity,
    this._severity,
    this.human,
    this._human,
    this.expression,
    this._expression,
    this.xpath,
    this._xpath,
    this.source
    });

  factory ElementDefinition_Constraint.fromJson(Map<String, dynamic> json) => _$ElementDefinition_ConstraintFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_ConstraintToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Binding {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// Indicates the degree of conformance expectations associated with this binding -
//  that is, the degree to which the provided value set must be adhered to in the
//  instances.
String strength; // <code> enum: required/extensible/preferred/example;

// Extensions for strength
Element _strength;

// Describes the intended use of this particular set of codes.
String description;

// Extensions for description
Element _description;

// Refers to the value set that identifies the set of codes the binding refers to.
String valueSet;

ElementDefinition_Binding(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this._strength,
    this.description,
    this._description,
    this.valueSet
    });

  factory ElementDefinition_Binding.fromJson(Map<String, dynamic> json) => _$ElementDefinition_BindingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_BindingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElementDefinition_Mapping {


// Unique id for the element within a resource (for internal references). This may
//  be any string value that does not contain spaces.
String id;

// May be used to represent additional information that is not part of the basic
//  definition of the element. To make the use of extensions safe and manageable,
//  there is a strict set of governance  applied to the definition and use of
//  extensions. Though any implementer can define an extension, there is a set of
//  requirements that SHALL be met as part of the definition of the extension.
List<Extension> extension;

// May be used to represent additional information that is not part of the basic
//  definition of the element and that modifies the understanding of the element in
//  which it is contained and/or the understanding of the containing element's
//  descendants. Usually modifier elements provide negation or qualification. To
//  make the use of extensions safe and manageable, there is a strict set of
//  governance applied to the definition and use of extensions. Though any
//  implementer can define an extension, there is a set of requirements that SHALL
//  be met as part of the definition of the extension. Applications processing a
//  resource are required to check for modifier extensions.
// Modifier extensions
//  SHALL NOT change the meaning of any elements on Resource or DomainResource
//  (including cannot change the meaning of modifierExtension itself).
List<Extension> modifierExtension;

// An internal reference to the definition of a mapping.
String identity;

// Extensions for identity
Element _identity;

// Identifies the computable language in which mapping.map is expressed.
String language;

// Extensions for language
Element _language;

// Expresses what part of the target specification corresponds to this element.
String map;

// Extensions for map
Element _map;

// Comments that provide information about the mapping or its use.
String comment;

// Extensions for comment
Element _comment;

ElementDefinition_Mapping(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this._identity,
    this.language,
    this._language,
    this.map,
    this._map,
    this.comment,
    this._comment
    });

  factory ElementDefinition_Mapping.fromJson(Map<String, dynamic> json) => _$ElementDefinition_MappingFromJson(json);
  Map<String, dynamic> toJson() => _$ElementDefinition_MappingToJson(this);
}

