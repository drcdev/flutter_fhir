import 'package:flutter_fhir/class/meta.dart';
import 'package:json_annotation/json_annotation.dart';
part 'resource.g.dart';

@JsonSerializable(explicitToJson: true)
class Resource {
  String resourceType;
  String id;
  Meta meta;
  String implicitRules;
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