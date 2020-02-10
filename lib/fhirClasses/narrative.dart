import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';

part 'narrative.g.dart';

@JsonSerializable(explicitToJson: true)
class Narrative {

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

  //  The status of the narrative - whether it's entirely generated (from
  // just the defined data or the extensions too), or whether a human
  // authored it and it may contain additional data.
  String status; // <code> enum: generated/extensions/additional/empty;

  //  Extensions for status
  Element elementStatus;

  //  The actual narrative content, a stripped down version of XHTML.
  String div;

Narrative(
  this.div,
    {this.id,
    this.extension,
    this.status,
    this.elementStatus
    });

  factory Narrative.fromJson(Map<String, dynamic> json) => _$NarrativeFromJson(json);
  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}

