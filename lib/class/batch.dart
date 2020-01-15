import 'package:json_annotation/json_annotation.dart';
part 'batch.g.dart';

@JsonSerializable(explicitToJson: true)
class Batch {
  String lotNumber;
  DateTime expirationDate;

  Batch({this.lotNumber, this.expirationDate});

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
  Map<String, dynamic> toJson() => _$BatchToJson(this);
}