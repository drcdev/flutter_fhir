
part 'group.g.dart';

@JsonSerializable(explicitToJson: true)
class Group {
  
  // This is a Group 
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

  // A unique business identifier for this group.
  List<Identifier identifier;

  // Indicates whether the record for the group is available for use or is
  //  merely being retained for historical purposes.
  bool active;

  // Extensions for active
  Element _active;

  // Identifies the broad classification of the kind of resources the group
  //  includes.Enum enum; // personanimalpractitionerdevicemedicationsubstance type;

  // Extensions for type
  Element _type;

  // If true, indicates that the resource refers to a specific group of real
  //  individuals.  If false, the group defines a set of intended individuals.
  bool actual;

  // Extensions for actual
  Element _actual;

  // Provides a specific type of resource the group includes; e.g. "cow",
  //  "syringe", etc.
  CodeableConcept code;

  // A label assigned to the group for human identification and communication.
  String name;

  // Extensions for name
  Element _name;

  // A count of the number of resource instances that are part of the group.
  int quantity;

  // Extensions for quantity
  Element _quantity;

  // Entity responsible for defining and maintaining Group characteristics
  //  and/or registered members.
  Reference managingEntity;

  // Identifies traits whose presence r absence is shared by members of the
  //  group.
  List<Group_Characteristic characteristic;

  // Identifies the resource instances that are members of the group.
  List<Group_Member member
Group(
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
this.active,
this._active,
this.type,
this._type,
this.actual,
this._actual,
this.code,
this.name,
this._name,
this.quantity,
this._quantity,
this.managingEntity,
this.characteristic,
this.member});

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Characteristic {

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

  // A code that identifies the kind of trait being asserted.
  CodeableConcept code;

  // The value of the trait that holds (or does not hold - see 'exclude') for
  //  members of the group.
  CodeableConcept valueCodeableConcept;

  // The value of the trait that holds (or does not hold - see 'exclude') for
  //  members of the group. boolean valueBoolean;

  // Extensions for valueBoolean
  Element _valueBoolean;

  // The value of the trait that holds (or does not hold - see 'exclude') for
  //  members of the group.
  Quantity valueQuantity;

  // The value of the trait that holds (or does not hold - see 'exclude') for
  //  members of the group.
  Range valueRange;

  // The value of the trait that holds (or does not hold - see 'exclude') for
  //  members of the group.
  Reference valueReference;

  // If true, indicates the characteristic is one that is NOT held by members of
  //  the group.
  bool exclude;

  // Extensions for exclude
  Element _exclude;

  // The period over which the characteristic is tested; e.g. the patient had an
  //  operation during the month of June.
  Period period
Group_Characteristic(
      {this.id,
this.extension,
this.modifierExtension,
this.code,
this.valueCodeableConcept,
this.valueBoolean,
this._valueBoolean,
this.valueQuantity,
this.valueRange,
this.valueReference,
this.exclude,
this._exclude,
this.period});

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) => _$Group_CharacteristicFromJson(json);
  Map<String, dynamic> toJson() => _$Group_CharacteristicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Group_Member {

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

  // A reference to the entity that is a member of the group. Must be consistent
  //  with Group.type. If the entity is another group, then the type must be the
  //  same.
  Reference entity;

  // The period that the member was in the group, if known.
  Period period;

  // A flag to indicate that the member is no longer in the group, but
  //  previously may have been a member.
  bool inactive;

  // Extensions for inactive
  Element _inactive
Group_Member(
      {this.id,
this.extension,
this.modifierExtension,
this.entity,
this.period,
this.inactive,
this._inactive});

  factory Group_Member.fromJson(Map<String, dynamic> json) => _$Group_MemberFromJson(json);
  Map<String, dynamic> toJson() => _$Group_MemberToJson(this);
}
