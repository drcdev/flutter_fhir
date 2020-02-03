import 'package:json_annotation/json_annotation.dart';

part 'resourceList.g.dart';

@JsonSerializable(explicitToJson: true)
class ResourceList {

    dynamic resource;

ResourceList(
    {this.resource});

factory ResourceList.fromJson(Map<String, dynamic> json) => _$ResourceListFromJson(json);
Map<String, dynamic> toJson() => _$ResourceListToJson(this);
}
