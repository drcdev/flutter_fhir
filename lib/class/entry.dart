import 'patient.dart';
import 'package:json_annotation/json_annotation.dart';
part 'entry.g.dart';

@JsonSerializable(explicitToJson: true)
class Entry {
  Patient resource;
  String fullUrl;

  Entry({this.resource, this.fullUrl});

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
  Map<String, dynamic> toJson() => _$EntryToJson(this);
}