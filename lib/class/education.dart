import 'package:json_annotation/json_annotation.dart';
part 'education.g.dart';

@JsonSerializable(explicitToJson: true)
class Education {
  String documentType;
  String reference;
  DateTime publicationDate;
  DateTime presentationDate;

  Education(
      {this.documentType,
        this.reference,
        this.publicationDate,
        this.presentationDate});

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);
  Map<String, dynamic> toJson() => _$EducationToJson(this);
}