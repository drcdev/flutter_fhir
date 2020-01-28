import 'package:json_annotation/json_annotation.dart';

part 'resourceList.g.dart';

@JsonSerializable(explicitToJson: true)
class ResourceList {

    String id;

    String resourceType;

    ResourceList({this.id, this.resourceType});

    factory ResourceList.fromJson(Map<String, dynamic> json) => _$ResourceListFromJson(json);
    Map<String, dynamic> toJson() => _$ResourceListToJson(this);
}