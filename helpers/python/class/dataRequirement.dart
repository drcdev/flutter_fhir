
part 'dataRequirement.g.dart';

@JsonSerializable(explicitToJson: true)
class DataRequirement {

  // Unique id for the element within a resource (for internal references). This
  //  may be any string value that does not contain spaces.
  String id;

  // May be used to represent additional information that is not part of the
  //  basic definition of the element. To make the use of extensions safe and
  //  manageable, there is a strict set of governance  applied to the definition and
  //  use of extensions. Though any implementer can define an extension, there is a
  //  set of requirements that SHALL be met as part of the definition of the extension.
  List<Extension extension;

  // The type of the required data, specified as the type name of a resource.
  //  For profiles, this value is set to the type of the base resource of the profile.
  String type;

  // Extensions for type
  Element _type;

  // The profile of the required data, specified as the uri of the profile
  //  definition.
  List<String profile;

  // The intended subjects of the data requirement. If this element is not
  //  provided, a Patient subject is assumed.
  CodeableConcept subjectCodeableConcept;

  // The intended subjects of the data requirement. If this element is not
  //  provided, a Patient subject is assumed.
  Reference subjectReference;

  // Indicates that specific elements of the type are referenced by the
  //  knowledge module and must be supported by the consumer in order to obtain an
  //  effective evaluation. This does not mean that a value is required for this
  //  element, only that the consuming system must understand the element and be able
  //  to provide values for it if they are available. 

The value of mustSupport SHALL be a FHIRPath resolveable on the type of the DataRequirement. The path SHALL consist only of identifiers, constant indexers, and .resolve() (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
  List<String mustSupport;

  // Extensions for mustSupport
  List<Element _mustSupport;

  // Code filters specify additional constraints on the data, specifying the
  //  value set of interest for a particular element of the data. Each code filter
  //  defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
  List<DataRequirement_CodeFilter codeFilter;

  // Date filters specify additional constraints on the data in terms of the
  //  applicable date range for specific elements. Each date filter specifies an
  //  additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
  List<DataRequirement_DateFilter dateFilter;

  // Specifies a maximum number of results that are required (uses the _count
  //  search parameter).
  int limit;

  // Extensions for limit
  Element _limit;

  // Specifies the order of the results to be returned.
  List<DataRequirement_Sort sort
DataRequirement(
      {this.id,
this.extension,
this.type,
this._type,
this.profile,
this.subjectCodeableConcept,
this.subjectReference,
this.mustSupport,
this._mustSupport,
this.codeFilter,
this.dateFilter,
this.limit,
this._limit,
this.sort});

  factory DataRequirement.fromJson(Map<String, dynamic> json) => _$DataRequirementFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_CodeFilter {

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

  // The code-valued attribute of the filter. The specified path SHALL be a
  //  FHIRPath resolveable on the specified type of the DataRequirement, and SHALL
  //  consist only of identifiers, constant indexers, and .resolve(). The path is
  //  allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers
  //  ([x]) to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath
  //  Profile](fhirpath.html#simple) for full details). Note that the index must be
  //  an integer constant. The path must resolve to an element of type code, Coding,
  //  or CodeableConcept.
  String path;

  // Extensions for path
  Element _path;

  // A token parameter that refers to a search parameter defined on the
  //  specified type of the DataRequirement, and which searches on elements of type
  //  code, Coding, or CodeableConcept.
  String searchParam;

  // Extensions for searchParam
  Element _searchParam;

  // The valueset for the code filter. The valueSet and code elements are
  //  additive. If valueSet is specified, the filter will return only those data
  //  items for which the value of the code-valued element specified in the path is a
  //  member of the specified valueset.
  String valueSet;

  // The codes for the code filter. If values are given, the filter will return
  //  only those data items for which the code-valued attribute specified by the path
  //  has a value that is one of the specified codes. If codes are specified in
  //  addition to a value set, the filter returns items matching a code in the value
  //  set or one of the specified codes.
  List<Coding code
DataRequirement_CodeFilter(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.searchParam,
this._searchParam,
this.valueSet,
this.code});

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_CodeFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_CodeFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_DateFilter {

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

  // The date-valued attribute of the filter. The specified path SHALL be a
  //  FHIRPath resolveable on the specified type of the DataRequirement, and SHALL
  //  consist only of identifiers, constant indexers, and .resolve(). The path is
  //  allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers
  //  ([x]) to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath
  //  Profile](fhirpath.html#simple) for full details). Note that the index must be
  //  an integer constant. The path must resolve to an element of type date,
  //  dateTime, Period, Schedule, or Timing.
  String path;

  // Extensions for path
  Element _path;

  // A date parameter that refers to a search parameter defined on the specified
  //  type of the DataRequirement, and which searches on elements of type date,
  //  dateTime, Period, Schedule, or Timing.
  String searchParam;

  // Extensions for searchParam
  Element _searchParam;

  // The value of the filter. If period is specified, the filter will return
  //  only those data items that fall within the bounds determined by the Period,
  //  inclusive of the period boundaries. If dateTime is specified, the filter will
  //  return only those data items that are equal to the specified dateTime. If a
  //  Duration is specified, the filter will return only those data items that fall
  //  within Duration before now. string valueDateTime;

  // Extensions for valueDateTime
  Element _valueDateTime;

  // The value of the filter. If period is specified, the filter will return
  //  only those data items that fall within the bounds determined by the Period,
  //  inclusive of the period boundaries. If dateTime is specified, the filter will
  //  return only those data items that are equal to the specified dateTime. If a
  //  Duration is specified, the filter will return only those data items that fall
  //  within Duration before now.
  Period valuePeriod;

  // The value of the filter. If period is specified, the filter will return
  //  only those data items that fall within the bounds determined by the Period,
  //  inclusive of the period boundaries. If dateTime is specified, the filter will
  //  return only those data items that are equal to the specified dateTime. If a
  //  Duration is specified, the filter will return only those data items that fall
  //  within Duration before now.
  Duration valueDuration
DataRequirement_DateFilter(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.searchParam,
this._searchParam,
this.valueDateTime,
this._valueDateTime,
this.valuePeriod,
this.valueDuration});

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) => _$DataRequirement_DateFilterFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_DateFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataRequirement_Sort {

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

  // The attribute of the sort. The specified path must be resolvable from the
  //  type of the required data. The path is allowed to contain qualifiers (.) to
  //  traverse sub-elements, as well as indexers ([x]) to traverse
  //  multiple-cardinality sub-elements. Note that the index must be an integer constant.
  String path;

  // Extensions for path
  Element _path;

  // The direction of the sort, ascending or descending.Enum enum; //
  //  ascendingdescending direction;

  // Extensions for direction
  Element _direction
DataRequirement_Sort(
      {this.id,
this.extension,
this.modifierExtension,
this.path,
this._path,
this.direction,
this._direction});

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) => _$DataRequirement_SortFromJson(json);
  Map<String, dynamic> toJson() => _$DataRequirement_SortToJson(this);
}
