import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/element.dart';
import 'package:flutter_fhir/class/extension.dart';

part 'coding.g.dart';

@JsonSerializable(explicitToJson: true)
class Coding {

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

  //  The identification of the code system that defines the meaning of the
  // symbol in the code.
  String system;

  //  Extensions for system
  Element elementSystem;

  //  The version of the code system which was used when choosing this code.
  // Note that a well-maintained code system does not need the version
  // reported, because the meaning of codes is consistent across versions.
  // However this cannot consistently be assured, and when the meaning is
  // not guaranteed to be consistent, the version SHOULD be exchanged.
  String version;

  //  Extensions for version
  Element elementVersion;

  //  A symbol in syntax defined by the system. The symbol may be a
  // predefined code or an expression in a syntax defined by the coding
  // system (e.g. post-coordination).
  String code;

  //  Extensions for code
  Element elementCode;

  //  A representation of the meaning of the code in the system, following
  // the rules of the system.
  String display;

  //  Extensions for display
  Element elementDisplay;

  //  Indicates that this coding was chosen by a user directly - e.g. off a
  // pick list of available items (codes or displays).
  bool userSelected;

  //  Extensions for userSelected
  Element elementUserSelected;

Coding(
  {this.id,
    this.extension,
    this.system,
    this.elementSystem,
    this.version,
    this.elementVersion,
    this.code,
    this.elementCode,
    this.display,
    this.elementDisplay,
    this.userSelected,
    this.elementUserSelected
    });

  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);
  Map<String, dynamic> toJson() => _$CodingToJson(this);
}

