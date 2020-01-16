import 'package:json_annotation/json_annotation.dart';
part 'testing.g.dart';

@JsonSerializable(explicitToJson: true)


  factory testing.fromJson(Map<String, dynamic> json) => _$testingFromJson(json);
  Map<String, dynamic> toJson() => _$testingToJson(this);
}