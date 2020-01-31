import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/annotation.dart';
import 'package:flutter_fhir/class/reference.dart';
import 'package:flutter_fhir/class/codeableConcept.dart';
import 'package:flutter_fhir/class/identifier.dart';
import 'package:flutter_fhir/class/extension.dart';
import 'package:flutter_fhir/class/resourceList.dart';
import 'package:flutter_fhir/class/narrative.dart';
import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/meta.dart';

part 'lists.g.dart';

@JsonSerializable(explicitToJson: true)
class Lists {

  //  This is a List resource
  final String resourceType= 'List';

  //  The logical id of the resource, as used in the URL for the resource.
  // Once assigned, this value never changes.
  String id;

  //  The metadata about the resource. This is content that is maintained by
  // the infrastructure. Changes to the content might not always be
  // associated with version changes to the resource.
  Meta meta;

  //  A reference to a set of rules that were followed when the resource was
  // constructed, and which must be understood when processing the content.
  // Often, this is a reference to an implementation guide that defines the
  // special rules along with other profiles etc.
  String implicitRules;

  //  Extensions for implicitRules
  Element element_implicitRules;

  //  The base language in which the resource is written.
  String language;

  //  Extensions for language
  Element element_language;

  //  A human-readable narrative that contains a summary of the resource and
  // can be used to represent the content of the resource to a human. The
  // narrative need not encode all the structured data, but is required to
  // contain sufficient detail to make it "clinically safe" for a human to
  // just read the narrative. Resource definitions may define what content
  // should be represented in the narrative to ensure clinical safety.
  Narrative text;

  //  These resources do not have an independent existence apart from the
  // resource that contains them - they cannot be identified independently,
  // and nor can they have their own independent transaction scope.
  List<ResourceList> contained;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource. To make the use of extensions
  // safe and manageable, there is a strict set of governance  applied to
  // the definition and use of extensions. Though any implementer can define
  // an extension, there is a set of requirements that SHALL be met as part
  // of the definition of the extension.
  List<Extension> extension;

  //  May be used to represent additional information that is not part of
  // the basic definition of the resource and that modifies the
  // understanding of the element that contains it and/or the understanding
  // of the containing element's descendants. Usually modifier elements
  // provide negation or qualification. To make the use of extensions safe
  // and manageable, there is a strict set of governance applied to the
  // definition and use of extensions. Though any implementer is allowed to
  // define an extension, there is a set of requirements that SHALL be met
  // as part of the definition of the extension. Applications processing a
  // resource are required to check for modifier extensions. Modifier
  // extensions SHALL NOT change the meaning of any elements on Resource or
  // DomainResource (including cannot change the meaning of
  // modifierExtension itself).
  List<Extension> modifierExtension;

  //  Identifier for the List assigned for business purposes outside the
  // context of FHIR.
  List<Identifier> identifier;

  //  Indicates the current state of this list.
  String status; // <code> enum: current/retired/entered-in-error;

  //  Extensions for status
  Element element_status;

  //  How this list was prepared - whether it is a working list that is
  // suitable for being maintained on an ongoing basis, or if it represents
  // a snapshot of a list of items from another source, or whether it is a
  // prepared list where items may be marked as added, modified or deleted.
  String mode; // <code> enum: working/snapshot/changes;

  //  Extensions for mode
  Element element_mode;

  //  A label for the list assigned by the author.
  String title;

  //  Extensions for title
  Element element_title;

  //  This code defines the purpose of the list - why it was created.
  CodeableConcept code;

  //  The common subject (or patient) of the resources that are in the list
  // if there is one.
  Reference subject;

  //  The encounter that is the context in which this list was created.
  Reference encounter;

  //  The date that the list was prepared.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  The entity responsible for deciding what the contents of the list
  // were. Where the list was created by a human, this is the same as the
  // author of the list.
  Reference source;

  //  What order applies to the items in the list.
  CodeableConcept orderedBy;

  //  Comments that apply to the overall list.
  List<Annotation> note;

  //  Entries in this list.
  List<List_Entry> entry;

  //  If the list is empty, why the list is empty.
  CodeableConcept emptyReason;

Lists(
  {this.id,
    this.meta,
    this.implicitRules,
    this.element_implicitRules,
    this.language,
    this.element_language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.element_status,
    this.mode,
    this.element_mode,
    this.title,
    this.element_title,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.element_date,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason
    });

  factory Lists.fromJson(Map<String, dynamic> json) => _$ListsFromJson(json);
  Map<String, dynamic> toJson() => _$ListsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class List_Entry {

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

  //  The flag allows the system constructing the list to indicate the role
  // and significance of the item in the list.
  CodeableConcept flag;

  //  True if this item is marked as deleted in the list.
  bool deleted;

  //  Extensions for deleted
  Element element_deleted;

  //  When this item was added to the list.
  DateTime date;

  //  Extensions for date
  Element element_date;

  //  A reference to the actual resource from which data was derived.
  Reference item;

List_Entry(
  this.item,
    {this.id,
    this.extension,
    this.modifierExtension,
    this.flag,
    this.deleted,
    this.element_deleted,
    this.date,
    this.element_date
    });

  factory List_Entry.fromJson(Map<String, dynamic> json) => _$List_EntryFromJson(json);
  Map<String, dynamic> toJson() => _$List_EntryToJson(this);
}

