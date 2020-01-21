import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/meta.dart';

part 'resource.g.dart';

@JsonSerializable(explicitToJson: true)
class Resource {
  String resourceType;

  // Logical id of this artifact
  String id;

  // Metadata about the resource
  Meta meta;

  // A set of rules under which this content was created
  String implicitRules;

  // Language of the resource content
  String language;

  Resource(
      {this.resourceType,
        this.id,
        this.meta,
        this.implicitRules,
        this.language});

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}